// app/javascript/controllers/stimulus-loading.js

export function definitionsFromContext(context) {
  return context.keys().map((key) => {
    const identifier = key
      .replace("./", "")
      .replace(/\//g, "--")
      .replace(/\.\w+$/, "");
    return { identifier, controllerConstructor: context(key).default };
  });
}
