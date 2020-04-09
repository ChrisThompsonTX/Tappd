import * as APIUtil from '../util/user_util';

export const RECEIVE_ALL_USERS = 'RECEIVE_ALL_USERS';
export const RECEIVE_SINGLE_USER = 'RECEIVE_SINGLE_USER';

const receiveUser = user => ({
    type: RECEIVE_SINGLE_USER,
    user
});

const receiveAllUsers = users => ({
    type: RECEIVE_ALL_USERS,
    users
});

const receiveErrors = errors => ({
    type: RECEIVE_USER_ERRORS,
    errors
});

export const fetchUser = user => dispatch => {
    return APIUtil.fetchUser(user)
        .then(
            user => (dispatch(receiveUser(user))),
            // err => (dispatch(receiveErrors(err.responseJSON)))
        )
};

export const fetchUsers = () => dispatch => {
    return APIUtil.fetchUsers()
        .then(
            users => (dispatch(receiveAllUsers(users))),
            // err => (dispatch(receiveErrors(err.responseJSON)))
        )
};

