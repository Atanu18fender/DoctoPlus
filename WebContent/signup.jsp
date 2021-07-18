<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script
	src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css'>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='assets/login/js/SignUp.js'></script>
<link rel="stylesheet" type="text/css" href="assets/login/css/login.css" />
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<form action="SignUp" method="post" class="box"
						onsubmit="return ValidateForm()">
						<h1>SignUp</h1>
						<div id="ErrorMessageBox" style="display: none;">
							<span id="ErrorMessageText">Please Provide UserName and
								Password</span> <i class="ti ti-close"
								style="float: right; margin-right: -29px; cursor: pointer;"
								id="CloseErr"></i>
						</div>
						<input type="text" name="txtNewUserName" id="txtNewUserName"
							placeholder="Username" autocomplete="off"> <input
							type="password" name="txtNewPassword" id="txtNewPassword"
							placeholder="Password" autocomplete="off"> <input
							type="password" name="txtConfirmPassword" id="txtConfirmPassword"
							placeholder="Confirm Password" autocomplete="off"> <a
							class="forgot text-muted" href="login.jsp">Existing User</a> <input
							type="submit" name="btnSignup" id="btnSignup" value="SignUp" />
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>