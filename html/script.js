$(function(){
	window.addEventListener('message', function(event) {
		if (event.data.action == "showNUI"){
			displayPluginScreen(true);
		}
		if (event.data.action == "hideNUI"){
			displayPluginScreen(false);
		}
	});

});


function displayPluginScreen(toggle) {
	document.getElementById('pluginScreen').style.display = (toggle) ? 'block' : 'none';
}


