import React from 'react';
import { Link } from 'react-router-dom';
import BreweryShowItem from './brewery_show_item';
import Rating from '../brewery_index/rating';
import BeerModal from './beer_modal'

class BreweryShow extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      openModal: false,
      more: false
    }

    this.handleModal = this.handleModal.bind(this);
    this.handleMore = this.handleMore.bind(this);
  }

  componentDidMount() {
    this.props.fetchBrewery(this.props.match.params.breweryId)
    // this.props.fetchBreweries()
  }

  handleModal(e) {
    e.preventDefault();
    if (this.state.openModal === false) {
      this.setState({
        openModal: true
      })
    } else {
      this.setState({
        openModal: false
      })
    }
  };

  handleMore(e) {
    e.preventDefault();
    if (this.state.more) {
      this.setState({ more: false })
    } else {
      this.setState({ more: true })
    }
  }

  render() {
    if (!this.props.brewery){
      //  || !this.props.brewery.beers)  {
      return null
    } else {
      return (
        <div className="brewery-show-container">
            <section className="brewery-show">
              <header className="brewery-header-container">
                <div className="brewery-header-inner">
                  <div className="brewery-list-item">
                    <img className="brewery-logo-show" src={`${this.props.brewery.logo}`} />
                    <div className="brewery-list-item-left">
                    <h2 className="brewery-name" >{this.props.brewery.name}</h2>
                    <h3 className="brewery-location">{this.props.brewery.city}, {this.props.brewery.state}  {this.props.brewery.country}</h3>
                  </div>
                  <div className="brewery-list-item-right">
                    <div className="side-by-side">
                      <h4>{this.props.brewery.beerIds.length} Beers</h4>
                      <h4>{this.props.brewery.reviewIds.length} Reviews</h4>
                    </div>
                    <div>
                      <div className="rating-container" ><Rating rating={this.props.brewery.rating} /></div>
                    </div>
                  </div>
                </div>
                {/* <div className="brewery-description">
                  <h4>{this.props.brewery.description}</h4>
                </div> */}
                <h4 className="beer-description">{this.props.brewery.description.length > 150 && !this.state.more ?
                  this.props.brewery.description.slice(0, 150) + "..."
                  :
                  this.props.brewery.description
                }
                  {this.props.brewery.description.length > 150 ?
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
            <div className="beers-list">
              {!this.props.brewery.beers? 
                null :
                  Object.values(this.props.brewery.beers).map((beer)=>(
                  <BreweryShowItem key={beer.id} beer={beer} />
                ))
              }
            </div>
            <div className="modal-container">
              <button className="modal-button" onClick={this.handleModal}>ADD A BEER +</button>
            </div>
          </section>
          <footer>

          </footer>
          {this.state.openModal === true ? 
            <BeerModal 
              handleModal={this.handleModal} 
              createBeer={this.props.createBeer}
              breweries={this.props.breweries}
              /> : null}
        </div>
      )
    }
  }
}

export default BreweryShow;