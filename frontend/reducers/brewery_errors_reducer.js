import {
    RECEIVE_BREWERY_ERRORS,
    RECEIVE_ALL_BREWERIES,
    RECEIVE_SINGLE_BREWERY,
    DELETE_BREWERY
} from '../actions/brewery_actions';

const breweryErrorsReducer = (state = [], action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_BREWERY_ERRORS:
            return action.errors;
        case RECEIVE_ALL_BREWERIES:
            return [];
        case RECEIVE_SINGLE_BREWERY:
            return [];
        case DELETE_BREWERY:
            return [];
        default:
            return state;
    }
};

export default breweryErrorsReducer;
