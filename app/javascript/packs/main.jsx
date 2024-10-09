import React from 'react';
import ReactDOM from 'react-dom';

// Import du fichier CSS dans Webpack
import "../assets/stylesheets/application.css"; // Vérifie que le chemin est correct

const App = () => {
  return (
    <div>
      <h1>Welcome to the Wedding Planner App!</h1>
    </div>
  );
};

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<App />, document.getElementById('root'));
});
