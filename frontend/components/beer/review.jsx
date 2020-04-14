import React from 'react';

class Review extends React.Component {

  render() {

    return (
      <div className="review-container">
        <div>
          {this.props.review.body}
          {this.props.review.user.profile_photo}
        </div>
      </div>
    )
  }
}

export default Review;