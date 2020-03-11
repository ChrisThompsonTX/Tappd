import React from 'react';

const Greeting = (state) => {

    if (state.currentUser.id) {
        return (
            <header className="session-header">
                <div className="left-header">
                    <img className="header-logo" src="https://untappd.akamaized.net/assets/v3/images/untappd-logo-2@2x.png" />
                    <button>The Pub</button>
                    <button>Top Rated</button>
                    <button>Supporter</button>
                    <button>Help</button>
                </div>
                <div className="right-header">
                    <div className="dropdown" >
                        <img className="header-user" src="https://gravatar.com/avatar/2c05a94811025ae7058a3c5ed7dc10ed?size=100&d=https%3A%2F%2Funtappd.akamaized.net%2Fsite%2Fassets%2Fimages%2Fdefault_avatar_v3_gravatar.jpg%3Fv%3D2" />
                        <div className="dropdown-content">
                            <div>check me out</div>
                        </div>
                    </div>
                    <button className="header-button" id="header-logout" onClick={state.logout}>Log out</button>
                </div>
            </header>
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