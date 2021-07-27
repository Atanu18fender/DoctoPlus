ValidatePopup = function() {
	HideValidation();
	if ($('#Address').val() != '') {
		var address = $("#Address").val();
		var resfname = /[a-zA-Z0-9]$/;///^[\w\s.-]+\d+,\s*[\w\s.-]+$/
		var res = resfname.test(address);
		if (res == false) {
			ShowValidation("Please provide valid Address.", "#Address");
			return false;
		}
	} else {
		ShowValidation("Please provide Address.", "#Address");
		return false;
	}
	
	if ($('#Pincode').val() != '') {
		var pincode = $("#Pincode").val();
		var resfname =/[1-9]{1}[0-9]{5}$/;//[1-9]{1}[0-9]{2}\\s{0, 1}[0-9]{3}$/;///^[\w\s.-]+\d+,\s*[\w\s.-]+$/
		var res = resfname.test(pincode);
		if (res == false) {
			ShowValidation("Please provide valid Pincode.", "#pincode");
			return false;
		}
	} else {
		ShowValidation("Please provide Pincode.", "#pincode");
		return false;
	}
	return true;
}

/*days = function() {
	var val = "";
	$(':checkbox:checked').each(function(i) {
		val += $(this).val() + " ";
	});
	if (!val.trim()) {
		ShowValidation("Please provide Day", "#days");
		return false;
	}
	return true;
};*/


ShowValidation = function(Message, ControlID) {
	$('#ErrorMessageText').text(Message + ' !!!');
	$('#ErrorMessageBox').css("color", "red");
	//$(ControlID).css('border-color', 'red');
	$('#docSpeciality').focus();
	/*$(ControlID).focusin(function(){
		$(this).css('border-color', 'red');
	});*/
	$("#ErrorMessageBox").show().delay(3500).fadeOut();
}

HideValidation = function() {
	$('#ErrorMessageText').text('');
	$('#ErrorMessageBox').hide();
}





























