import React from 'react';
import { Link } from 'react-router-dom';
import './beer_show.css';
import Review from './review'
import Rating from '../brewery_index/rating'

class BeerShow extends React.Component {

  constructor(props) {
    super(props)

    this.state = {
      description: this.props.beer.description,
      more: false
    }

    this.handleMore = this.handleMore.bind(this);
  }

  handleMore(e){
    e.preventDefault();
    if (this.state.more) {
      this.setState({more: false})
    } else {
      this.setState({more: true})
    }
  }

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
                    <Link className="beer-show-brewery" to={`/brewery/${this.props.beer.brewery.id}`}> {this.props.beer.brewery.name}</Link>
                    <h2 className="brewery-name" >{this.props.beer.brewery_id}</h2>
                    <h3>{this.props.beer.style}</h3>
                  </div>
                </div>
                <div className="beer-container-bottom">
                  <h4>{this.props.beer.abv} % ABV</h4>
                  <h4>{this.props.beer.ibu} IBU</h4>
                  <h4><div className="rating-container" ><Rating rating={this.props.beer.rating} /></div></h4>
                  <h4>{this.props.beer.reviews.length} Reviews</h4>
                </div>
                <h4 className="beer-description">{this.props.beer.description.length > 150 && !this.state.more ?
                  this.props.beer.description.slice(0,150) + "..."
                  :
                  this.props.beer.description
                  }
                  {this.props.beer.description.length > 150 ?
                    <a className="more-button" onClick={this.handleMore}>
                      {this.state.more ?
                      <span>Show less</span>
                      :
                      <span>Show more</span>
                      }
                    </a>
                  :  
                   null
                  }
                </h4>
                <div className="review-border"></div>
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