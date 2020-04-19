import { createStore, applyMiddleware } from "redux";
import logger from "redux-logger";
import thunk from "redux-thunk";
import appReducer from "../reducers/app_reducer";

const configureStore = (preloadedState = {}) => {
    return createStore(appReducer, preloadedState, applyMiddleware(thunk, logger));
}

export default configureStore;