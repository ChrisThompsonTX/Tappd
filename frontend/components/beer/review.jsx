import React from 'react';
import './review.css';
import Rating from '../brewery_index/rating'
import { Link } from 'react-router-dom';

class Review extends React.Component {

  constructor(props) {
    super(props)

    this.formatDate = this.formatDate.bind(this)
  }
  
  formatDate(date) {
    let formatDate = date.split('-')
    let year = formatDate[0].slice(2,4)
    let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    let month = months[formatDate[1].slice(0,1)]
    let day = formatDate[2].slice(0,2)

    return <div>{day} {month} {year}</div>
  }

  render() {

    return (
      <div>
          <div className="review-container">
            <div className="profile-photo-container">
              <img className="profile-photo" src={`${this.props.review.user.profilePhoto}`} />
            </div>
            <div className="review-info">
              <div className="review-title">
                  {this.props.review.user.username}
                  <span> is drinking a </span>
                  <Link className="beer-show-brewery" to={`/beer/${this.props.beer.id}`}>{this.props.beer.name}</Link>
                  <span> by </span>
                  <Link className="beer-show-brewery" to={`/brewery/${this.props.beer.brewery.id}`}>{this.props.beer.brewery.name}</Link>
              </div>
              <div className="quote-square"></div>
              <div className="review-body">
                <h2>
                  {this.props.review.body}
                </h2>
                <Rating rating={this.props.review.rating} />
              </div>
              <div>
                {this.props.review.photo ?
                <img src={this.props.review.photo}/>
                :
                  null
                }
              </div>
              <div className="created-at">
                {this.formatDate(this.props.review.createdAt)}
              </div>
            </div>
            <div className="review-logo-container">
              <img className="review-logo" src={`${this.props.beer.label}`} />
            </div>
          </div>
          <div className="review-border"></div>
      </div>
    )
  }
}

export default Review;