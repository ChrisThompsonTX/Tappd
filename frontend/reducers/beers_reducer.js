import { RECEIVE_SINGLE_BREWERY } from '../actions/brewery_actions'
import { RECEIVE_SINGLE_BEER, RECEIVE_ALL_BEERS, DELETE_BEER } from '../actions/beer_actions'

const beersReducer = (state = {}, action) => {
    Object.freeze(state);
    let nextState = Object.assign({}, state)

    switch (action.type) {
        case RECEIVE_SINGLE_BEER:
            return action.beer;
        case RECEIVE_ALL_BEERS:
            return action.beers
        case DELETE_BEER:
            delete nextState[beerId]
            return nextState
        case RECEIVE_SINGLE_BREWERY:
            return action.brewery.beers
        default:
            return state;
    }
}

export default beersReducer;