import React from 'react';
import { Link } from 'react-router-dom';
import Review from '../beer/review'
import './the_pub.css'

class ThePub extends React.Component {

  constructor(props) {
    super(props)

    this.state = {
      loaded: false
    }

    this.sortReviews = this.sortReviews.bind(this);
  }

  componentDidMount(){
    this.props.fetchReviews();
    this.setState({loaded: true})
  }

  sortReviews(){

  }

  render() {
    if (!this.props.reviews && this.state.loaded) {
      return null
    } else {
      console.log(this.props)
      return (
        <div>
          <div className="brewery-index-container">
            <section className="brewery-index">
              <div className="title-box">
                <h4 className="title" >Recent Global Activity</h4>
              </div>
              <div className="reviews">
                {Object.keys(this.props.reviews).map((reviewId => (
                  <Review key={reviewId} review={this.props.reviews[reviewId]} beer={this.props.reviews[reviewId].reviews} />
                )))}
              </div>
            </section>
          </div>
        </div>
      )  
    }
  }
}

export default ThePub;