import { connect } from 'react-redux';
import BreweryIndex from './brewery_index';
import { fetchBreweries, fetchBrewery, createBrewery } from '../../actions/brewery_actions'
import { logout } from '../../actions/session_actions';

const mSTP = ({ entities }) => ({
        breweries: Object.values(entities.breweries)
});

const mDTP = dispatch => ({
        fetchBreweries: () => dispatch(fetchBreweries()),
        logout: () => dispatch(logout()),
        fetchBrewery: (breweryId) => dispatch(fetchBrewery(breweryId)),
        createBrewery: (brewery) => dispatch(createBrewery(brewery))
});

export default connect(mSTP, mDTP)(BreweryIndex);