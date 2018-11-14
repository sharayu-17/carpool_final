<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body class="c-layout-header-fixed">
    <div id="fb-root"></div>

<!-- BEGIN: LAYOUT/HEADERS/HEADER-1 --> 
<!-- BEGIN: HEADER -->
<header class="c-layout-header c-layout-header-3 c-layout-header-default-mobile">
<div class="c-navbar">
	<div class="container">
		<!-- BEGIN: BRAND -->
		<div class="c-navbar-wrapper clearfix">
			<div class="c-brand c-pull-left">
                            <a href="/" class="c-logo"> 
                                                                   
                                    <img src="/assets/base/img/layout/logos/logo_1.png" alt="CoYatri" class="c-desktop-logo">
                                    
				</a>
				<button class="c-hor-nav-toggler" type="button" data-target=".c-mega-menu"> <i class="fa fa-bars"></i></button>
			</div>
			<!-- END: BRAND -->
			<!-- BEGIN: HOR NAV -->
			<!-- BEGIN: LAYOUT/HEADERS/MEGA-MENU -->
			<!-- BEGIN: MEGA MENU -->
			<nav class="c-mega-menu c-pull-right c-mega-menu-dark c-mega-menu-dark-mobile c-fonts-uppercase c-fonts-bold">
			<!-- BEGIN: MEGA MENU -->
			<ul class="nav navbar-nav c-theme-nav">
				<li class="c-menu-type-classic"><a href="/find-rides" class="c-link ">Find Rides</a></li>
				<li class="c-menu-type-classic"><a href="/offer-ride" class="c-link">Offer Ride</a></li>
				<li class="c-menu-type-classic"><a href="/waiting-list" class="c-link">Waiting List</a></li>
				
				<li class="c-menu-type-classic">
					<a href="javascript:;" data-toggle="modal" data-target="#login-form" class="c-btn-border-opacity-04 c-btn btn-no-focus c-btn-header btn btn-sm c-btn-border-1x c-btn-white c-btn-circle c-btn-uppercase c-btn-sbold"><!-- <i class="icon-user"></i> --> Sign In</a>
				</li>
				
				<li class="c-quick-sidebar-toggler-wrapper">
					<a href="#" title="Provide Feedback" data-bind="click: footer.feedbackVM.feedbackShow" class="c-quick-sidebar-toggler">
						<span class="fa fa-paper-plane"></span>
					</a>
				</li>
                                <li class="c-menu-type-classic" data-bind="visible:footer.subscribeVM.profileIncompleteAlert()" style="display: none">
					<a href="account-info" title="Your Email/Mobile is not verified" class="c-link">
                                            <img src="img/warning-icon.gif" height="25px" />
					</a>
				</li>
			</ul>
			<!-- END MEGA MENU -->
			</nav>
			<!-- END: MEGA MENU -->
			<!-- END: LAYOUT/HEADERS/MEGA-MENU -->
			<!-- END: HOR NAV -->
		</div>
	</div>
</div>
</header>
<!-- END: HEADER --> 
<!-- END: LAYOUT/HEADERS/HEADER-1 --> 

</body>
</html>