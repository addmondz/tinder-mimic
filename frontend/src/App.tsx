import React, { useEffect, useState } from 'react';
import axios from 'axios';
import SwipeCard from './components/SwipeCard';
import './App.css';

interface Profile {
    id: number;
    name: string;
    gender: string;
    location: string;
    university: string;
    user_interests: string;
    photo: string;
}

const App: React.FC = () => {
    const [profiles, setProfiles] = useState<Profile[]>([]);
    const [currentIndex, setCurrentIndex] = useState(0);
    const [tempBackgroundColor, setTempBackgroundColor] = useState<string>('');
    const [permanentBackgroundColor, setPermanentBackgroundColor] = useState<string>('');

    useEffect(() => {
        axios.get<Profile[]>('http://localhost:3000/api/recommendations/1')
            .then(response => {
                setProfiles(response.data);
            })
            .catch(error => {
                console.error('Error fetching profiles:', error);
            });

    }, []);

    const handleSwipeLeft = (id: number) => {
        setCurrentIndex(prevIndex => prevIndex + 1);
        setTempBackgroundColor('#dc3545');
        setTimeout(() => {
            setPermanentBackgroundColor('');
            setTempBackgroundColor('');
        }, 250);
    };
    
    const handleSwipeRight = (id: number) => {
        setCurrentIndex(prevIndex => prevIndex + 1);
        setTempBackgroundColor('#28a745');
        setTimeout(() => {
            setPermanentBackgroundColor('');
            setTempBackgroundColor('');
        }, 250);
    };
    
    return (
        <div className="app change-bg-color-css" style={{ backgroundColor: tempBackgroundColor || permanentBackgroundColor }}>
            {profiles.length > 0 && currentIndex < profiles.length ? (
                <SwipeCard
                    profile={profiles[currentIndex]}
                    onSwipeLeft={handleSwipeLeft}
                    onSwipeRight={handleSwipeRight}
                />
            ) : (
                <p>Please come back tomorrow and get to get new swipes</p>
            )}
        </div>
    );
};

export default App;
