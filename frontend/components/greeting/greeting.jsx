import React from 'react';
import { Link } from 'react-router-dom';

class Greeting extends React.Component {

    constructor(props) {
        super(props)
    }


    render(){

        if (this.props.currentUser.id) {
            return (
                <header className="session-header">
                    <div className="left-header">
                        <img className="header-logo" src="https://untappd.akamaized.net/assets/v3/images/untappd-logo-2@2x.png" />
                        <Link onClick={this.props.clearUpData} className="left-header-link" to="/thePub">The Pub</Link>
                        <Link className="left-header-link"to="/home">Top Rated</Link>
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
                        <button className="header-button" id="header-logout" onClick={this.props.logout}>Log out</button>
                    </div>
                </header>
            )
        } else {
            return (
                <nav className="login-signup">
                    <button className="signin header-button" onClick={() => this.props.openModal('login')}>SIGN IN</button>
                    <button className="header header-button" onClick={() => this.props.openModal('signup')}>CREATE AN ACCOUNT</button>
                </nav>
            )   
        }
    }
    
};

export default Greeting;