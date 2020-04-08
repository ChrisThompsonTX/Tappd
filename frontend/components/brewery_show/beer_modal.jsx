import React from 'react';
import './beer_modal.css';
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faTimes } from "@fortawesome/free-solid-svg-icons";

class BeerModal extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            beerName: "",
            breweryName: "",
            beerStyle: "",
            beerDescription: "",
            beerABV: "",
            beerIBU: ""
        }

        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleChange = this.handleChange.bind(this);
    }

  handleSubmit(e) {
    e.preventDefault();

    // const newBrewery = {
    //     name: this.state.breweryName,
    //     address: this.state.breweryAddress,
    //     city: this.state.breweryCity,
    //     state: this.state.breweryState,
    //     country: this.state.breweryCountry,
    //     description: this.state.breweryDescription,
    //     rating: 5.0
    // }

    // this.props.createBrewery(newBrewery).then(res => {
    //     if (res.type === "RECEIVE_BREWERY_ERRORS") {
    //         return null;
    //     } else if (res.type === "RECEIVE_BREWERY") {
    //         return this.props.history.push(`/brewery/${res.brewery.id}`)
    //     }
    // })
  }

  handleChange(type) {
    let that = this;
    return function (e) {
      if (type === "beerName") {
          that.setState({ beerName: e.target.value });
      } else if (type === "breweryName") {
          that.setState({ breweryName: e.target.value });
      } else if (type === "beerStyle") {
          that.setState({ beerStyle: e.target.value });
      } else if (type === "beerDescription") {
          that.setState({ beerDescription: e.target.value });
      } else if (type === "beerABV") {
          that.setState({ beerABV: e.target.value });
      } else if (type === "beerIBU") {
          that.setState({ beerIBU: e.target.value });
      }
    };
  }

  render() {
    return (
      <div className="modal-background" onClick={this.props.handleModal}>
        <div className="modal-child" onClick={e => e.stopPropagation()}>
          <div className="form-header">
            <h2>Add a New Beer</h2>
            <FontAwesomeIcon className="exit-modal" onClick={this.props.handleModal} icon={faTimes} color="white" size="1x" />
          </div>
          <form className="create-form" onSubmit={this.handleSubmit}>
            <div className="create-row">
              <div className="name-input">
                <div className="name-container">
                  <label>
                    <span>Beer Name:</span>
                    <div>
                      <input
                        required
                        onChange={this.handleChange("beerName")}
                        className="input-field"
                        type="text"
                        value={this.state.beerName}
                        placeholder="Beer Name"
                      />
                    </div>
                  </label>
                </div>
              </div>
              <div className="brewery-id-input">
                <div className="brewery-id-container">
                  <label>
                    <span>Brewery:</span>
                    <div>
                      <input
                        required
                        onChange={this.handleChange("breweryName")}
                        className="input-field"
                        type="text"
                        value={this.state.breweryId}
                        placeholder="Brewery"
                      />
                      {/* <select id="breweries">
                        {this.props.breweries.map( brewery => {
                          <option key={brewery.id} value={`${brewery.name}`}>{brewery.name}</option>
                        })}
                      </select> */}
                    </div>
                  </label>
                </div>
              </div>
            </div>
            <div className="create-row">
              <div className="beer-name-input">
                <div className="beer-name-container">
                  <label>
                    <span>Beer Description:</span>
                    <div>
                      <textarea
                        required
                        onChange={this.handleChange("beerDescription")}
                        className="input-field description"
                        value={this.state.beerDescription}
                        cols="30"
                        rows="8"
                      >Beer Description</textarea>
                    </div>
                  </label>
                </div>
              </div>
              <div className="beer-image-input">
                <div className="beer-image-container">
                  <div>
                    <label for="file-upload" className="add-photo-button">
                      <img className="add-photo-icon" src="https://untappd.akamaized.net/assets/v3/images/ico_checkin_photo.png" />
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
              <div className="beer-name-input">
                <div className="beer-name-container">
                  <label>
                    <span>Beer Style:</span>
                    <div>
                      <input
                        required
                        onChange={this.handleChange("beerStyle")}
                        className="input-field"
                        type="text"
                        value={this.state.beerStyle}
                        placeholder="Beer Style"
                      />
                    </div>
                  </label>
                </div>
              </div>
              <div className="beer-name-input">
                <div className="beer-name-container">
                  <label>
                    <span>ABV:</span>
                    <div>
                      <input
                        required
                        onChange={this.handleChange("beerABV")}
                        className="input-field"
                        type="text"
                        value={this.state.beerABV}
                        placeholder="Beer ABV"
                      />
                    </div>
                  </label>
                </div>
              </div>
              <div className="beer-name-input">
                <div className="beer-name-container">
                  <label>
                    <span>IBU:</span>
                    <div>
                      <input
                        required
                        onChange={this.handleChange("beerIBU")}
                        className="input-field"
                        type="text"
                        value={this.state.beerIBU}
                        placeholder="Beer IBU"
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

export default BeerModal;

