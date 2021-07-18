<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mvc.util1.DBConnection1"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="description"
	content="Chameleon Admin is a modern Bootstrap 4 webapp &amp; admin dashboard html template with a large number of components, elegant design, clean and organized code.">
<meta name="keywords"
	content="admin template, Chameleon admin template, dashboard template, gradient admin template, responsive admin template, webapp, eCommerce dashboard, analytic dashboard">
<meta name="author" content="ThemeSelect">
<title>Doctor Management Dashboard!!</title>
<link rel="apple-touch-icon"
	href="theme-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="theme-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,300i,400,400i,600,600i,700,700i%7CComfortaa:300,400,700"
	rel="stylesheet">
<link
	href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css"
	rel="stylesheet">
<!-- BEGIN VENDOR CSS-->
<link rel="stylesheet" type="text/css"
	href="theme-assets/css/vendors.css">
<link rel="stylesheet" type="text/css"
	href="theme-assets/vendors/css/charts/chartist.css">
<!-- END VENDOR CSS-->
<!-- BEGIN CHAMELEON  CSS-->
<link rel="stylesheet" type="text/css"
	href="theme-assets/css/app-lite.css">
<!-- END CHAMELEON  CSS-->
<!-- BEGIN Page Level CSS-->
<link rel="stylesheet" type="text/css"
	href="theme-assets/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css"
	href="theme-assets/css/core/colors/palette-gradient.css">
<link rel="stylesheet" type="text/css"
	href="theme-assets/css/pages/dashboard-ecommerce.css">
<!-- END Page Level CSS-->
<!-- BEGIN Custom CSS-->
<!-- END Custom CSS-->
<script language="javascript">
function myFunction(id){
    var doIt=confirm('Do you want to delete the record?');
  if(doIt){
   var f=document.form1;
    f.method="post";
    f.action='DeleteStream?id='+id;
    f.submit();
    }
  else{
    }
}
</script>
</head>

