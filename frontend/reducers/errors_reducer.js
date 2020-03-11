import { combineReducers } from 'redux';
import sessionErrorsReducer from './session_errors_reducer';
import beerErrorsReducer from './beer_errors_reducer';
import breweryErrorsReducer from './brewery_errors_reducer';
import reviewErrorsReducer from './review_errors_reducer';

const errorsReducer = combineReducers({
    session: sessionErrorsReducer,
    beer: beerErrorsReducer,
    brewery: breweryErrorsReducer,
    review: reviewErrorsReducer
});

export default errorsReducer;