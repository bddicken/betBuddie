/*-------------------------------------------------------------------------
 * Settings Variables
 *------------------------------------------------------------------------*/
var settings_User = 0;
var string_User = "";

var settings_LSVersion = 0;
var string_LSVersion = "";

var settings_Notify = 0;
var string_Notify = "";

function loadSettings() {
    //alert(settings_User + "  " + settings_LSVersion + "  " + settings_Notify);
    //alert(string_User + "  " + string_LSVersion + "  " + string_Notify);
    sGetUsers();
    sGetLSVer();
}

/*
 * request the available users from the server
 */
function sGetUsers() {
    $.get("http://sodb7.cs.arizona.edu:8080/AZDBLAB/response.jsp?dataTarget=lhs&class=topLevelFolder&id=allUsers", function(data){
	var decData = jsonToJSArray(data);  var optionHTML="";
	for(var i=0; i < decData.length; i++){
            optionHTML = optionHTML + '<option>' + decData[i] + '</option>';
	}
        document.getElementById('userDropdown').innerHTML = optionHTML;
        document.getElementById('userDropdown').selectedIndex = settings_User;
    });
}

/*
 * request the available LS versions from the server
 */
function sGetLSVer() {
    $.get("http://sodb7.cs.arizona.edu:8080/AZDBLAB/response.jsp?dataTarget=mobile&id=lsVersions", function(data){
	var decData = jsonToJSArray(data);  var optionHTML="";
	for(var i=0; i < decData.length; i++){
            optionHTML = optionHTML + '<option>' + decData[i] + '</option>';
	}
        document.getElementById('lsDropdown').innerHTML = optionHTML;
        document.getElementById('lsDropdown').selectedIndex = settings_LSVersion;
        document.getElementById('notDropdown' ).selectedIndex = settings_Notify;
    });
}

/*
 * Use this function to update the settings variables when one is changed
 */
function updateSettingVars() {
    // update the user variable
    settings_User = document.getElementById('userDropdown').selectedIndex;
    string_User = document.getElementById('userDropdown').options[settings_User].innerHTML;   

    // update the LSVersion variable
    settings_LSVersion = document.getElementById('lsDropdown').selectedIndex;
    string_LSVersion = document.getElementById('lsDropdown').options[settings_LSVersion].innerHTML;   
   
    // update the notifications variable
    settings_Notify = document.getElementById('notDropdown').selectedIndex;
    string_Notify = document.getElementById('notDropdown').options[settings_Notify].innerHTML;   
}
