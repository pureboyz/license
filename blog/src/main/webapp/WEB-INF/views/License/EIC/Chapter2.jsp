<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
		<link rel="icon" type="image/png" href="assets/img/favicon.png">	
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>Pureboyz Life Log</title>
	
		<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	    <meta name="viewport" content="width=device-width" />
		
	    <link href="/bootstrap3/css/bootstrap.css?20190816_001" rel="stylesheet" />
	    <link href="/bootstrap3/css/font-awesome.css" rel="stylesheet" />
	    
		<link href="/assets/css/gsdk.css?20190815_002" rel="stylesheet" />   
	    <link href="/assets/css/demo.css?20190815_001" rel="stylesheet" /> 
	
	    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
	    
	    <script src="/jquery/jquery-1.10.2.js" type="text/javascript"></script>
		<script src="/assets/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
	
		<script src="/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
		<script src="/assets/js/gsdk-checkbox.js"></script>
		<script src="/assets/js/gsdk-radio.js"></script>
		<script src="/assets/js/gsdk-bootstrapswitch.js"></script>
		<script src="/assets/js/get-shit-done.js"></script>
		
	    <script src="/assets/js/custom.js"></script>
	    
	    <style>
	    	html { overflow-y:scroll; }
	    	.row { max-width:800px; height:75px; }
	    	.examples { max-width:800px; height:60px; }
	    	.pointer { cursor:pointer; }
	    	#scoring { color:#ff0000; }
	    </style>
	  
	</head>
	
	<body>
		<div class="main">
			<div class="container tim-container" style="max-width:800px; padding-top:100px">
			
				<!-- TEST 취소 버튼 -->
				<div class="text-right">
					<button class="btn btn-default btn-round" id="btnCancel">TEST 취소</button>
				</div>
				<!-- //TEST 취소 버튼 -->
				
				<!-- title -->
				<h2>디지털전자회로</h2>
				<!-- //title -->
				
				<hr/>
				<br/>
				
				<!-- 문제 -->
				<div class="container">
					<div class="container-fluid">
						<input type="hidden" id="answer" value="" />
						<span id="roading">문제를 불러오고 있습니다..</span>
						
						<!-- 문제 -->
						<div class="row">
							<div class="col-md-12">
								<span id="question"></span>
							</div>
						</div>
						<!-- //문제 -->
						
						<!-- 보기 -->
						<div class="row examples">
							<div class="col-md-12">
								<span class="pointer" id="example1"></span>
							</div>
						</div>
						<div class="row examples">
							<div class="col-md-12">
								<span class="pointer" id="example2"></span>
							</div>
						</div>
						<div class="row examples">
							<div class="col-md-12">
								<span class="pointer" id="example3"></span>
							</div>
						</div>
						<div class="row examples">
							<div class="col-md-12">
								<span class="pointer" id="example4"></span>
							</div>
						</div>
						<!-- //보기 -->
						
						<!-- 채점부분 -->
						<div class="row scoring">
							<div class="col-md-10">
								<span id="scoring"></span>
							</div>
							<div class="col-md-2">
								<button class="btn btn-primary btn-round" id="btnNext">다음문제</button>
							</div>
						</div>
						<!-- //채점부분 -->
					</div>
				</div>
				<!-- //문제 -->
				
			</div>
		</div>
		
		<!-- 테스트 종료 시 실행되는 form -->
		<form action="/License/EIC/Chapter2/TestComplete" method="POST" name="formComplete">
			<input type="hidden" name="subject" value="정보통신시스템" />
			<input type="hidden" name="score" value="" />
			<input type="hidden" name="questionNumber" value="" />
		</form>
		<!-- //테스트 종료 시 실행되는 form -->
		
	</body>
	
</html>

<%@include file="/WEB-INF/views/License/EIC/Chapter2_Script.jsp"%>