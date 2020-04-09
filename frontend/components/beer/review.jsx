import React from 'react';

class Review extends React.Component {

  render() {
    const review = this.props.reviews


    return (
      <div className="review-container">
        <div>
          {this.props.reviewId}
        </div>
      </div>
    )
  }
}

export default Review;