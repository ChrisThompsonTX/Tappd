import React from 'react';
import { Link } from 'react-router-dom';
import BreweryShowItem from './brewery_show_item';

class BreweryShow extends React.Component {

    componentDidMount() {
        // debugger
        this.props.fetchBrewery(this.props.match.params.breweryId)
    }

    render() {
        // debugger
        if (!this.props.brewery.beers)  {
            return null
        } else {
            return (
                <div className="brewery-show-container">
                    <section className="brewery-show">
                        <header>
                            <h2>{this.props.brewery.name}</h2>
                        </header>
                        <div>
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