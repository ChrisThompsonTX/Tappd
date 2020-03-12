import React from 'react';

class BreweryShowItem extends React.Component {
    render(){
        return(
            <div>
                {this.props.beer.name}
            </div>
        )
    }
}

export default BreweryShowItem;