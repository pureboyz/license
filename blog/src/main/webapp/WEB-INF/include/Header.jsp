<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />

		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>Pureboyz Life Log</title>
	
		<%@include file="/WEB-INF/include/Included.jsp"%>
	    
	    <style>
	    	html {overflow-y:scroll;}
	    </style>
	  
	</head>
	
	<body>
		<!-- header -->
		<div id="navbar-full">
		
			<!-- navbar -->
			<div id="navbar">
	
				<!-- navigation -->
				<nav class="navbar navbar-ct-black navbar-transparent navbar-fixed-top" role="navigation">
<!-- 				<nav class="navbar navbar-ct-blue navbar-transparent navbar-fixed-top" role="navigation"> -->
					<div class="container">
					
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="/">Pureboyz Life Log </a>
						</div>
				
					    <!-- 상단 메뉴 -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						
							<!-- 상단 메뉴 왼쪽 -->
							<ul class="nav navbar-nav">
<!-- 								<li class="active"><a href="#">Link</a></li> -->
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">개발공부 <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="/Vue">Vue.js</a></li>
										<li><a href="/Raspberry">Raspberry Pi</a></li>
<!-- 										<li class="divider"></li> -->
<!-- 										<li><a href="#">Separated link</a></li> -->
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">자격증 문제풀기 <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="/License/EIC/Index">정보통신기사</a></li>
									</ul>
								</li>
							</ul>
							<!-- //상단 메뉴 왼쪽 -->
							
							<!-- 검색 -->
<!-- 							<ul class="nav navbar-nav navbar-right"> -->
<!-- 								<li><a href="javascript:void(0);" data-toggle="search" class="hidden-xs"><i class="fa fa-search"></i></a></li> -->
<!-- 							</ul> -->
<!-- 							<form class="navbar-form navbar-right navbar-search-form" role="search">                   -->
<!-- 								<div class="form-group"> -->
<!-- 									<input type="text" value="" onKeyDown="if(event.keyCode==13){event.preventDefault();console.log('123');}" class="form-control" placeholder="Search..."> -->
<!-- 								</div>  -->
<!-- 							</form> -->
							<!-- //검색 -->
							
							<!-- 상단 메뉴 오른쪽 -->
<!-- 							<ul class="nav navbar-nav navbar-right"> -->
<!-- 								<li><a href="#">Register</a></li> -->
<!-- 								<li><button class="btn btn-round btn-default">Sign in</button></li> -->
<!-- 							</ul> -->
							<!-- //상단 메뉴 오른쪽 -->
							
						</div>
						<!-- //상단 메뉴 -->
						
					</div>
				</nav>
				<!-- //navigation -->
			
				<div class="blurred-container">
				<div class="motto">
		            <br/><div>Let's always relax.</div>
		        </div>
					<div class="img-src" style="background-image: url('/assets/img/bg.jpg')"></div>
				</div>
				
			</div>
			<!-- navbar -->
	
		</div>
		<!-- header -->
		
