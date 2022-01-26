const { contextBridge } = require("electron");

window.addEventListener("DOMContentLoaded", () => {
  contextBridge.exposeInMainWorld("apis", {});
});
