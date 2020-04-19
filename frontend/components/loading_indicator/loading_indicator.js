import React from 'react'
import { usePromiseTracker } from 'react-promise-tracker'
import './loading_indicator.css'

const LoadingIndicator = props => {
  const { promiseInProgress } = usePromiseTracker();

  return (
    promiseInProgress &&
    <div className="loader-box">
      <img className="loader" src="https://tappd-seeds.s3-us-west-1.amazonaws.com/beer_loader.gif" />
    </div>
  )
}

export default LoadingIndicator;