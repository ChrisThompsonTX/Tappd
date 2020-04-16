import React from "react";
import GreetingContainer from "./greeting/greeting_container";
import { Route } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import SplashContainer from './splash/splash_page_container'
import BreweryIndexContainer from './brewery_index/brewery_index_container'
import BreweryShowContainer from './brewery_show/brewery_show_container'
import BeerShowContainer from './beer/beer_show_container'
import ThePubContainer from './the_pub/the_pub_container'

const App = () => (
    <div>
        <header>
            <GreetingContainer />
        </header>
        <AuthRoute exact path="/" component={SplashContainer} />
        <ProtectedRoute path="/home" component={BreweryIndexContainer}/>
        <ProtectedRoute path="/thepub" component={ThePubContainer}/>
        <ProtectedRoute path="/brewery/:breweryId" component={BreweryShowContainer} />
        <ProtectedRoute path="/beer/:beerId" component={BeerShowContainer} />
    </div>
);

export default App;