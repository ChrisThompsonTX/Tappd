import React from 'react';
import './beer_modal.css';
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faTimes } from "@fortawesome/free-solid-svg-icons";
import { withRouter } from "react-router-dom"

class BeerModal extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            beerName: "",
            breweryName: "",
            beerStyle: "",
            beerDescription: "",
            beerABV: "",
            beerIBU: "",
            label: "https://tappd-seeds.s3-us-west-1.amazonaws.com/BeerLabels/beer_label.png"
        }

        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleChange = this.handleChange.bind(this);
    }

  handleSubmit(e) {
    e.preventDefault();
    const formData = new FormData();
    formData.append("name", this.state.beerName)
    formData.append("brewery_id", this.state.breweryName)
    formData.append("style", this.state.beerStyle)
    formData.append("rating", 5.0)
    formData.append("description", this.state.beerDescription)
    formData.append("abv", this.state.beerABV)
    formData.append("ibu", this.state.beerIBU)
    formData.append("label", this.state.label)

    // const newBeer = {
    //   name: this.state.beerName,
    //   brewery_id: this.state.breweryName.id,
    //   style: this.state.beerStyle,
    //   rating: 5.0,
    //   description: this.state.beerDescription,
    //   abv: this.state.beerABV,
    //   ibu: this.state.beerIBU,
    //   label: this.state.label
    // }
    this.props.createBeer(formData).then(res => {
        if (res.type === "RECEIVE_BEER_ERRORS") {

            return null;
        } else {
  
            return this.props.history.push(`/beer/${res.beer.id}`)
        }
    })
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
      } else if (type === "image") {
          that.setState({ label: e.target.files[0] });
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
                      <select 
                        id="breweries"
                        required
                        onChange={this.handleChange("breweryName")
                        }
                        >
                        {Object.keys(this.props.breweries).map( brewId => (
                           <option key={this.props.breweries[brewId].id} value={`${brewId}`}>{this.props.breweries[brewId].name}</option>
                        ))}
                      </select>
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
                    <label htmlFor="file-upload" className="add-photo-button">
                      <img className="add-photo-icon" src="https://untappd.akamaized.net/assets/v3/images/ico_checkin_photo.png" />
                    </label>
                    <input
                      id="file-upload"
                      className="image-upload"
                      type="file"
                      // accept="image/*"
                      onChange={this.handleChange("image")}
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

export default withRouter(BeerModal);

