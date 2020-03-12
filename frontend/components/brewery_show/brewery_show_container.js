import { connect } from 'react-redux';
import BreweryShow from './brewery_show';
import { fetchBrewery } from '../../actions/brewery_actions'

const mSTP = ({ entities }, ownProps) => {
    // debugger
    return {
        brewery: entities.breweries[ownProps.match.params.breweryId]
    };
};

const mDTP = dispatch => {
    return {
        fetchBrewery: (breweryId) => dispatch(fetchBrewery(breweryId))
    }
}

export default connect(mSTP, mDTP)(BreweryShow);