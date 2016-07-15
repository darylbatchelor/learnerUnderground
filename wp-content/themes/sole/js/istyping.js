
$( document ).ready(function() {





var textarea = $('#textarea');
var typingStatus = $('#typing_on');
var lastTypedTime = new Date(0); // it's 01/01/1970
var typingDelayMillis = 5000; // how long user can "think about his spelling" before we show "No one is typing -blank space." message
var members = $('#members').val();


function refreshTypingStatus() {
    if (!textarea.is(':focus') || textarea.val() == '' || new Date().getTime() - lastTypedTime.getTime() > typingDelayMillis) {
        //typingStatus.html('No one is typing -blank space.');
       var xmlhttp = new XMLHttpRequest();
        
        xmlhttp.open("GET", "../wp-content/themes/sole/inc/istypingsend.php?istyping=0", true);
        xmlhttp.send();
    } else {
       var xmlhttp = new XMLHttpRequest();
        
        xmlhttp.open("GET", "../wp-content/themes/sole/inc/istypingsend.php?istyping=1", true);
        xmlhttp.send();
    }
}
function updateLastTypedTime() {
    lastTypedTime = new Date();
}


function whoIsTyping(){
	
var newxmlhttp = new XMLHttpRequest();
        newxmlhttp.onreadystatechange = function() {
            if (newxmlhttp.readyState == 4 && newxmlhttp.status == 200) {
                document.getElementById("typing_on").innerHTML = newxmlhttp.responseText;
            }
        };
        newxmlhttp.open("GET", "../wp-content/themes/sole/inc/istypingreceive.php?members=" + members, true);
        newxmlhttp.send();
}


setInterval(refreshTypingStatus, 1000);
setInterval(whoIsTyping, 1000);
textarea.keypress(updateLastTypedTime);
textarea.blur(refreshTypingStatus);




});
