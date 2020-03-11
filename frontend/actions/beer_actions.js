import * as APIUtil from '../util/beer_util';

export const RECEIVE_ALL_BEERS = 'RECEIVE_ALL_BEERS';
export const RECEIVE_SINGLE_BEER = 'RECEIVE_SINGLE_BEER';
export const DELETE_BEER = 'DELETE_BEER';
export const RECEIVE_BEER_ERRORS = 'RECEIVE_BEER_ERRORS'

const receiveBeer = beer => ({
    type: RECEIVE_SINGLE_BEER,
    beer
});

const receiveAllBeers = beers => ({
    type: RECEIVE_ALL_BEERS,
    beers
});

const removeBeer = beerId => ({
    type: DELETE_BEER,
    beerId
});

const receiveErrors = errors => ({
    type: RECEIVE_BEER_ERRORS,
    errors
});

export const fetchBeer = beer => dispatch => {
    return APIUtil.fetchBeer(beer)
        .then(
            beer => (dispatch(receiveBeer(beer))),
            err => (dispatch(receiveErrors(err.responseJSON)))
            )
};

export const fetchBeers = () => dispatch => {
    return APIUtil.fetchBeers()
        .then(
            beers => (dispatch(receiveAllBeers(beers))),
            err => (dispatch(receiveErrors(err.responseJSON)))
            )
};

export const createBeer = beer => dispatch => {
    return APIUtil.createBeer(beer)
        .then(
            beer => (dispatch(receiveBeer(beer))),
            err => (dispatch(receiveErrors(err.responseJSON)))
            )
};

export const updateBeer = beer => {
    return APIUtil.updateBeer(beer)
        .then(
            beer => (dispatch(receiveBeer(beer))),
            err => (dispatch(receiveErrors(err.responseJSON)))
            )
};

export const deleteBeer = beerId => {
    return APIUtil.deleteBeer(beerId)
        .then(
            () => (dispatch(removeBeer(beerId))),
            err => (dispatch(receiveErrors(err.responseJSON)))
            )
};