<body
	class="vertical-layout vertical-menu 2-columns fixed-navbar  menu-expanded pace-done"
	data-open="click" data-menu="vertical-menu" data-color="bg-chartbg"
	data-col="2-columns">
	<div class="pace  pace-inactive">
		<div class="pace-progress" data-progress-text="100%"
			data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
			<div class="pace-progress-inner"></div>
		</div>
		<div class="pace-activity"></div>
	</div>

	<!-- fixed-top-->
	<%@ include file="upnav.jsp"%>

	<!-- ////////////////////////////////////////////////////////////////////////////-->
	<%@ include file="sidenav.jsp"%>


	<div class="app-content content">
		<div class="content-wrapper">
			<!-- <div class="content-wrapper-before"></div> -->
			<div class="content-header row"></div>
			<div class="content-body">
				<!-- Chart -->
				<div class="row match-height">
					<div class="col-12">
						<!--         <div class="">
            <div id="gradient-line-chart1" class="height-250 GradientlineShadow1"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line y1="215" y2="215" x1="50" x2="983.40625" class="ct-grid ct-vertical"></line><line y1="165" y2="165" x1="50" x2="983.40625" class="ct-grid ct-vertical"></line><line y1="115" y2="115" x1="50" x2="983.40625" class="ct-grid ct-vertical"></line><line y1="65" y2="65" x1="50" x2="983.40625" class="ct-grid ct-vertical"></line><line y1="15" y2="15" x1="50" x2="983.40625" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M50,190C127.784,190,127.784,115,205.568,115C283.352,115,283.352,190,361.135,190C438.919,190,438.919,90,516.703,90C594.487,90,594.487,140,672.271,140C750.055,140,750.055,40,827.839,40C905.622,40,905.622,95,983.406,95" class="ct-line"></path><circle cx="50" cy="190" ct:value="190" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="205.56770833333334" cy="115" ct:value="115" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="361.1354166666667" cy="190" ct:value="190" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="516.703125" cy="90" ct:value="90" r="10" class="ct-point ct-point-circle"></circle><circle cx="672.2708333333334" cy="140" ct:value="140" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="827.8385416666667" cy="40" ct:value="40" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="983.40625" cy="95" ct:value="95" r="10" class="ct-point ct-point-circle-transperent"></circle></g><g class="ct-series ct-series-b"><path d="M50,140C127.784,140,127.784,40,205.568,40C283.352,40,283.352,150,361.135,150C438.919,150,438.919,35,516.703,35C594.487,35,594.487,195,672.271,195C750.055,195,750.055,89,827.839,89C905.622,89,905.622,165,983.406,165" class="ct-line"></path><circle cx="50" cy="140" ct:value="140" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="205.56770833333334" cy="40" ct:value="40" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="361.1354166666667" cy="150" ct:value="150" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="516.703125" cy="35" ct:value="35" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="672.2708333333334" cy="195" ct:value="195" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="827.8385416666667" cy="89" ct:value="89" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="983.40625" cy="165" ct:value="165" r="10" class="ct-point ct-point-circle-transperent"></circle></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="50" y="220" width="155.56770833333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Mon</span></foreignObject><foreignObject style="overflow: visible;" x="205.56770833333334" y="220" width="155.56770833333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Tue</span></foreignObject><foreignObject style="overflow: visible;" x="361.1354166666667" y="220" width="155.56770833333331" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Wed</span></foreignObject><foreignObject style="overflow: visible;" x="516.703125" y="220" width="155.56770833333337" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Thu</span></foreignObject><foreignObject style="overflow: visible;" x="672.2708333333334" y="220" width="155.56770833333337" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Fri</span></foreignObject><foreignObject style="overflow: visible;" x="827.8385416666667" y="220" width="155.56770833333326" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Sat</span></foreignObject><foreignObject style="overflow: visible;" x="983.40625" y="220" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">Sun</span></foreignObject><foreignObject style="overflow: visible;" y="165" x="10" height="50" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 50px; width: 30px;">100</span></foreignObject><foreignObject style="overflow: visible;" y="115" x="10" height="50" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 50px; width: 30px;">150</span></foreignObject><foreignObject style="overflow: visible;" y="65" x="10" height="50" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 50px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="15" x="10" height="50" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 50px; width: 30px;">250</span></foreignObject><foreignObject style="overflow: visible;" y="-15" x="10" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">300</span></foreignObject></g><defs><linearGradient id="lineLinear1" x1="0" y1="0" x2="1" y2="0"><stop offset="0%" stop-color="rgba(168,120,244,0.1)"></stop><stop offset="10%" stop-color="rgba(168,120,244,1)"></stop><stop offset="80%" stop-color="rgba(255,108,147, 1)"></stop><stop offset="98%" stop-color="rgba(255,108,147, 0.1)"></stop></linearGradient><linearGradient id="lineLinear2" x1="0" y1="0" x2="1" y2="0"><stop offset="0%" stop-color="rgba(0,230,175,0.1)"></stop><stop offset="10%" stop-color="rgba(0,230,175,1)"></stop><stop offset="80%" stop-color="rgba(255,161,69, 1)"></stop><stop offset="98%" stop-color="rgba(255,161,69, 0.1)"></stop></linearGradient></defs></svg></div>
        </div> -->
					</div>
				</div>
				<!-- Chart -->
				<!-- eCommerce statistic -->
				<!-- <div class="row">
    <div class="col-xl-4 col-lg-6 col-md-12">
        <div class="card pull-up ecom-card-1 bg-white">
            <div class="card-content ecom-card2 height-180">
                <h5 class="text-muted danger position-absolute p-1">Progress Stats</h5>
                <div>
                    <i class="ft-pie-chart danger font-large-1 float-right p-1"></i>
                </div>
                <div class="progress-stats-container ct-golden-section height-75 position-relative pt-3  ">
                    <div id="progress-stats-bar-chart"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-bar" style="width: 100%; height: 100%;"><g class="ct-grids"></g><g><g class="ct-series ct-series-a"><line x1="30.556919642857142" x2="30.556919642857142" y1="115" y2="25" class="ct-bar" ct:value="18" style="stroke-width: 25px"></line><line x1="71.67075892857143" x2="71.67075892857143" y1="115" y2="15" class="ct-bar" ct:value="20" style="stroke-width: 25px"></line><line x1="112.78459821428571" x2="112.78459821428571" y1="115" y2="45" class="ct-bar" ct:value="14" style="stroke-width: 25px"></line><line x1="153.8984375" x2="153.8984375" y1="115" y2="25" class="ct-bar" ct:value="18" style="stroke-width: 25px"></line><line x1="195.01227678571428" x2="195.01227678571428" y1="115" y2="15" class="ct-bar" ct:value="20" style="stroke-width: 25px"></line><line x1="236.12611607142856" x2="236.12611607142856" y1="115" y2="40" class="ct-bar" ct:value="15" style="stroke-width: 25px"></line><line x1="277.2399553571429" x2="277.2399553571429" y1="115" y2="25" class="ct-bar" ct:value="18" style="stroke-width: 25px"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="10" y="120" width="41.113839285714285" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Mon</span></foreignObject><foreignObject style="overflow: visible;" x="51.113839285714285" y="120" width="41.113839285714285" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Tue</span></foreignObject><foreignObject style="overflow: visible;" x="92.22767857142857" y="120" width="41.11383928571429" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Wex</span></foreignObject><foreignObject style="overflow: visible;" x="133.34151785714286" y="120" width="41.11383928571428" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Thu</span></foreignObject><foreignObject style="overflow: visible;" x="174.45535714285714" y="120" width="41.11383928571428" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Fri</span></foreignObject><foreignObject style="overflow: visible;" x="215.56919642857142" y="120" width="41.113839285714306" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Sat</span></foreignObject><foreignObject style="overflow: visible;" x="256.6830357142857" y="120" width="41.11383928571428" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Sun</span></foreignObject></g></svg></div>
                    <div id="progress-stats-line-chart" class="progress-stats-shadow"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"></g><g><g class="ct-series ct-series-a"><path d="M10,65C38.78,65,38.78,40,67.559,40C96.339,40,96.339,80,125.119,80C153.898,80,153.898,55,182.678,55C211.458,55,211.458,100,240.238,100C269.017,100,269.017,35,297.797,35" class="ct-line"></path><circle cx="10" cy="65" ct:value="65" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="67.559375" cy="40" ct:value="40" r="5" class="ct-point ct-point-circle"></circle><circle cx="125.11875" cy="80" ct:value="80" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="182.67812500000002" cy="55" ct:value="55" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="240.2375" cy="100" ct:value="100" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="297.796875" cy="35" ct:value="35" r="5" class="ct-point ct-point-circle-transperent"></circle></g></g><g class="ct-labels"></g><defs><linearGradient id="lineLinearStats" x1="0" y1="0" x2="1" y2="0"><stop offset="0%" stop-color="rgba(252,98,107,0.1)"></stop><stop offset="10%" stop-color="rgba(252,98,107,1)"></stop><stop offset="80%" stop-color="rgba(252,98,107, 1)"></stop><stop offset="98%" stop-color="rgba(252,98,107, 0.1)"></stop></linearGradient></defs></svg></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-lg-6 col-md-12">
        <div class="card pull-up ecom-card-1 bg-white">
            <div class="card-content ecom-card2 height-180">
                <h5 class="text-muted info position-absolute p-1">Activity Stats</h5>
                <div>
                    <i class="ft-activity info font-large-1 float-right p-1"></i>
                </div>
                <div class="progress-stats-container ct-golden-section height-75 position-relative pt-3">
                    <div id="progress-stats-bar-chart1"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-bar" style="width: 100%; height: 100%;"><g class="ct-grids"></g><g><g class="ct-series ct-series-a"><line x1="30.556919642857142" x2="30.556919642857142" y1="115" y2="15" class="ct-bar" ct:value="20" style="stroke-width: 25px"></line><line x1="71.67075892857143" x2="71.67075892857143" y1="115" y2="30" class="ct-bar" ct:value="17" style="stroke-width: 25px"></line><line x1="112.78459821428571" x2="112.78459821428571" y1="115" y2="45" class="ct-bar" ct:value="14" style="stroke-width: 25px"></line><line x1="153.8984375" x2="153.8984375" y1="115" y2="25" class="ct-bar" ct:value="18" style="stroke-width: 25px"></line><line x1="195.01227678571428" x2="195.01227678571428" y1="115" y2="15" class="ct-bar" ct:value="20" style="stroke-width: 25px"></line><line x1="236.12611607142856" x2="236.12611607142856" y1="115" y2="40" class="ct-bar" ct:value="15" style="stroke-width: 25px"></line><line x1="277.2399553571429" x2="277.2399553571429" y1="115" y2="25" class="ct-bar" ct:value="18" style="stroke-width: 25px"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="10" y="120" width="41.113839285714285" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Mon</span></foreignObject><foreignObject style="overflow: visible;" x="51.113839285714285" y="120" width="41.113839285714285" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Tue</span></foreignObject><foreignObject style="overflow: visible;" x="92.22767857142857" y="120" width="41.11383928571429" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Wex</span></foreignObject><foreignObject style="overflow: visible;" x="133.34151785714286" y="120" width="41.11383928571428" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Thu</span></foreignObject><foreignObject style="overflow: visible;" x="174.45535714285714" y="120" width="41.11383928571428" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Fri</span></foreignObject><foreignObject style="overflow: visible;" x="215.56919642857142" y="120" width="41.113839285714306" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Sat</span></foreignObject><foreignObject style="overflow: visible;" x="256.6830357142857" y="120" width="41.11383928571428" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Sun</span></foreignObject></g></svg></div>
                    <div id="progress-stats-line-chart1" class="progress-stats-shadow"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"></g><g><g class="ct-series ct-series-a"><path d="M10,100C38.78,100,38.78,55,67.559,55C96.339,55,96.339,80,125.119,80C153.898,80,153.898,40,182.678,40C211.458,40,211.458,80,240.238,80C269.017,80,269.017,50,297.797,50" class="ct-line"></path><circle cx="10" cy="100" ct:value="100" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="67.559375" cy="55" ct:value="55" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="125.11875" cy="80" ct:value="80" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="182.67812500000002" cy="40" ct:value="40" r="5" class="ct-point ct-point-circle"></circle><circle cx="240.2375" cy="80" ct:value="80" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="297.796875" cy="50" ct:value="50" r="5" class="ct-point ct-point-circle-transperent"></circle></g></g><g class="ct-labels"></g><defs><linearGradient id="lineLinearStats1" x1="0" y1="0" x2="1" y2="0"><stop offset="0%" stop-color="rgba(40,175,208,0.1)"></stop><stop offset="10%" stop-color="rgba(40,175,208,1)"></stop><stop offset="80%" stop-color="rgba(40,175,208, 1)"></stop><stop offset="98%" stop-color="rgba(40,175,208, 0.1)"></stop></linearGradient></defs></svg></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-lg-12">
        <div class="card pull-up ecom-card-1 bg-white">
            <div class="card-content ecom-card2 height-180">
                <h5 class="text-muted warning position-absolute p-1">Sales Stats</h5>
                <div>
                    <i class="ft-shopping-cart warning font-large-1 float-right p-1"></i>
                </div>
                <div class="progress-stats-container ct-golden-section height-75 position-relative pt-3">
                    <div id="progress-stats-bar-chart2"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-bar" style="width: 100%; height: 100%;"><g class="ct-grids"></g><g><g class="ct-series ct-series-a"><line x1="30.556919642857142" x2="30.556919642857142" y1="115" y2="15" class="ct-bar" ct:value="20" style="stroke-width: 25px"></line><line x1="71.67075892857143" x2="71.67075892857143" y1="115" y2="30" class="ct-bar" ct:value="17" style="stroke-width: 25px"></line><line x1="112.78459821428571" x2="112.78459821428571" y1="115" y2="45" class="ct-bar" ct:value="14" style="stroke-width: 25px"></line><line x1="153.8984375" x2="153.8984375" y1="115" y2="25" class="ct-bar" ct:value="18" style="stroke-width: 25px"></line><line x1="195.01227678571428" x2="195.01227678571428" y1="115" y2="40" class="ct-bar" ct:value="15" style="stroke-width: 25px"></line><line x1="236.12611607142856" x2="236.12611607142856" y1="115" y2="15" class="ct-bar" ct:value="20" style="stroke-width: 25px"></line><line x1="277.2399553571429" x2="277.2399553571429" y1="115" y2="25" class="ct-bar" ct:value="18" style="stroke-width: 25px"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="10" y="120" width="41.113839285714285" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Mon</span></foreignObject><foreignObject style="overflow: visible;" x="51.113839285714285" y="120" width="41.113839285714285" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Tue</span></foreignObject><foreignObject style="overflow: visible;" x="92.22767857142857" y="120" width="41.11383928571429" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Wex</span></foreignObject><foreignObject style="overflow: visible;" x="133.34151785714286" y="120" width="41.11383928571428" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Thu</span></foreignObject><foreignObject style="overflow: visible;" x="174.45535714285714" y="120" width="41.11383928571428" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Fri</span></foreignObject><foreignObject style="overflow: visible;" x="215.56919642857142" y="120" width="41.113839285714306" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Sat</span></foreignObject><foreignObject style="overflow: visible;" x="256.6830357142857" y="120" width="41.11383928571428" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 41px; height: 20px;">Sun</span></foreignObject></g></svg></div>
                    <div id="progress-stats-line-chart2" class="progress-stats-shadow"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"></g><g><g class="ct-series ct-series-a"><path d="M10,35C38.78,35,38.78,100,67.559,100C96.339,100,96.339,65,125.119,65C153.898,65,153.898,90,182.678,90C211.458,90,211.458,40,240.238,40C269.017,40,269.017,65,297.797,65" class="ct-line"></path><circle cx="10" cy="35" ct:value="35" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="67.559375" cy="100" ct:value="100" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="125.11875" cy="65" ct:value="65" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="182.67812500000002" cy="90" ct:value="90" r="5" class="ct-point ct-point-circle-transperent"></circle><circle cx="240.2375" cy="40" ct:value="40" r="5" class="ct-point ct-point-circle"></circle><circle cx="297.796875" cy="65" ct:value="65" r="5" class="ct-point ct-point-circle-transperent"></circle></g></g><g class="ct-labels"></g><defs><linearGradient id="lineLinearStats2" x1="0" y1="0" x2="1" y2="0"><stop offset="0%" stop-color="rgba(253,185,1,0.1)"></stop><stop offset="10%" stop-color="rgba(253,185,1,1)"></stop><stop offset="80%" stop-color="rgba(253,185,1, 1)"></stop><stop offset="98%" stop-color="rgba(253,185,1, 0.1)"></stop></linearGradient></defs></svg></div>
                </div>
            </div>
        </div>
    </div>
