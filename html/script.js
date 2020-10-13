$(function(){
	window.addEventListener('message', function(event) {
		if (event.data.action == "toggleWindow"){
			displayPluginScreen(false);
		}
	});

});


function displayPluginScreen(toggle) {
	document.getElementById('pluginScreen').style.display = (toggle) ? 'block' : 'none';
}


