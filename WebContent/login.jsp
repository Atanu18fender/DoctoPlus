<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta Http-Equiv="Cache-Control" Content="no-cache">
<meta Http-Equiv="Pragma" Content="no-cache">
<meta Http-Equiv="Expires" Content="0">

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
<script src='assets/login/js/Login.js'></script>
<link rel="stylesheet" type="text/css" href="assets/login/css/login.css" />

<script type="text/javascript">
$().ready(function() {
    if(document.referrer != 'http://localhost:8181/'){ 
        history.pushState(null, null, 'login.jsp');
        window.addEventListener('popstate', function () {
            history.pushState(null, null, 'login.jsp');
        });
    }
});
</script>


</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<form action="SignIn" method="post" class="box" autocomplete="off"
						onsubmit="return ValidatePopup()">
						<h1>Login</h1>
						<!-- 						<p class="text-muted" id="ErrorMessageBox">Please enter your
							login and password!</p> -->
						<div id="ErrorMessageBox" style="display: none;">
							<span id="ErrorMessageText">Please Provide UserName and
								Password</span> <i class="ti ti-close"
								style="float: right; margin-right: -29px; cursor: pointer;"
								id="CloseErr"></i>
						</div>

						<input type="text" name="txtUserName" id="txtUserName"
							placeholder="Username" autocomplete="false"><input
							type="password" name="txtPassWord" id="txtPassWord"
							placeholder="Password" autocomplete="false">
							<p style="color:white;">New User?<%="  " %><a
							class="forgot text-muted" href="signup.jsp">Sign Up</a></p>
							 <input
							type="submit" name="btnLogin" id="btnLogin" value="Login" />
						<div class="col-md-12"></div>
					</form>
				</div>
			</div>
		</div>
	</div>
<script>
	function f (Message) {
	 $('#ErrorMessageText').text(Message+' !!!');
	 $('#ErrorMessageBox').css("color","red");

	 $("#ErrorMessageBox").show().delay(3000).fadeOut();
	 } 
	var err = '${errMessage}'; 
	if (err != '') {
		f(err);
	}
</script>
<script type="text/javascript">
$().ready(function() {
    if(document.referrer != 'http://localhost:8181/'){ 
        history.pushState(null, null, 'login.jsp');
        window.addEventListener('popstate', function () {
            history.pushState(null, null, 'login.jsp');
        });
    }
});
</script>

</body>
</html>