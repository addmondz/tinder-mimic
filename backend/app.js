const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
const port = 3000;

app.use(cors({ origin: 'http://localhost:3001' }));

const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'password',
    database: 'tinder-mimic'
});

function generateRecommendationQuery(userId) {
    const universityWeight = 0.5;
    const interestsWeight = 0.3;
    const randomnessWeight = 0.2;

    const query = `
        SELECT users.*, GROUP_CONCAT(interests.interest_name SEPARATOR ', ') AS user_interests
        FROM users
        LEFT JOIN user_interests ON users.id = user_interests.user_id
        LEFT JOIN interests ON user_interests.interest_id = interests.id
        WHERE users.id != ${userId}
        GROUP BY users.id
        ORDER BY 
            CASE 
                WHEN university = (SELECT university FROM users WHERE id = ${userId}) THEN ${universityWeight} 
                ELSE 0 
            END DESC,
            CASE 
                WHEN EXISTS (
                    SELECT 1 
                    FROM user_interests 
                    WHERE user_id = ${userId} 
                    AND interest_id IN (SELECT interest_id FROM user_interests WHERE user_id = users.id)
                ) THEN ${interestsWeight} 
                ELSE 0 
            END DESC,
            RAND() * ${randomnessWeight} DESC
        LIMIT 10;
    `;

    return query;
}

app.get('/api/recommendations/:userId', (req, res) => {
    const userId = req.params.userId;
    const recommendationsQuery = generateRecommendationQuery(userId);

    connection.query(recommendationsQuery, userId, (error, results) => {
        if (error) {
            console.error('Error fetching recommendations:', error);
            res.status(500).json({ error: 'An error occurred while fetching recommendations' });
        } else {
            res.json(results);
        }
    });
});

app.get('/api/check', (req, res) => {
    res.json({ message: 'Node.js and Express.js are working!' });
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
