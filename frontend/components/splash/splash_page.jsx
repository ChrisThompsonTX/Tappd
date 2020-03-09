import React from 'react';
import Modal from '../modal/modal'

class SplashPage extends React.Component{


    render(){
        return(
            <div className="splash">
                <video
                    autoPlay
                    loop
                    muted
                    src="https://static.videezy.com/system/resources/previews/000/032/954/original/beer32.mp4"
                    // src="https://media.istockphoto.com/videos/beer-bubbles-extreme-close-up-video-id847411068"
                    type="video/mp4"
                    id="beer-video"
                />

                {/* <div className="modal-screen"></div> */}


                <section className="left-splash">
                    <div className={this.props.session ? `logo-session`:`logo`}><img src="https://untappd.akamaized.net/assets/custom/homepage/images/ut-logo-bottles.svg" /></div>
                    <div className="short-rule"></div>
                    {this.props.session ? 
                        <Modal />
                        : 
                        <h2>Discover and share your favorite beer.</h2>
                    }
                </section>

                <section className="features">
                    <div className="left-features">
                        <img className="screenshot" src="https://untappd.akamaized.net/assets/custom/homepage/images/ratings.png" />
                        <h4>CHECK IN AND RATE BEER</h4>
                        <p>Keep track of what you’ve tried and what you thought of it by checking in a beer and rating it.</p>
                    </div>

                    <div className="right-features">
                        <img className="screenshot" src="https://untappd.akamaized.net/assets/custom/homepage/images/badges.png" />
                        <h4>DRINK NEW BEERS, UNLOCK BADGES</h4>
                        <p>Expand your palate by trying new and different beer styles and unlock achievements along the way.</p>
                    </div>
                </section>

                <section className="map-section">
                    <div className="map-content">
                        <div className="phone-container">
                            <img className="phone"src="https://untappd.akamaized.net/assets/custom/homepage/images/phone-map.png" />
                        </div>
                        <div className="map-info">
                            <h2>Explore nearby popular bars, breweries, and beers.</h2>
                            <div className="short-rule"></div>
                            <p>Not sure where to grab a pint? Untappd shows you popular bars and venues nearby and what's on tap.</p>
                        </div>
                    </div>
                </section>

                <section className="other-features">
                    <h2>Other Great Features</h2>
                    <div className="short-rule"></div>
                    <div className="other-feature-container pad">
                        <div className="feature-items">
                            <img src="https://untappd.akamaized.net/assets/custom/homepage/images/icon-menu.svg"/>
                            <h4>UPDATED MENUS</h4>
                            <p>Follow Verified Venues to get live tap list updates.</p>
                        </div>
                        <div className="feature-items">
                            <img src="https://untappd.akamaized.net/assets/custom/homepage/images/icon-recommendations.svg" />
                            <h4>RECOMMENDATIONS</h4>
                            <p>Discover new beers locally we think you’ll like.</p>
                        </div>
                        <div className="feature-items">
                            <img src="https://untappd.akamaized.net/assets/custom/homepage/images/icon-events.svg" />
                            <h4>LOCAL EVENTS</h4>
                            <p>Stay up-to-date with venue and brewery events alerts.</p>
                        </div>
                    </div>
                </section>

                <section className="app-callout">
                    <h3>Start discovering and sharing now.</h3>
                    <button id="get-app-button">GET THE APP ›</button>
                </section>

                <section className="utfb">
                    <div>
                        <img className="utfb-laptop" src="https://untappd.akamaized.net/assets/custom/homepage/images/utfb-devices-v2.png" />
                    </div>
                    <div className="utfb-content" >
                        <h2>Untappd for Business</h2>
                        <p>Your beer menus and events, published to millions of beer enthusiasts.</p>
                        <div className="short-rule"></div>
                        <ul>
                            <li>Quickly share your beer menus with the world</li>
                            <li>Maximize visibility to drive new customers to your venue</li>
                            <li>Keep your customers up-to-date by publishing to Untappd, Twitter, &amp; Facebook</li>
                        </ul>
                        <button>REQUEST A DEMO</button>
                    </div>
                </section>

                <section className="brewery-callout">
                    <h3>Work for a brewery? View insights and engage with customers.</h3>
                    <button id="claim-brewery">CLAIM YOUR BREWERY TODAY ›</button>
                </section>

                <footer>
                    <div id="footer-nav">
                        <div className="nav-items">
                            <button>Home</button>
                            <button>The Pub</button>
                            <button>Store</button>
                            <button>Breweries</button>
                            <button>Blog</button>
                            <button>Support</button>
                            <button>Careers</button>
                            <button>API</button>
                            <button>Terms</button>
                            <button>Privacy</button>
                            <button>Privacy</button>
                        </div>
                        <p>© Untappd, Inc. 2020</p>
                    </div>
                </footer>

                    <div className="social-links">
                        <input type="image" src="https://untappd.akamaized.net/assets/custom/homepage/images/icon-twitter.svg"/>
                        <input type="image" src="https://untappd.akamaized.net/assets/custom/homepage/images/icon-facebook.svg"/>
                        <input type="image" src="https://untappd.akamaized.net/assets/custom/homepage/images/icon-instagram.svg"/>
                    </div>
            </div>
        )
    }
}

export default SplashPage;