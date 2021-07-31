<%@ page import="java.net.URLDecoder"%>
<%
Cookie[] theCookies = request.getCookies();
String details = "",name="",ID="";
if (theCookies != null) {
	for (Cookie tempCookie : theCookies) {
		if ("userdetails".equals(tempCookie.getName())) {
	// decode cookie data ... handle case of languages with spaces in them
	details = URLDecoder.decode(tempCookie.getValue(), "UTF-8");
	String arr[]=details.split("_");
	name=arr[0];
	ID=arr[1];
	break;
		}
	}
}
%>

<nav
	class="header-navbar navbar-expand-md navbar navbar-with-menu navbar-without-dd-arrow fixed-top navbar-semi-light">
	<div class="navbar-wrapper">
		<div class="navbar-container content">
			<div class="collapse navbar-collapse show" id="navbar-mobile">
				<ul class="nav navbar-nav mr-auto float-left">
					<li class="nav-item d-block d-md-none"><a
						class="nav-link nav-menu-main menu-toggle hidden-xs is-active"
						href="#"><i class="ft-menu"></i></a></li>
					<li class="nav-item d-none d-md-block">
						<!-- <a class="nav-link nav-link-expand" href="#"><i class="ficon ft-maximize"></i></a> -->
					</li>
					<li class="nav-item dropdown navbar-search"><a
						class="nav-link dropdown-toggle hide" data-toggle="dropdown"
						href="#"><i class="ficon ft-search"></i></a>
						<ul class="dropdown-menu">
							<li class="arrow_box">
								<form>
									<div class="input-group search-box">
										<div class="position-relative has-icon-right full-width">
											<input class="form-control" id="search" type="text"
												placeholder="Search here...">
											<div class="form-control-position navbar-search-close">
												<i class="ft-x"> </i>
											</div>
										</div>
									</div>
								</form>
							</li>
						</ul></li>
				</ul>
				
				<%
				if (session.getAttribute("doctorName") == null) {
					request.setAttribute("errMessage", "You have to login");
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
					requestDispatcher.forward(request, response);
				}
				%>
				
				<ul class="nav navbar-nav float-right">
					<li class="dropdown dropdown-notification nav-item"><a
						class="nav-link nav-link-label" href="#" data-toggle="dropdown"><i
							class="ficon ft-mail"> </i></a>
						<div class="dropdown-menu dropdown-menu-right">
							<div class="arrow_box_right">
								<a class="dropdown-item" href="#"><i class="ft-book"></i>
									Read Mail</a><a class="dropdown-item" href="#"><i
									class="ft-bookmark"></i> Read Later</a><a class="dropdown-item"
									href="#"><i class="ft-check-square"></i> Mark all Read </a>
							</div>
						</div></li>
					<li class="dropdown dropdown-user nav-item"><a
						class="dropdown-toggle nav-link dropdown-user-link" href="#"
						data-toggle="dropdown" aria-expanded="false"> <span
							class="avatar avatar-online"><img
								src="theme-assets/images/portrait/small/photo1.jpg"
								alt="avatar"><i></i></span></a>
						<div class="dropdown-menu dropdown-menu-right">
							<div class="arrow_box_right">
								<a class="dropdown-item" href="#"><span
									class="avatar avatar-online"><img
										src="theme-assets/images/portrait/small/photo1.jpg"
										alt="avatar"> <span class="user-name text-bold-700 ml-1"><%=session.getAttribute("doctorName")==null?name:session.getAttribute("doctorName")%></span>
								</span></a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="DoctorProfile.jsp?ID=<%=request.getAttribute("ID")==null?ID:request.getAttribute("ID")%>"><i class="ft-user"></i>
									My Profile</a><a class="dropdown-item" href="#"><i
									class="ft-mail"></i> My Inbox</a><a class="dropdown-item" href="#"><i
									class="ft-check-square"></i> Task</a><a class="dropdown-item"
									href="#"><i class="ft-message-square"></i> Chats</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item"
									href="<%=request.getContextPath()%>/LogoutServlet1"><i
									class="ft-power"></i> Logout</a>
								<%-- <a href="<%=request.getContextPath()%>/LogoutServlet1"
								class="dropdown-item text-white font-20 tooltip-wrapper"
								data-toggle="tooltip" data-placement="top"
								data-original-title="Logout"><i class="zmdi zmdi-power"></i>Logout</a> --%>
							</div>
						</div></li>
				</ul>
			</div>
		</div>
	</div>
</nav>