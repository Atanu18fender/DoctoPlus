<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Chameleon Admin is a modern Bootstrap 4 webapp &amp; admin dashboard html template with a large number of components, elegant design, clean and organized code.">
    <meta name="keywords" content="admin template, Chameleon admin template, dashboard template, gradient admin template, responsive admin template, webapp, eCommerce dashboard, analytic dashboard">
    <meta name="author" content="ThemeSelect">
    <title>Doctor Management Dashboard!!</title>
    <link rel="apple-touch-icon" href="theme-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="theme-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Muli:300,300i,400,400i,600,600i,700,700i%7CComfortaa:300,400,700" rel="stylesheet">
    <link href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css" rel="stylesheet">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="theme-assets/css/vendors.css">
    <link rel="stylesheet" type="text/css" href="theme-assets/vendors/css/charts/chartist.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN CHAMELEON  CSS-->
    <link rel="stylesheet" type="text/css" href="theme-assets/css/app-lite.css">
    <!-- END CHAMELEON  CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="theme-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="theme-assets/css/core/colors/palette-gradient.css">
    <link rel="stylesheet" type="text/css" href="theme-assets/css/pages/dashboard-ecommerce.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <!-- END Custom CSS-->
    
  <script>
      $(document).ready(function() {
         function disablePrev() { window.history.forward() }
         window.onload = disablePrev();
         window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
      });
   </script> 
   
  </head>
  
