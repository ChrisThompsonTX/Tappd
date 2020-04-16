import { connect } from 'react-redux';
import ThePub from './the_pub';
import { fetchReviews } from '../../actions/review_actions'

const mSTP = ({ entities }) => ({
    reviews: entities.reviews
})

const mDTP = dispatch => ({
    fetchReviews: () => dispatch(fetchReviews())
})

export default connect(mSTP, mDTP)(ThePub);