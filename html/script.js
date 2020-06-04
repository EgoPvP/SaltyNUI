$(function () {
  window.addEventListener("message", function (event) {
    if (event.data.action == "toggleWindow") {
      displayPluginScreen(event.data.value);
    }
  });
});

function displayPluginScreen(toggle) {
  document.getElementById("pluginScreen").style.display = toggle
    ? "block"
    : "none";
}
