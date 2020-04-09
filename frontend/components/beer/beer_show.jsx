import React from 'react';
import { Link } from 'react-router-dom';
import './beer_show.css';
import Review from './review'
import Rating from '../brewery_index/rating'

class BeerShow extends React.Component {

  componentDidMount() {
    this.props.fetchBeer(this.props.match.params.beerId)
    this.props.fetchBreweries()
    this.props.fetchUsers()
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
            </header>
            <section className="beer-show-review-container">
              {this.props.beer.reviews.map((review)=> {
                <Review review={review} users={this.props.users} breweries={this.props.breweries} />
              })}
            </section>
          </div>
        </div>
      )
    }
  }
};

export default BeerShow;