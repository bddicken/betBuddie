
/*
 * Display a green informative pop-up to a user
 */
function popUp(fileName) {
    if(document.getElementById('pu').style.display=='none'){

        $.get('content/' + fileName, function(data){
	    var pu = document.getElementById('pu');
            pu.style.display='inline-block';
	    var exitButton = '<a href="#" id="exitButton" onclick="popUp(\'show.html\')">exit</a>';
	    pu.innerHTML= exitButton + " \n\n " +  data;
        });

    }
    else {
        document.getElementById('pu').style.display='none';
    }
}

/*
 * Display a red warning pop-up to a user
 */
function popUpWarning(text) {
    if(document.getElementById('puW').style.display=='none'){
        var pu = document.getElementById('puW');
        puW.style.display='inline-block';
        var exitButton = '<a href="#" id="exitButton" onclick="popUpWarning(\'\')">exit</a>';
        puW.innerHTML= exitButton + " \n\n " +  text;
    }
    else {
        document.getElementById('puW').style.display='none';
    }
}
