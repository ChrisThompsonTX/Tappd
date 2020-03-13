import React from 'react';
import { Link } from 'react-router-dom';

class BreweryShowItem extends React.Component {
    render(){
        return(
            <div className="beer-container">
                <div className="beer-container-top">
                    <img className="beer-label" src={this.props.beer.label}/>
                    <div className="beer-info">
                        <Link className="beer-name" to='/'>{this.props.beer.name}</Link>
                        <h3>{this.props.beer.style}</h3>
                        <h4>{this.props.beer.description}</h4>
                    </div>
                </div>
                <div className="beer-container-bottom">
                    <h4>{this.props.beer.abv} % ABV</h4>
                    <h4>{this.props.beer.ibu} IBU</h4>
                    <h4>{this.props.beer.rating}</h4>
                    <h4>{this.props.beer.reviewIds.length}</h4>
                </div>
            </div>
        )
    }
}

export default BreweryShowItem;