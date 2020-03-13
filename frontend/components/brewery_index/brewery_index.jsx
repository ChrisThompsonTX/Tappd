import React from 'react';
import { Link } from 'react-router-dom';
import BreweryIndexItem from './brewery_index_item';

class BreweryIndex extends React.Component {

    componentDidMount(){
        this.props.fetchBreweries()
    }

    render(){
        if (!this.props.breweries) {
            return null
        } else {

            return(
                <div className="brewery-index-container">
                    <section className="brewery-index">
                        <h4 className="title" >Top Breweries</h4>
                        <div className="breweries">
                            {this.props.breweries.map((brewery=>(
                            <BreweryIndexItem key={brewery.id} brewery={brewery} fetchBrewery={this.props.fetchBrewery} /> 
                            )))}
                        </div>
                    </section>
                    <footer>

                    </footer>
                </div>

            )

        }
    }
}

export default BreweryIndex;