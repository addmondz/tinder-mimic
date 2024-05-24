import React, { useState } from 'react';
import { useSwipeable } from 'react-swipeable';

interface Profile {
    id: number;
    name: string;
    gender: string;
    location: string;
    university: string;
    user_interests: string;
    photo: string;
}

interface SwipeCardProps {
    profile: Profile;
    onSwipeLeft: (id: number) => void;
    onSwipeRight: (id: number) => void;
}

const SwipeCard: React.FC<SwipeCardProps> = ({ profile, onSwipeLeft, onSwipeRight }) => {
    const [swipeDirection, setSwipeDirection] = useState<'left' | 'right' | null>(null);

    const handleSwipe = (direction: string) => {
        setSwipeDirection(direction === 'left' ? 'left' : 'right');
        setTimeout(() => {
            setSwipeDirection(null);
            direction === 'left' ? onSwipeLeft(profile.id) : onSwipeRight(profile.id);
        }, 500);
    };

    const handlers = useSwipeable({
        onSwipedLeft: () => handleSwipe('left'),
        onSwipedRight: () => handleSwipe('right'),
    });

    return (
        <div {...handlers} className={`swipe-card prevent-select ${swipeDirection ? `swipe-${swipeDirection}` : ''}`}>
            <img src={profile.photo} alt={profile.name} className="profile-photo" />
            <h3>{profile.name}</h3>
            <p>Gender: {profile.gender}</p>
            <p>Location: {profile.location}</p>
            <p>University: {profile.university}</p>
            <p className="p-b-0">Interests: </p>
            <p className="p-t-0">{profile.user_interests}</p>
            <div className="swipe-actions">
                <button onClick={() => handleSwipe('left')}>✖</button>
                <button onClick={() => handleSwipe('right')}>✓</button>
            </div>
        </div>
    );
};

export default SwipeCard;
