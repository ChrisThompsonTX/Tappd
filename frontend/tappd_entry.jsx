import React from "react";
import ReactDOM from "react-dom";
import {login, signup, logout} from './util/session_api_util'

document.addEventListener("DOMContentLoaded", () => {
    
    window.login = login;
    window.singup = signup;
    window.logout = logout;


    const root = document.getElementById("root");
    ReactDOM.render(<h1>Welcome to Tappd</h1>, root);
});