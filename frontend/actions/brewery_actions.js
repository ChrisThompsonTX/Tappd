import * as APIUtil from '../util/brewery_util';

export const RECEIVE_ALL_BREWERIES = 'RECEIVE_ALL_BREWERIES';
export const RECEIVE_SINGLE_BREWERY = 'RECEIVE_SINGLE_BREWERY';
export const DELETE_BREWERY = 'DELETE_BREWERY';
export const RECEIVE_BREWERY_ERRORS = 'RECEIVE_BREWERY_ERRORS'

const receiveBrewery = brewery => ({
    type: RECEIVE_SINGLE_BREWERY,
    brewery
});

const receiveAllBreweries = breweries => ({
    type: RECEIVE_ALL_BREWERIES,
    breweries
});

const removeBrewery = breweryId => ({
    type: DELETE_BREWERY,
    breweryId
});

const receiveErrors = errors => ({
    type: RECEIVE_BREWERY_ERRORS,
    errors
});

export const fetchBrewery = brewery => dispatch => {
    return APIUtil.fetchBrewery(brewery)
        .then(
            brewery => (dispatch(receiveBrewery(brewery))),
            // err => (dispatch(receiveErrors(err.responseJSON)))
        )
};

export const fetchBreweries = () => dispatch => {
    return APIUtil.fetchBreweries()
        .then(
            breweries => (dispatch(receiveAllBreweries(breweries))),
            // err => (dispatch(receiveErrors(err.responseJSON)))
        )
};

export const createBrewery = brewery => dispatch => {
    return APIUtil.createBrewery(brewery)
        .then(
            brewery => {
                return dispatch(receiveBrewery(brewery))},
            err => (dispatch(receiveErrors(err.responseJSON)))
        )
};

export const updateBrewery = brewery => {
    return APIUtil.updateBrewery(brewery)
        .then(
            brewery => (dispatch(receiveBrewery(brewery))),
            err => (dispatch(receiveErrors(err.responseJSON)))
        )
};

export const deleteBrewery = breweryId => {
    return APIUtil.deleteBrewery(breweryId)
        .then(
            () => (dispatch(removeBrewery(breweryId))),
            err => (dispatch(receiveErrors(err.responseJSON)))
        )
};