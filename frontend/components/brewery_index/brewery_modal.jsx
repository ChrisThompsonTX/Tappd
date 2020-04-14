import React from 'react';
import './brewery_modal.css';
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faTimes } from "@fortawesome/free-solid-svg-icons";

class BreweryModal extends React.Component {

  constructor(props) {
    super(props);
    
    this.state = {
      breweryName: "",
      breweryAddress: "",
      breweryCity: "",
      breweryState: "",
      breweryCountry: "",
      breweryDescription: ""
    }

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();

    const newBrewery = {
      name: this.state.breweryName,
      address: this.state.breweryAddress,
      city: this.state.breweryCity,
      state: this.state.breweryState,
      country: this.state.breweryCountry,
      description: this.state.breweryDescription,
      rating: 5.0,
      // logo: 
    }

    this.props.createBrewery(newBrewery).then(res => {
      if (res.type === "RECEIVE_BREWERY_ERRORS") {
        return null;
      } else if (res.type === "RECEIVE_BREWERY") {
        return this.props.history.push(`/brewery/${res.brewery.id}`)
      }
    })
  }

  handleChange(type) {
    let that = this;
    return function (e) {
      if (type === "breweryName") {
        that.setState({ breweryName: e.target.value });
      } else if (type === "breweryAddress") {
        that.setState({ breweryAddress: e.target.value });
      } else if (type === "breweryCity") {
        that.setState({ breweryCity: e.target.value });
      } else if (type === "breweryState") {
        that.setState({ breweryState: e.target.value });
      } else if (type === "breweryCountry") {
        that.setState({ breweryCountry: e.target.value });
      } else if (type === "breweryDescription") {
        that.setState({ breweryDescription: e.target.value });
      }
    };
  }

  render() {
    return (
      <div className="modal-background" onClick={this.props.handleModal}>
        <div className="modal-child" onClick={e => e.stopPropagation()}>
          <div className="form-header">
            <h2>Add a New Brewery</h2>
            <FontAwesomeIcon className="exit-modal" onClick={this.props.handleModal} icon={faTimes} color="white" size="1.5x"/>
          </div>
          <form className="create-form" onSubmit={this.handleSubmit}>
            <div className="name-input">
              <div className="name-container">
                <label>
                  <span>Brewery Name:</span>
                  <div>
                    <input 
                      required
                      onChange={this.handleChange("breweryName")}
                      className="input-field"
                      type="text"
                      value={this.state.breweryName}
                      placeholder="Brewery Name"
                      />
                  </div>
                </label>
              </div>
            </div>
            <div className="create-row">
              <div className="brewery-description-input">
                <div className="brewery-description-container">
                  <label>
                    <span>Description:</span>
                    <div>
                      <textarea
                        required
                        onChange={this.handleChange("breweryDescription")}
                        className="input-field description"
                        value={this.state.breweryDescription} 
                        cols="30" 
                        rows="8"
                        >Brewery Description</textarea>
                    </div>
                  </label>
                </div>
              </div>
              <div className="brewery-image-input">
                <div className="brewery-image-container">
                  <div>
                    <label for="file-upload" className="add-photo-button">
                      <img className="add-photo-icon" src="https://untappd.akamaized.net/assets/v3/images/ico_checkin_photo.png"/>
                    </label>
                      <input
                        id="file-upload"
                        className="image-upload"
                        type="file"
                        accept="image/*"
                        >
                      </input>
                  </div>
                </div>
              </div>
            </div>
            <div className="create-row">
              <div className="brewery-address">
                <div className="brewery-address-container">
                  <label>
                    <span>Brewery Address:</span>
                    <div>
                      <input 
                        required
                        onChange={this.handleChange("breweryAddress")}
                        className="input-field"
                        type="text"
                        value={this.state.breweryAddress}
                        placeholder="Brewery Address"
                        />
                    </div>
                  </label>
                </div>
              </div>
              <div className="brewery-city">
                <div className="brewery-city-container">
                  <label>
                    <span>City:</span>
                    <div>
                      <input 
                        required
                        onChange={this.handleChange("breweryCity")}
                        className="input-field"
                        type="text"
                        value={this.state.breweryCity}
                        placeholder="City"
                        />
                    </div>
                  </label>
                </div>
              </div>
              <div className="brewery-state">
                <div className="brewery-state-container">
                  <label>
                    <span>State:</span>
                    <div>
                      <input 
                        onChange={this.handleChange("breweryState")}
                        className="input-field"
                        type="text"
                        value={this.state.breweryState}
                        placeholder="State"
                        />
                    </div>
                  </label>
                </div>
              </div>
              <div className="brewery-country">
                <div className="brewery-country-container">
                  <label>
                    <span>Country:</span>
                    <div>
                      <input 
                        required
                        onChange={this.handleChange("breweryCountry")}
                        className="input-field"
                        type="text"
                        value={this.state.breweryCountry}
                        placeholder="Country"
                        />
                    </div>
                  </label>
                </div>
              </div>
            </div>
            <div className="submit-container">
              <input
                className="submit-create"
                type="submit"
                value="Confirm"
                />
            </div>
          </form>
        </div>
      </div>
    )
  }
}

export default BreweryModal;