<body class="vertical-layout vertical-menu 2-columns fixed-navbar  menu-expanded pace-done" data-open="click" data-menu="vertical-menu" data-color="bg-chartbg" data-col="2-columns"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>

    <!-- fixed-top-->
 <%@ include file="upnav.jsp"%>

    <!-- ////////////////////////////////////////////////////////////////////////////-->
 <%@ include file="sidenav.jsp"%>


    <div class="app-content content">
      <div class="content-wrapper">
        <!-- <div class="content-wrapper-before"></div> -->
        <div class="content-header row">
        </div>
        <div class="content-body"><!-- Chart -->
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
<div class="row match-height">
    <div class="col-xl-4 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title" id="heading-multiple-thumbnails">Doctor Details</h4>
                    <a class="heading-elements-toggle">
                        <i class="la la-ellipsis-v font-medium-3"></i>
                    </a>
                    <div class="heading-elements">
                        <span class="avatar">
                            <img src="theme-assets/images/portrait/small/avatar-s-2.png" alt="avatar">
                        </span>
                        <span class="avatar">
                            <img src="theme-assets/images/portrait/small/avatar-s-3.png" alt="avatar">
                        </span>
                        <span class="avatar">
                            <img src="theme-assets/images/portrait/small/avatar-s-4.png" alt="avatar">
                        </span>
                    </div>
                </div>
                <div class="card-content">
                    <div class="card-body">
                        <h4 class="card-title">Content title</h4>
                        <p class="card-text">Jelly beans sugar plum cheesecake cookie oat cake soufflé.Tootsie roll bonbon liquorice tiramisu pie powder.Donut sweet
                            roll marzipan pastry cookie cake tootsie roll oat cake cookie.Jelly beans sugar plum cheesecake cookie oat cake soufflé. Tart lollipop carrot cake sugar plum. </p>
                        <p class="card-text">Sweet roll marzipan pastry halvah. Cake bear claw sweet. Tootsie roll pie marshmallow lollipop chupa chups donut fruitcake
                            cake.Jelly beans sugar plum cheesecake cookie oat cake soufflé. Tart lollipop carrot cake sugar plum. Marshmallow
                            wafer tiramisu jelly beans.</p>
                    </div>
                </div>
            </div>
    </div>
    <div class="col-xl-4 col-lg-12">
        <div class="card">
            <div class="card-content">
                <div class="card-body">
                    <h4 class="card-title">Nearest Chamber</h4>
                    <h6 class="card-subtitle text-muted">Carousel Card With Header &amp; Footer</h6>
                </div>
                <div id="carousel-area" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-area" data-slide-to="0" class=""></li>
                        <li data-target="#carousel-area" data-slide-to="1" class=""></li>
                        <li data-target="#carousel-area" data-slide-to="2" class="active"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item">
                            <img src="theme-assets/images/carousel/08.jpg" class="d-block w-100" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img src="theme-assets/images/carousel/03.jpg" class="d-block w-100" alt="Second slide">
                        </div>
                        <div class="carousel-item active">
                            <img src="theme-assets/images/carousel/01.jpg" class="d-block w-100" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel-area" role="button" data-slide="prev">
                            <span class="la la-angle-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                    <a class="carousel-control-next" href="#carousel-area" role="button" data-slide="next">
                            <span class="la la-angle-right icon-next" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                </div>
                <div class="card-body">
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a>
                </div>
            </div>
            <div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted">
                <span class="float-left">2 days ago</span>
                <span class="tags float-right">
                    <span class="badge badge-pill badge-primary">Branding</span>
                    <span class="badge badge-pill badge-danger">Design</span>
                </span>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Patient List</h4>
                <a class="heading-elements-toggle">
                    <i class="fa fa-ellipsis-v font-medium-3"></i>
                </a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li>
                            <a data-action="reload">
                                <i class="ft-rotate-cw"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="card-content">
                <div id="recent-buyers" class="media-list">
                    <a href="#" class="media border-0">
                        <div class="media-left pr-1">
                            <span class="avatar avatar-md avatar-online">
                                <img class="media-object rounded-circle" src="theme-assets/images/portrait/small/avatar-s-7.png" alt="Generic placeholder image">
                                <i></i>
                            </span>
                        </div>
                        <div class="media-body w-100">
                            <span class="list-group-item-heading">Kristopher Candy

                            </span>
                            <ul class="list-unstyled users-list m-0 float-right">
                                <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Product 1" class="avatar avatar-sm pull-up">
                                    <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius" src="theme-assets/images/portfolio/portfolio-1.jpg" alt="Avatar">
                                </li>
                                <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Product 2" class="avatar avatar-sm pull-up">
                                    <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius" src="theme-assets/images/portfolio/portfolio-2.jpg" alt="Avatar">
                                </li>
                                <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Product 3" class="avatar avatar-sm pull-up">
                                    <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius" src="theme-assets/images/portfolio/portfolio-4.jpg" alt="Avatar">
                                </li>
                            </ul>
                            <p class="list-group-item-text mb-0">
                                <span class="blue-grey lighten-2 font-small-3"> #INV-12332 </span>
                            </p>
                        </div>
                    </a>
                    <a href="#" class="media border-0">
                        <div class="media-left pr-1">
                            <span class="avatar avatar-md avatar-away">
                                <img class="media-object rounded-circle" src="theme-assets/images/portrait/small/avatar-s-8.png" alt="Generic placeholder image">
                                <i></i>
                            </span>
                        </div>
                        <div class="media-body w-100">
                            <span class="list-group-item-heading">Lawrence Fowler

                            </span>
                            <ul class="list-unstyled users-list m-0 float-right">
                                <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Product 1" class="avatar avatar-sm pull-up">
                                    <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius" src="theme-assets/images/portfolio/portfolio-5.jpg" alt="Avatar">
                                </li>
                                <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Product 2" class="avatar avatar-sm pull-up">
                                    <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius" src="theme-assets/images/portfolio/portfolio-6.jpg" alt="Avatar">
                                </li>
                            </ul>
                            <p class="list-group-item-text mb-0">
                                <span class="blue-grey lighten-2 font-small-3"> #INV-12333 </span>
                            </p>
                        </div>
                    </a>
                    <a href="#" class="media border-0">
                        <div class="media-left pr-1">
                            <span class="avatar avatar-md avatar-busy">
                                <img class="media-object rounded-circle" src="theme-assets/images/portrait/small/avatar-s-9.png" alt="Generic placeholder image">
                                <i></i>
                            </span>
                        </div>
                        <div class="media-body w-100">
                            <span class="list-group-item-heading">Linda Olson

                            </span>
                            <ul class="list-unstyled users-list m-0 float-right">
                                <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Product 1" class="avatar avatar-sm pull-up">
                                    <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius" src="theme-assets/images/portfolio/portfolio-2.jpg" alt="Avatar">
                                </li>
                                <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Product 2" class="avatar avatar-sm pull-up">
                                    <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius" src="theme-assets/images/portfolio/portfolio-5.jpg" alt="Avatar">
                                </li>
                            </ul>
                            <p class="list-group-item-text mb-0">
                                <span class="blue-grey lighten-2 font-small-3"> #INV-12334 </span>
                            </p>
                        </div>
                    </a>
                    <a href="#" class="media border-0">
                        <div class="media-left pr-1">
                            <span class="avatar avatar-md avatar-online">
                                <img class="media-object rounded-circle" src="theme-assets/images/portrait/small/avatar-s-10.png" alt="Generic placeholder image">
                                <i></i>
                            </span>
                        </div>
                        <div class="media-body w-100">
                            <span class="list-group-item-heading">Roy Clark

                            </span>
                            <ul class="list-unstyled users-list m-0 float-right">
                                <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Product 1" class="avatar avatar-sm pull-up">
                                    <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius" src="theme-assets/images/portfolio/portfolio-6.jpg" alt="Avatar">
                                </li>
                                <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Product 2" class="avatar avatar-sm pull-up">
                                    <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius" src="theme-assets/images/portfolio/portfolio-1.jpg" alt="Avatar">
                                </li>
                            </ul>
                            <p class="list-group-item-text mb-0">
                                <span class="blue-grey lighten-2 font-small-3"> #INV-12335 </span>
                            </p>
                        </div>
                    </a>
                    <a href="#" class="media border-0">
                        <div class="media-left pr-1">
                            <span class="avatar avatar-md avatar-online">
                                <img class="media-object rounded-circle" src="theme-assets/images/portrait/small/avatar-s-11.png" alt="Generic placeholder image">
                                <i></i>
                            </span>
                        </div>
                        <div class="media-body w-100">
                            <span class="list-group-item-heading">Kristopher Candy

                            </span>
                            <ul class="list-unstyled users-list m-0 float-right">
                                <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Product 1" class="avatar avatar-sm pull-up">
                                    <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius" src="theme-assets/images/portfolio/portfolio-5.jpg" alt="Avatar">
                                </li>
                            </ul>
                            <p class="list-group-item-text mb-0">
                                <span class="blue-grey lighten-2 font-small-3"> #INV-12336 </span>
                            </p>
                        </div>
                    </a>
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


<%@ include file="footer.jsp"%>

    <!-- BEGIN VENDOR JS-->
    <script src="theme-assets/vendors/js/vendors.min.js" type="text/javascript"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="theme-assets/vendors/js/charts/chartist.min.js" type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN CHAMELEON  JS-->
    <script src="theme-assets/js/core/app-menu-lite.js" type="text/javascript"></script>
    <script src="theme-assets/js/core/app-lite.js" type="text/javascript"></script>
    <!-- END CHAMELEON  JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="theme-assets/js/scripts/pages/dashboard-lite.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS-->
  
</body>