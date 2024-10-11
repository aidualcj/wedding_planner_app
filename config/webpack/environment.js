// config/webpack/environment.js

const { environment } = require('@rails/webpacker');
const webpack = require('webpack');

// Désactive le préchargement automatique des assets
environment.splitChunks((config) => Object.assign({}, config, { optimization: { splitChunks: false } }));

// Configuration de Babel Loader
environment.loaders.append('babel', {
  test: /\.jsx?$/,
  exclude: /node_modules/,
  use: {
    loader: 'babel-loader',
    options: {
      presets: [
        "@babel/preset-env",
        "@babel/preset-react"
      ],
      plugins: [
        "@babel/plugin-syntax-dynamic-import",
        "@babel/plugin-transform-runtime",
        "@babel/plugin-proposal-class-properties",
        "@babel/plugin-proposal-private-methods",
        "@babel/plugin-proposal-private-property-in-object",
        "@babel/plugin-proposal-optional-chaining",
        "@babel/plugin-proposal-nullish-coalescing-operator",
        "@babel/plugin-proposal-logical-assignment-operators"
      ]
    }
  }
});

// Ajout du plugin Provide pour gérer jQuery ou d'autres bibliothèques globales si nécessaire
environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Rails: '@rails/ujs'
  })
);

module.exports = environment;
