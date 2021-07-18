ValidateForm = function () {
    HideValidation();

    if ($('#txtNewUserName').val().trim() == '') {
	    ShowValidation("Please enter User name","txtUserName");
	    $('#txtNewUserName').focus();
	    return false;
    }

	if ($('#txtNewUserName').val().trim()!= '') {
	    var name=document.getElementById("txtNewUserName").value;
        if(name.length<6){
	        ShowValidation("UserName Atleast 6 character Long","txtNewUserName");
            $('#txtNewUserName').focus();
            return false;
        }
    }

    if ($('#txtNewPassword').val().trim() == '') {
	    ShowValidation("Please Enter Password","txtNewPassword");
	    $('#txtNewPassword').focus();
	    return false;
    }

    if ($('#txtConfirmPassword').val().trim() == '') {
        ShowValidation("Please Confirm Password","txtConfirmPassword");
        $('#txtConfirmPassword').focus();
        return false;
    }

    if ($('#txtNewPassword').val().trim() != $('#txtConfirmPassword').val().trim()) {
	    ShowValidation("Password Mismatch","txtConfirmPassword");
	    $('#txtConfirmPassword').focus();
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