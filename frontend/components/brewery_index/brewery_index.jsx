import React from 'react';
import { Link } from 'react-router-dom';
import BreweryIndexItem from './brewery_index_item';
import './brewery_index.css';
import BreweryModal from './brewery_modal'

class BreweryIndex extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            openModal: false
        }

        this.handleModal = this.handleModal.bind(this);
    }

    handleModal(e) {
        e.preventDefault();
        if (this.state.openModal === false) {
            this.setState({
                openModal: true
            })
        } else {
            this.setState({
                openModal: false
            })
        }
    };

    componentDidMount(){
        this.props.fetchBreweries()
    }

    render(){
        if (this.props.breweries.otherBreweries || !this.props.breweries) {
            return null
        } else {

            return(
                <div className="brewery-index-container">
                    <section className="brewery-index">
                        <div className="title-box">
                            <h4 className="title" >Top Breweries</h4>
                        </div>
                        <div className="breweries">
                            {this.props.breweries.map((brewery=>(
                            <BreweryIndexItem key={brewery.id} brewery={brewery} fetchBrewery={this.props.fetchBrewery} /> 
                            )))}
                        </div>
                        <div className="modal-container">
                            <button className="modal-button" onClick={this.handleModal}>ADD A BREWERY +</button>
                        </div>
                    </section>
                    <footer>

                    </footer>
                    {this.state.openModal === true ? <BreweryModal handleModal={this.handleModal} createBrewery={this.props.createBrewery} /> : null}
                </div>

            )

        }
    }
}

export default BreweryIndex;