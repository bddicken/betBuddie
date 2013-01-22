/*-------------------------------------------------------------------------
 * Settings Variables
 *------------------------------------------------------------------------*/
var settings_User = "";
var settings_LSVersion = "";
var settings_Notify = "";
var aVario = "";

var hjName = "";
var betAmount = "";
var num = "";

/*
 * Go to page
 */
function goToPage(pageName) {
    $.get('pages/' + pageName, function(data){
        document.getElementById('mainAppContent').innerHTML = data;
        displayResultData();
    });

}

/*
 * Convert a json string to a native js array
 */
function jsonToJSArray(jsonText) {
    var jsonObject = JSON.parse(jsonText);
    var decData = [];

    for(var i in jsonObject) {
        if(jsonObject.hasOwnProperty(i) && !isNaN(+i)) {
            decData[+i] = jsonObject[i];
        }
    }
    return decData;	
}

/*
 *
 */
function openURL(URL) {
    window.location.href = URL;
}

/*
 *
 */
function selectHJ(element) {
   document.getElementById('racer').innerHTML = element;
}

function storeBetInfo() {
    hjName = document.getElementById('racer').innerHTML;
    betAmount = Math.abs(document.getElementById('uba').value);
    num = document.getElementById('racer').innerHTML;
    num = num.charAt(num.length-1);
}

function placeBet(page) {
    storeBetInfo();
    if((hjName.trim().length > 0)   &&
       ( ("" + betAmount).length >0)) {
            checkMoney(betAmount, page);  
    }
    else {
        popUpWarning('Please select a jockey/horse to bet on and an amount to bet!');
    }
}

function displayResultData(){
    console.log("dRD - 1");
   document.getElementById('resultRacer').innerHTML = hjName;
    console.log("dRD - 2");
   document.getElementById('resultMoney').innerHTML = betAmount;
    console.log("dRD - 3");
   //document.getElementById('resultPos').innerHTML = num;
}

function showCard(card) {
   document.getElementById('cards-1').style.display = 'none';
   document.getElementById('cards-2').style.display = 'none';
   document.getElementById('cards-3').style.display = 'none';
   document.getElementById(card).style.display = 'block';
}

/*
 *
 */
function submitBet(pageToGoTo, betType, bet, raceID, horseID) {
    console.log("hahiahiahiahi - 1");
    $.get('pages/' + pageToGoTo, function(data){
	console.log("hahiahiahiahi - 2");
        document.getElementById('mainAppContent').innerHTML = data;
	console.log("hahiahiahiahi - 3");
	console.log("hahiahiahiahi - 4");
        $.get('php/bets/submit_' + betType + '.php?amount=' + bet + '&raceID=' + raceID + '&horseID=' + horseID, function(data){
	    console.log("hahiahiahiahi - inner");
	    console.log(data);
            var retDat = JSON.parse(data);
	    document.getElementById('moneyVal').innerHTML = retDat['money'];
	    document.getElementById('resultText1').innerHTML = retDat['text'];
            displayResultData();
        });
	console.log("hahiahiahiahi");
    });
}

/*
 * Display an informative pop-up to a user
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
 * Display a warning pop-up to a user
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

/*
 * Increaases the level reached for the currently logged in user.
 */
function jumpLevel(number) {
        $.get('php/level.php?lev=' + number, function(data){});
}

/*
 * Check if a user has enough money to make the bet
 */
function checkMoney(amount, page) {
        return $.get('php/checkMoney.php?amount=' + amount, function(data){
	    //console.log(data);
            if(data.indexOf('good') >= 0) {
                goToPage(page);  
	    }
	    else
                popUpWarning('Invalid bet; please make sure the amount you are betting is valid, and that your input contains only numeric characters.');
	    return 1;
        });
}

/*
 * Play a sound
 */
function playSound(soundfile) {
    document.getElementById("dummySoundSpan").innerHTML=
    "<embed src=\"sound/"+soundfile+"\" hidden=\"true\" autostart=\"true\" loop=\"false\" />";
}

