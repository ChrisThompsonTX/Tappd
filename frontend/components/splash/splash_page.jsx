import React from 'react';

class SplashPage extends React.Component{


    render(){
        return(
            <div class="masthead">
                <div class="masthead-header">
                    <div class="masthead-buttons">
                        <a href="/login" class="header-bubble-button">Sign in</a>
                        <a href="/signup" class="header-bubble-button">Create An Account</a>
                    </div>
                </div>
                <div class="masthead-body">
                    <div class="masthead-left"></div>
                    <div class="masthead-right"></div>
                </div>
            </div>
        )
    }
}

export default SplashPage;