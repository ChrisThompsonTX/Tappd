import React from 'react';
import { Link } from 'react-router-dom';
import Rating from '../brewery_index/rating'

class BreweryShowItem extends React.Component {
    render(){
        return(
            <div className="beer-container">
                <div className="beer-container-top">
                    <img className="beer-label" src={this.props.beer.label}/>
                    <div className="beer-info">
                        <Link className="beer-name" to={`/beer/${this.props.beer.id}`}>{this.props.beer.name}</Link>
                        <h3>{this.props.beer.style}</h3>
                        <h4>{this.props.beer.description}</h4>
                    </div>
                </div>
                <div className="beer-container-bottom">
                    <h4>{this.props.beer.abv} % ABV</h4>
                    <h4>{this.props.beer.ibu} IBU</h4>
                    <h4><div className="rating-container" ><Rating rating={this.props.beer.rating} /></div></h4>
                    {/* <h4>{this.props.beer.reviewIds.length} Reviews</h4> */}
                </div>
            </div>
        )
    }
}

export default BreweryShowItem;