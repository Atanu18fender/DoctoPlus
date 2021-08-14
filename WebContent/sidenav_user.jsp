<div class="main-menu menu-fixed menu-light menu-accordion    menu-shadow " data-scroll-to-active="true" data-img="theme-assets/images/backgrounds/02.jpg">
      <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">       
          <li class="nav-item mr-auto"><a class="navbar-brand" href="dashboard_user.jsp"><img class="brand-logo" alt="Chameleon admin logo" src="theme-assets/images/logo/logo.png">
              <h3 class="brand-text">Docto +</h3></a></li>
          <li class="nav-item d-md-none"><a class="nav-link close-navbar"><i class="ft-x"></i></a></li>
        </ul>
      </div>
      <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
          <li class="active"><a href="Appointments_user.jsp?ID=<%=request.getAttribute("ID") == null ? ID : request.getAttribute("ID")%>"><i class="la la-calendar-plus-o"></i><span class="menu-title" data-i18n="">Appointments</span></a>
          </li>
          <li class="nav-item"><a href="Subscription_user.jsp?ID=<%=request.getAttribute("ID") == null ? ID : request.getAttribute("ID")%>"><i class="la la-inr"></i><span class="menu-title" data-i18n="">My Subscription</span></a>
          </li>
          <li class="nav-item"><a href="History_user.jsp?ID=<%=request.getAttribute("ID") == null ? ID : request.getAttribute("ID")%>"><i class="la la-header"></i><span class="menu-title" data-i18n="">History</span></a>
 <!--          </li>
          <li class="nav-item"><a href="UserDetails.jsp"><i class="la la-user"></i><span class="menu-title" data-i18n=""></span></a>
          </li> -->
        </ul>
      </div>
      <div class="navigation-background" style="background-image: url(&quot;theme-assets/images/backgrounds/02.jpg&quot;);"></div>
    </div>