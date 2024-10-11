// app/javascript/packs/main.jsx

// Import your main CSS file
import "../../assets/stylesheets/application.css"; // Assurez-vous que ce chemin est correct

// Import Turbo (assurez-vous de n'avoir qu'une seule instance de Turbo dans l'application)
import "@hotwired/turbo-rails";

// Import Stimulus
import { application } from "../controllers/application"; // Utilise l'instance d'application de Stimulus créée

// Import React and ReactDOM
import React from "react";
import { createRoot } from 'react-dom/client'; // Import de createRoot au lieu de ReactDOM.render

// Import your main React component
import HelloReact from "../components/hello_react";

// Render your React component into the root element
document.addEventListener("DOMContentLoaded", () => {
  const rootElement = document.getElementById("root");
  if (rootElement) {
    ReactDOM.render(<HelloReact />, rootElement);
  }
});
