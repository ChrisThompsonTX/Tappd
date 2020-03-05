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

                {/* <div className="blackout"></div> */}
                <div className="modal-background"></div>
            </div>
        )
    }
}

export default SplashPage;