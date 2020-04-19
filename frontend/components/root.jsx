import React from "react";
import { Provider } from "react-redux";
import { HashRouter } from "react-router-dom";
import App from "./App";
import LoadingIndicator from '../components/loading_indicator/loading_indicator'

const Root = ({ store }) => (
  <Provider store={store}>
      <HashRouter>
          <App/>
          <LoadingIndicator/>
      </HashRouter>
  </Provider>
);

export default Root;