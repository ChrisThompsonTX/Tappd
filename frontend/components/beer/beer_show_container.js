import { connect } from 'react-redux';
import BeerShow from './beer_show'
import { fetchBeer } from '../../actions/beer_actions'

const mSTP = ({entities, session}) => ({
    beer: entities.beers,
    user_id: session.id
})

const mDTP = dispatch => ({
    fetchBeer: (beerId) => dispatch(fetchBeer(beerId)),
    createReview: (review) => dispatch(createReview(review))
})

export default connect(mSTP,mDTP)(BeerShow);