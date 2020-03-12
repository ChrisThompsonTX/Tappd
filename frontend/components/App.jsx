import React from "react";
import GreetingContainer from "./greeting/greeting_container";
import { Route } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import SplashContainer from './splash/splash_page_container'
import BreweryIndexContainer from './brewery_index/brewery_index_container'
import BreweryShowContainer from './brewery_show/brewery_show_container'
// import Modal from './modal/modal';

const App = () => (
    <div>
        <header>
            <GreetingContainer />
        </header>
        <AuthRoute exact path="/" component={SplashContainer} />
        {/* <AuthRoute path="/home" component={HomeContainer} /> */}
        <ProtectedRoute path="/home" component={BreweryIndexContainer}/>
        <ProtectedRoute path="/brewery/:breweryId" component={BreweryShowContainer} />
    </div>
);

export default App;