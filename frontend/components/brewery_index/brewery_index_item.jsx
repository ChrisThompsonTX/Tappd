import React from 'react';
import { Link } from 'react-router-dom';

class BreweryIndexItem extends React.Component {

    render(){
        return (
            <div className="brewery-list-item">
                    <img className="brewery-logo" src={`${this.props.brewery.logo}`}/>
                <div className="brewery-list-item-left">
                    <Link className="brewery-name" to={`/${this.props.brewery.id}`} >{this.props.brewery.name}</Link>
                    <h3 className="brewery-location">{this.props.brewery.city}, {this.props.brewery.state}  {this.props.brewery.country}</h3>
                </div>
                <div className="brewery-list-item-right">
                    <div className="side-by-side">
                        <h4>{this.props.brewery.beerIds.length} Beers</h4>
                        <h4>{this.props.brewery.reviewIds.length} Reviews</h4>
                    </div>
                    <div>
                        <h4>{this.props.brewery.rating}</h4>
                    </div>
                </div>
            </div>
        )
    }

};

export default BreweryIndexItem;