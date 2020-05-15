import React from 'react';
import './review_modal.css';
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faTimes } from "@fortawesome/free-solid-svg-icons";
import { withRouter } from "react-router-dom"

class ReviewModal extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            rating: 0,
            body: "",
            photo: null
        }

        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleChange = this.handleChange.bind(this);
    }

    handleSubmit(e) {
        e.preventDefault();
        console.log(this.state.photo)
        const formData = new FormData();

        formData.append("rating", (this.state.rating / 4))
        formData.append("body", this.state.body)
        formData.append("beer_id", this.props.beer.id)
        formData.append("user_id", this.props.user_id)
        if (this.state.photo) {
            formData.append("photo", this.state.photo)
        }

        this.props.createReview(formData).then(res => {
            if (res.type === "RECEIVE_REVIEW_ERRORS") {
                return null;
            } else if (res.type === "RECEIVE_SINGLE_REVIEW") {
                window.location.reload(true)
            }
        })
    }

    handleChange(type) {
        let that = this;
        return function (e) {
            if (type === "rating") {
                that.setState({ rating: e.target.value });
            } else if (type === "description") {
                that.setState({ body: e.target.value });
            } else if (type === "photo") {
                that.setState({ photo: e.target.files[0] });
            }
        };
    }

    render() {
        return (
            <div className="modal-background" onClick={this.props.handleModal}>
                <div className="modal-child" onClick={e => e.stopPropagation()}>
                    <div className="form-header">
                        <h2>Check-In</h2>
                        <FontAwesomeIcon className="exit-modal" onClick={this.props.handleModal} icon={faTimes} color="white" size="1x" />
                    </div>
                    <form className="create-form" onSubmit={this.handleSubmit}>
                        <div className="create-row">
                            <div className="beer-name-input">
                                <div className="beer-name-container">
                                    <label>
                                        <div>
                                            <textarea
                                                required
                                                onChange={this.handleChange("description")}
                                                className="input-field description"
                                                value={this.state.description}
                                                cols="30"
                                                rows="8"
                                                placeholder="What did you think?"
                                            ></textarea>
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <div className="beer-image-input">
                                <div className="beer-image-container">
                                    <div>
                                        <label htmlFor="file-upload" className="add-photo-button">
                                            <img className="add-photo-icon" src="https://untappd.akamaized.net/assets/v3/images/ico_checkin_photo.png" />
                                        </label>
                                        <input
                                            id="file-upload"
                                            className="image-upload"
                                            type="file"
                                            accept="image/*"
                                            onChange={this.handleChange("photo")}
                                        >
                                        </input>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="create-row">
                            <div className="slider-container">
                                <input
                                    type="range"
                                    min={0}
                                    max={20}
                                    value={this.state.rating}
                                    className="slider"
                                    onChange={this.handleChange("rating")}
                                />
                                <div className="value">
                                    <div className="rating-pointer" />
                                    <p>
                                        {this.state.rating === 0 ? "NO" : this.state.rating * 0.25}
                                        <span>{this.state.rating === 0 ? "RATING" : "STARS" }</span>
                                    </p> 
                                </div>
                            </div>
                            <div className="submit-container">
                                <input
                                    className="submit-create"
                                    type="submit"
                                    value="Confirm"
                                />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        )
    }
}

export default withRouter(ReviewModal);

