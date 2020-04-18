import React from 'react';
import styled from 'styled-components';

const Styles = styled.div`

`;

class Slider extends React.Component {
    
  constructor(props){
    super(props)
    this.state={
      value: 0.0
    }

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e){
    e.preventDefault();
    this.setState({value: e.target.value})
  }

  render() {
    return (
      <Styles>
        <input 
          type="range" 
          min={0.0} 
          max={5.0} 
          value={this.state.value} 
          className="slider" 
          onChange={this.handleChange}
          />
          <div className="value">{this.state.value}</div>
      </Styles>
    )
  }
}

export default Slider;