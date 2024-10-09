// app/javascript/application.js

// Import Stimulus
import { Application } from "@hotwired/stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("./controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

// Import Turbo
import "@hotwired/turbo-rails"

// Import React
import React from 'react';
import ReactDOM from 'react-dom';
import HelloReact from './components/hello_react';

// Render the HelloReact component into the root element
document.addEventListener('DOMContentLoaded', () => {
  const rootElement = document.getElementById('root');
  if (rootElement) {
    ReactDOM.render(<HelloReact />, rootElement);
  }
});
