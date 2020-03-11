import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import beersReducer from './beers_reducer';
import breweriesReducer from './breweries_reducer';
import reviewsReducer from './reviews_reducer';

const entitiesReducer =  combineReducers({
    users: usersReducer,
    beers: beersReducer,
    breweries: breweriesReducer,
    reviews: reviewsReducer
});

export default entitiesReducer;