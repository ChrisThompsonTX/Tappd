import {
    RECEIVE_BEER_ERRORS,
    RECEIVE_ALL_BEERS,
    RECEIVE_SINGLE_BEER,
    DELETE_BEER
} from '../actions/beer_actions';

const beerErrorsReducer = (state = [], action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_BEER_ERRORS:
            debugger
            return action.errors;
        case RECEIVE_ALL_BEERS:
            return [];
        case RECEIVE_SINGLE_BEER:
            return [];
        case DELETE_BEER:
            return [];
        default:
            return state;
    }
};

export default beerErrorsReducer;
