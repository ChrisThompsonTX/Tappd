import React from 'react';
import { Link } from 'react-router-dom';
import BreweryShowItem from './brewery_show_item';

class BreweryShow extends React.Component {

    componentDidMount() {
        // debugger
        this.props.fetchBrewery(this.props.match.params.breweryId)
    }

    // componentWillUnmount(){
    //     console.log('unmounting')
    //     debugger
    // }

    render() {
        // console.log('potatoes')
        // debugger
        if (!this.props.brewery || !this.props.brewery.beers)  {
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
                                            <h4>{this.props.brewery.rating}</h4>
                                        </div>
                                    </div>
                                </div>
                                <div className="brewery-description">
                                    <h4>{this.props.brewery.description}</h4>
                                </div>
                            </div>





                        </header>

                        <div className="beers-list">
                            {Object.values(this.props.brewery.beers).map((beer)=>(
                                <BreweryShowItem key={beer.id} beer={beer} />
                            ))}
                        </div>

                    </section>
                    <footer>

                    </footer>
                </div>
            )
        }
    }
}

export default BreweryShow;