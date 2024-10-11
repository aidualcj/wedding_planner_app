module.exports = function (api) {
  api.cache(true);

  const presets = [
    [
      "@babel/preset-env",
      {
        targets: {
          browsers: "last 2 versions", // Compatibilité pour les navigateurs récents
        },
        useBuiltIns: "entry",
        corejs: 3,
        modules: false,
      },
    ],
    "@babel/preset-react",
  ];

  const plugins = [
    "@babel/plugin-syntax-dynamic-import", // Support de l'import dynamique
    "@babel/plugin-transform-runtime", // Optimisation des helpers Babel
    "@babel/plugin-proposal-class-properties", // Support des propriétés de classe
    "@babel/plugin-proposal-private-methods", // Support des méthodes privées
    "@babel/plugin-proposal-private-property-in-object", // Support des propriétés privées dans les objets
    "@babel/plugin-proposal-optional-chaining", // Support du chaînage optionnel
    "@babel/plugin-proposal-nullish-coalescing-operator", // Support de la coalescence nulle
    "@babel/plugin-proposal-logical-assignment-operators", // Support des assignations logiques `&&=`, `||=`, et `??=`
  ];

  return {
    presets,
    plugins,
  };
};
