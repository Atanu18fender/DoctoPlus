/**
 * 
 */
ValidatePopup = function() {
	HideValidation();

	if ($('#txtFirstName').val() != '') {
		var fname = $("#txtFirstName").val();
		var resfname = /^[a-zA-Z]*$/;
		var res = resfname.test(fname);
		if (res == false) {
			ShowValidation("Please provide valid first name.", "txtFirstName");
			return false;
		}
	} else {
		ShowValidation("Please provide first name.", "txtFirstName");
		return false;
	}

	if ($('#txtLastName').val() != '') {
		var lname = $("#txtLastName").val();
		var reslname = /^[a-zA-Z]*$/;
		var res = reslname.test(lname);
		if (res == false) {
			ShowValidation("Please provide valid last name.", "txtLastName");
			return false;
		}
	} else {
		ShowValidation("Please provide last name.", "txtLastName");
		return false;
	}

	if ($('#txtEmail').val() != '') {
		var email = $("#txtEmail").val();
		var resemail = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		var res = resemail.test(email);
		if (res == false) {
			ShowValidation("Please provide valid email.", "txtEmail");
			return false;
		}
	} else {
		ShowValidation("Please provide Emial", "txtEmail");
		return false;
	}

	if ($('#txtPhone').val() != '') {
		var phone = $("#txtPhone").val();
		var resphone = /^[6-9][0-9]{9}$/;
		var res = resphone.test(phone);
		if (res == false) {
			ShowValidation("Please provide valid Phone number.", "txtPhone");
			return false;
		}
	} else {
		ShowValidation("Please provide Phone number", "txtPhone");
		return false;
	}

	return true;
}


ShowValidation = function(Message, ControlID) {

	$('#ErrorMessageText').text(Message + ' !!!');
	$('#ErrorMessageBox').css("color", "red");
	$(ControlID).css('border-color', 'red');

	$("#ErrorMessageBox").show().delay(3500).fadeOut();
}

HideValidation = function() {
	$('#ErrorMessageText').text('');
	$('#ErrorMessageBox').hide();
}