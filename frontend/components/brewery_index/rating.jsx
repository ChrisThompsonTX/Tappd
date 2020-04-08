import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faStar as faStarSolid, faStarHalfAlt } from '@fortawesome/free-solid-svg-icons';
import { faStar as faStarEmpty } from '@fortawesome/free-regular-svg-icons';

const StarDiv = () => (
    <FontAwesomeIcon icon={faStarSolid} size="1x" color="#fc0"/>
);

const HalfStarDiv = () => (
    <FontAwesomeIcon icon={faStarHalfAlt} size="1x" color="#fc0"/>
);

const WhiteStarDiv = () => (
    <FontAwesomeIcon icon={faStarEmpty} size="1x" color="#fc0"/>
);


const Rating = (props) => {
    const starDiv = [];
    const starInt = parseInt(props.rating);
    const starFloat = parseFloat(props.rating);

    if (starInt === starFloat) {
        for (var i = 0; i < starInt; i++) {
            starDiv.push(<StarDiv key={i} />);
        }
        for (var i = 4; i >= starInt; i--) {
            starDiv.push(<WhiteStarDiv key={i} />);
        }
    } else {
        for (var i = 0; i < starInt; i++) {
            starDiv.push(<StarDiv key={i} />);
        }

        starDiv.push(<HalfStarDiv key={starInt} />);

        for (var i = 4; i >= starFloat; i--) {
            starDiv.push(<WhiteStarDiv key={i} />);
        }
    }
    return (
        <div className="rating">
            {starDiv}
            <h2>({props.rating}/5)</h2>
        </div>
    )
}


export default Rating;
