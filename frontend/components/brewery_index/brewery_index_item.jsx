import React from 'react';
import { Link } from 'react-router-dom';

class BreweryIndexItem extends React.Component {

    render(){
        return (
            <div className="brewery-list-item">
                <div className="brewery-list-item-left">
                    <Link className="brewery-name" to={`/${this.props.brewery.id}`} >{this.props.brewery.name}</Link>
                    <h3 className="brewery-location">{this.props.brewery.city}, {this.props.brewery.state}  {this.props.brewery.country}</h3>
                </div>
                <div className="brewery-list-item-right">
                    <div className="side-by-side">
                        <h4># beers</h4>
                        <h4># ratings</h4>
                    </div>
                    <div>
                        <h4>rating goes here</h4>
                    </div>
                </div>
            </div>
        )
    }

};

export default BreweryIndexItem;