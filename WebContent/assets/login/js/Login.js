ValidatePopup = function () {
    HideValidation();

    if ($('#txtUserName').val().trim() == '') {
	    ShowValidation("Please enter User name","txtUserName");
	    $('#txtUserName').focus();
	    return false;
    }

	if ($('#txtUserName').val().trim()!= '') {
	    var name=document.getElementById("txtUserName").value;
        if(name.length<6){
	        ShowValidation("Inavalid User name","txtUserName");
            $('#txtUserName').focus();
            return false;
        }
    }

    if ($('#txtPassWord').val().trim() == '') {
        ShowValidation("Please enter Password","txtPassWord");
        $('#txtPassWord').focus();
        return false;
    }
    return true;
}


ShowValidation = function (Message,ControlID) {
    $('#ErrorMessageText').text(Message+' !!!');
    $('#ErrorMessageBox').css("color","red");
    $(ControlID).css('border-color', 'red');

    $("#ErrorMessageBox").show().delay(3000).fadeOut();
}

HideValidation = function () {
    $('#ErrorMessageText').text('');
    $('#ErrorMessageBox').hide();
}




/*$(document).ready(function() {
	$("#btnLogin").click(function() {
		if(ValidatePopup()){
			CallServlet();
		}	
	});
    
	$("#CloseErr").click(function() {
		$("#ErrorMessageBox").toggle();
	});
});

CallServlet = function(){
     $.post('${pageContext.request.contextPath}/com.mvc.controller1.LoginServlet1,', function(data) {
        alert(data);
    });
}

ValidatePopup = function() {
	HideValidation();

	if ($('#txtUserName').val().trim() == '') {
		ShowValidation("Please enter Username", "txtUserName");
		return false;
	}
	if ($('#txtPassWord').val().trim() == '') {
		ShowValidation("Please enter password", "txtPassWord");
		return false;
	}
	return true;
}

ShowValidation = function(Message, ControlID) {
	$('#ErrorMessageText').text(Message);
	$('#ErrorMessageBox').show();
	$('html,body').animate({ scrollTop: 0 }, 'slow');
}
HideValidation = function() {
	$('#ErrorMessageText').text('');
	$('#ErrorMessageBox').hide();
}

*/