import React from "react";
import GreetingContainer from "./greeting/greeting_container";
import LogInFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import { Route } from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import SplashContainer from './splash/splash_page_container'
// import Modal from './modal/modal';

const App = () => (
    <div>
        {/* <Modal /> */}
        <header>
            <GreetingContainer />
        </header>
        <Route exact path="/" component={SplashContainer} />
        <AuthRoute path="/login" component={LogInFormContainer} />
        <AuthRoute path="/signup" component={SignupFormContainer} />
    </div>
);

export default App;