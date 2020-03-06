import React from 'react';

class SplashPage extends React.Component{


    render(){
        return(
            <div>
                <video
                    autoPlay
                    loop
                    muted
                    src="https://static.videezy.com/system/resources/previews/000/032/954/original/beer32.mp4"
                    // src="https://media.istockphoto.com/videos/beer-bubbles-extreme-close-up-video-id847411068"
                    type="video/mp4"
                    id="beer-video"
                />

                <div className="modal-background"></div>


                <div className="left-splash">
                    <div className="logo"><img src="https://untappd.akamaized.net/assets/custom/homepage/images/ut-logo-bottles.svg" /></div>
                    <div className="short-rule"></div>
                    <h2>Discover and share your favorite beer.</h2>
                </div>

                <div className="right-splash"></div>
            </div>
        )
    }
}

export default SplashPage;