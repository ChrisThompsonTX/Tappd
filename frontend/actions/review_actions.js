import * as APIUtil from '../util/review_util';

export const RECEIVE_ALL_REVIEWS = 'RECEIVE_ALL_REVIEWS';
export const RECEIVE_SINGLE_REVIEW = 'RECEIVE_SINGLE_REVIEW';
export const DELETE_REVIEW = 'DELETE_REVIEW';
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';

const receiveReview = review => ({
    type: RECEIVE_SINGLE_REVIEW,
    review
});

const receiveAllReviews = reviews => ({
    type: RECEIVE_ALL_REVIEWS,
    reviews
});

const removeReview = reviewId => ({
    type: DELETE_REVIEW,
    reviewId
});

export const receiveErrors = errors => ({
    type: RECEIVE_REVIEW_ERRORS,
    errors
});

export const fetchReview = review => dispatch => {
    return APIUtil.fetchReview(review)
        .then(
            review => (dispatch(receiveReview(review))),
            err => (dispatch(receiveErrors(err.responseJSON)))
        )
};

export const fetchReviews = () => dispatch => {
    return APIUtil.fetchReviews()
        .then(
            reviews => (dispatch(receiveAllReviews(reviews))),
            err => (dispatch(receiveErrors(err.responseJSON)))
        )
};

export const createReview = review => dispatch => {
    return APIUtil.createReview(review)
        .then(
            review => (dispatch(receiveReview(review))),
            err => (dispatch(receiveErrors(err.responseJSON)))
        )
};

export const updateReview = review => {
    return APIUtil.updateReview(review)
        .then(
            review => (dispatch(receiveReview(review))),
            err => (dispatch(receiveErrors(err.responseJSON)))
        )
};

export const deleteReview = reviewId => {
    return APIUtil.deleteReview(reviewId)
        .then(
            () => (dispatch(removeReview(reviewId))),
            err => (dispatch(receiveErrors(err.responseJSON)))
        )
};