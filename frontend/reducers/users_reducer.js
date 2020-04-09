import {RECEIVE_CURRENT_USER} from '../actions/session_actions'
import { RECEIVE_ALL_USERS, RECEIVE_SINGLE_USER } from '../actions/user_actions'


const usersReducer = (state = {}, action) =>{
    Object.freeze(state);
    let nextState = Object.assign({}, state)

    switch (action.type) {
        case RECEIVE_CURRENT_USER:
            Object.assign({}, state, { [action.currentUser.id]: action.currentUser })
        case RECEIVE_SINGLE_USER:
            return { [action.user.id]: action.user }
        case RECEIVE_ALL_USERS:
            return action.users;
        default:
            return state; 
    }
}

export default usersReducer;