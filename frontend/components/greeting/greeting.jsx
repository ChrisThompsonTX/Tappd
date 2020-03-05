import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = (state) => {

    if (state.currentUser) {
        return (
            <div className="header-group">
                <h2 className="header-name">{state.currentUser.username}</h2>
                <button className="header-button" onClick={state.logout}>Log Out</button>
            </div>
        )
    } else {
        return (
            <nav className="login-signup">
                <Link className="signin header-button" to="/login">SIGN IN</Link>
                <Link className="header header-button" to="/signup">CREATE AN ACCOUNT</Link>
            </nav>
        )   
    }
    
};

export default Greeting;