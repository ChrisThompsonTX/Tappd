import React from 'react';

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
                <button className="signin header-button" onClick={() => state.openModal('login')}>SIGN IN</button>
                <button className="header header-button" onClick={() => state.openModal('signup')}>CREATE AN ACCOUNT</button>
            </nav>
        )   
    }
    
};

export default Greeting;