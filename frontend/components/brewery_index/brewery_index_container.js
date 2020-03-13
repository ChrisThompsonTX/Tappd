import { connect } from 'react-redux';
import BreweryIndex from './brewery_index';
import { fetchBreweries, fetchBrewery } from '../../actions/brewery_actions'
import { logout } from '../../actions/session_actions';

const mSTP = ({ entities }) => {
    return {
        breweries: Object.values(entities.breweries)
    };
};

const mDTP = dispatch => {
    return {
        fetchBreweries: () => dispatch(fetchBreweries()),
        logout: () => dispatch(logout()),
        fetchBrewery: (breweryId) => dispatch(fetchBrewery(breweryId))
    }
}

export default connect(mSTP, mDTP)(BreweryIndex);