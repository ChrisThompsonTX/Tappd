import { RECEIVE_ALL_BREWERIES, RECEIVE_SINGLE_BREWERY, DELETE_BREWERY } from '../actions/brewery_actions'

const breweriesReducer = (state = {}, action) => {
    Object.freeze(state);
    let nextState = Object.assign({}, state)

    switch (action.type) {
        case RECEIVE_SINGLE_BREWERY:
            let breweries = action.brewery.breweries
            breweries[action.brewery.id] = action.brewery
            return breweries;
        case DELETE_BREWERY:
            delete nextState[action.breweryId]
            return nextState;
        case RECEIVE_ALL_BREWERIES:
            return action.breweries;
        default:
            return state;
    }
}

export default breweriesReducer;