import {
    RECEIVE_REVIEW_ERRORS,
    RECEIVE_ALL_REVIEWS,
    RECEIVE_SINGLE_REVIEW,
    DELETE_REVIEW
} from '../actions/review_actions';

const reviewErrorsReducer = (state = [], action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_REVIEW_ERRORS:
            return action.errors;
        case RECEIVE_ALL_REVIEWS:
            return [];
        case RECEIVE_SINGLE_REVIEW:
            return [];
        case DELETE_REVIEW:
            return [];
        default:
            return state;
    }
};

export default reviewErrorsReducer;
