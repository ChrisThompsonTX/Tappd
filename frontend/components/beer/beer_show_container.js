import { connect } from 'react-redux';
import BeerShow from './beer_show'
import { fetchBeer } from '../../actions/beer_actions'

const mSTP = ({entities}) => ({
    beer: entities.beers
})

const mDTP = dispatch => ({
    fetchBeer: (beerId) => dispatch(fetchBeer(beerId))
})

export default connect(mSTP,mDTP)(BeerShow);