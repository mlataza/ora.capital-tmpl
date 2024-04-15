window.onload = function() {  
	var actives = $('#activeusers').text();
	var x = +actives + +1089420;
    document.getElementById("activeusersx").innerHTML = x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}; 

$(document).ready(function(){
    var online = $('#onlineusers').text();
	var y = +online + +21991;
	document.getElementById("onlineusersx").innerHTML = y.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
});


$(document).ready(function(){
	var withdra = $('#totaldeposits').text();
	var symbol = ('<b>$ </b>');
	var z = +withdra + +2896231998;
	var xy   =  z.toFixed(0)
    document.getElementById("totaldepositsx").innerHTML =  symbol + xy.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")  ;
});


