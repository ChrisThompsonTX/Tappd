import React from 'react';
import { Link } from 'react-router-dom';
import Review from '../beer/review'
import './the_pub.css'
import { trackPromise } from 'react-promise-tracker'

class ThePub extends React.Component {

  constructor(props) {
    super(props)

    this.state = {
      loaded: false,
      display: 10
    }

    this.handleClick = this.handleClick.bind(this);
    this.shuffle = this.shuffle.bind(this);
  }
  handleClick(e){
    e.preventDefault();
    let displayAdd = this.state.display + 10
    this.setState({display: displayAdd})
  }

  shuffle(a){
    for (let i = a.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [a[i], a[j]] = [a[j], a[i]];
    }
    return a;
  }

  componentDidMount(){
    trackPromise(
      this.props.fetchReviews()
        .then((reviews)=>{
          this.setState({
            loaded: true,
            reviews
          })
        })
    )
  }


  render() {
    if (!this.props.reviews && this.state.loaded) {
      return null
    } else {
      return (
        <div>
          <div className="brewery-index-container">
            <section className="brewery-index">
              <div className="title-box">
                <h4 className="title" >Recent Global Activity</h4>
              </div>
              <div className="reviews">
                {this.shuffle(Object.keys(this.props.reviews)).slice(0,this.state.display).map((reviewId => (
                  <Review key={reviewId} user={this.props.reviews[reviewId].user} review={this.props.reviews[reviewId]} beer={this.props.reviews[reviewId].beer} />
                )))}
                <div className="more-container" onClick={this.handleClick}>
                  <h2 className="more-reviews-button" >Show More</h2>
                </div>
              </div>
            </section>
          </div>
        </div>
      )  
    }
  }
}

export default ThePub;