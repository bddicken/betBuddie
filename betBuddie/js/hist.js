// Misc Variables
var pageHistory = new Array();
var currentEval = "";

/**
 * Once the window has finished loading, run this code, which inserts the main
 * menu content into the page, among other things...
 */
window.onload = function()
{
    enterPage('goToPage(\'main.php\');');
    console.log('page load.');
}

/**
 * Call this function when entering a new page (except when going
 * "back"; for that use the back() function).
 */
function enterPage(evalString) {
    pageHistory.push(currentEval);
    currentEval = evalString;
    eval(evalString);
    console.log('currentEval: >>>' + currentEval + '<<<');
    console.log("history array:\n" + pageHistory.join('\n'));
}

/**
 * Go to the last page. Determine the last page by popping the last
 * element from the pageHistory array.
 */
function back() {
    hjName = "";
    betAmount = "";
    num = "";

    tempExe = pageHistory.pop();
    eval(tempExe);
    currentEval = tempExe;
    if(currentEval == "" || currentEval == undefined) 
        currentEval = 'goToPage(\'main.php\');';
    
    console.log('currentEval: >>>' + currentEval + '<<<');
    console.log("history array:\n" + pageHistory.join('\n'));
}

/**
 * Resets the history of the betbuddie application
 */
function resetHist() {
    currentEval = "";
    pageHistory = new Array();
    enterPage('goToPage(\'main.php\');');
}


