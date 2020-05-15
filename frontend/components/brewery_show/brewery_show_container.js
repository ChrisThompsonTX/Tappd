import { connect } from 'react-redux';
import BreweryShow from './brewery_show';
import { fetchBrewery, fetchBreweries } from '../../actions/brewery_actions'
import { createBeer } from '../../actions/beer_actions'

const mSTP = ({ entities }, ownProps) => ({
    brewery: entities.breweries[ownProps.match.params.breweryId],
    breweries: entities.breweries
});

const mDTP = dispatch => ({
    fetchBrewery: (breweryId) => dispatch(fetchBrewery(breweryId)),
    createBeer: (beer) => dispatch(createBeer(beer)),
    fetchBreweries: () => dispatch(fetchBreweries())
})

export default connect(mSTP, mDTP)(BreweryShow);