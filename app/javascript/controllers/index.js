// app/javascript/controllers/index.js

import { application } from "./application";
import { definitionsFromContext } from "stimulus-loading";

// Charge tous les contrôleurs dans le dossier controllers
const context = require.context(".", true, /\.js$/);
application.load(definitionsFromContext(context));
