import React from "react";
import GreetingContainer from "./greeting/greeting_container";
import { Route } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import SplashContainer from './splash/splash_page_container'
import BreweryIndexContainer from './brewery_index/brewery_index_container'
// import Modal from './modal/modal';

const App = () => (
    <div>
        <header>
            <GreetingContainer />
        </header>
        <Route exact path="/" component={SplashContainer} />
        {/* <AuthRoute path="/home" component={HomeContainer} /> */}
        <Route path="/home" component={BreweryIndexContainer}/>
        {/* <Route path="/:breweryId" component={BreweryShowContainer} /> */}
    </div>
);

export default App;