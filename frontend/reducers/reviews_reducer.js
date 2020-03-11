import { RECEIVE_SINGLE_BREWERY } from '../actions/brewery_actions'
import { RECEIVE_SINGLE_BEER } from '../actions/beer_actions'
import { RECEIVE_SINGLE_REVIEW, RECEIVE_ALL_REVIEWS, DELETE_REVIEW } from '../actions/review_actions'

const reviewsReducer = (state = {}, action) => {
    Object.freeze(state);
    let nextState = Object.assign({}, state)

    switch (action.type) {
        case RECEIVE_SINGLE_REVIEW:
            return action.review;
        case RECEIVE_ALL_REVIEWS:
            return action.reviews;
        case DELETE_REVIEW:
            delete nextState[reviewId]
            return nextState;
        case RECEIVE_SINGLE_BEER:
            return action.reviews;
        case RECEIVE_SINGLE_BREWERY:
            return action.reviews;
        default:
            return state;
    }
}

export default reviewsReducer;