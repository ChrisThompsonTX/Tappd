import React from 'react';
import { Link } from 'react-router-dom';
import './beer_show.css';
import Review from './review'
import Rating from '../brewery_index/rating'

class BeerShow extends React.Component {

  componentDidMount() {
    this.props.fetchBeer(this.props.match.params.beerId)
  }

  render() {
    console.log(this.props)
    if (!this.props.beer || !this.props.beer.id) {
      return null
    } else {
      return(
        <div className="beer-show-container">
          <div className="beer-show">
            <header>
              <div className="beer-container">
                <div className="beer-container-top">
                  <img className="beer-show-label" src={this.props.beer.label} />
                  <div className="beer-show-info">
                    <h1 className="beer-name">{this.props.beer.name}</h1>
                    <h2 className="brewery-name" >{this.props.beer.brewery_id}</h2>
                    <h3>{this.props.beer.style}</h3>
                    <h4>{this.props.beer.description}</h4>
                  </div>
                </div>
                <div className="beer-container-bottom">
                  <h4>{this.props.beer.abv} % ABV</h4>
                  <h4>{this.props.beer.ibu} IBU</h4>
                  <h4><div className="rating-container" ><Rating rating={this.props.beer.rating} /></div></h4>
                  <h4>{this.props.beer.reviews.length} Reviews</h4>
                </div>
              </div>
            </header>
            <section className="beer-show-review-container">
              {this.props.beer.reviews.map((review,idx)=> {
                return <Review review={review} beer={this.props.beer} key={idx} />
              })}
            </section>
          </div>
        </div>
      )
    }
  }
};

export default BeerShow;