</div> -->
				<!--/ eCommerce statistic -->



				<!-- Statistics -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h1 class="card-title">Available Doctors</h1>
								<a class="heading-elements-toggle"><i
									class="la la-ellipsis-v font-medium-3"></i></a>
								<div class="heading-elements">
									<ul class="list-inline mb-0">
										<li><a data-action="collapse"><i class="ft-minus"></i></a></li>
										<li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
										<li><a data-action="expand"><i class="ft-maximize"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="card-content collapse show">
								<div class="card-body">
									<p>
										
									</p>
								</div>
								<div class="table-responsive">
									<table class="table">
										<thead class="thead-dark">
											<tr>
												<th scope="col">Doctor Name</th>
												<th scope="col">Registration No</th>
												<th scope="col">Speciality</th>
												<th scope="col">Phone Number</th>
											    <th scope="col"></th>
											</tr>
										</thead>
										<tbody>
											<%
													DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
													String mysqlUrl1 = "jdbc:sqlserver://127.0.0.1;databaseName=DoctorManagementDB";
													try {
														Connection con = DriverManager.getConnection(mysqlUrl1, "sa", "Sysadm123");
														System.out.println("Connection established......");
														Statement stmt = con.createStatement();
														//Retrieving data
														ResultSet rs1 = stmt.executeQuery("EXECUTE [dbo].[SP_DM_ViewDoc]");
														while (rs1.next()) {
													%>
											<tr>
												<td>Dr.&nbsp;<%=rs1.getString("FirstName")%>&nbsp;<%=rs1.getString("LastName")%></td>
												<td><%=rs1.getString("RegNo")%></td>
												<td><%=rs1.getString("Speciality")%></td>
												<td><%=rs1.getString("Phone")%></td>
												<td>lol</td>
											</tr>
											<%
											}
											} catch (SQLException e) {
											e.printStackTrace();
											}
											%>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--/ Statistics -->
			</div>
		</div>
	</div>
	<!-- ////////////////////////////////////////////////////////////////////////////-->


	<%-- <%@ include file="footer.jsp"%> --%>

	<!-- BEGIN VENDOR JS-->
	<script src="theme-assets/vendors/js/vendors.min.js"
		type="text/javascript"></script>
	<!-- BEGIN VENDOR JS-->
	<!-- BEGIN PAGE VENDOR JS-->
	<script src="theme-assets/vendors/js/charts/chartist.min.js"
		type="text/javascript"></script>
	<!-- END PAGE VENDOR JS-->
	<!-- BEGIN CHAMELEON  JS-->
	<script src="theme-assets/js/core/app-menu-lite.js"
		type="text/javascript"></script>
	<script src="theme-assets/js/core/app-lite.js" type="text/javascript"></script>
	<!-- END CHAMELEON  JS-->
	<!-- BEGIN PAGE LEVEL JS-->
	<script src="theme-assets/js/scripts/pages/dashboard-lite.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL JS-->

</body>