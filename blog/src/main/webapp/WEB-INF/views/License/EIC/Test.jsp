<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>Pureboyz Life Log</title>
		
		<link rel="apple-touch-icon" sizes="76x76" href="/assets/img/apple-icon.png">
		<link rel="icon" type="image/png" href="/assets/img/favicon.png">
		
		<%@include file="/WEB-INF/include/Included.jsp"%>
	    
	    <style>
	    	html { overflow-y:scroll; }
	    	.question { max-width:800px; min-height:75px; }
	    	.examples { max-width:800px; min-height:60px; }
	    	.pointer { cursor:pointer; }
	    	#scoring { color:#ff0000; }
	    	.no-drag { -ms-user-select: none; -moz-user-select: -moz-none; -webkit-user-select: none; -khtml-user-select: none; user-select:none; }
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
				<h2></h2>
				<!-- //title -->
				
				<hr/>
				<br/>
				
				<!-- 문제 -->
				<div class="container no-drag">
					<div class="container-fluid">
						<input type="hidden" id="answer" value="" />
						<span id="roading">문제를 불러오고 있습니다..</span>
						
						<!-- 문제 -->
						<div class="row question">
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
						<div class="row scoring" style="max-width:800px;">
							<div class="col-md-6">
								<span id="scoring"></span>
							</div>
							<div class="col-md-6" style="text-align:right;">
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
		<form action="/License/EIC/Test/TestComplete" method="POST" name="formComplete">
			<input type="hidden" name="subject" value="" />
			<input type="hidden" name="score" value="" />
			<input type="hidden" name="questionNumber" value="" />
		</form>
		<!-- //테스트 종료 시 실행되는 form -->
		
		<!-- Modal 실행 버튼 -->
		<input type="button" class="btn btn-primary" id="btnModal" data-toggle="modal" style="display:none;" data-target="#myModal"/>
		<!-- //Modal 실행 버튼 -->
		        
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
				
					<!-- Modal Title -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">♠ 점수 확인 ♠</h4>
					</div>
					<!-- //Modal Title -->
					
					<!-- Modal Comment -->
					<div class="modal-body"><span></span></div>
					<!-- //Modal Comment -->
					
					<!-- Modal Button -->
					<div class="modal-footer">
						<button type="button" class="btn btn-info btn-simple" id="btnSubmit">확인</button>
					</div>
					<!-- //Modal Button -->
					
				</div>
			</div>
		</div>
		<!-- //Modal -->
		
	</body>
	
</html>

<%@include file="/WEB-INF/views/License/EIC/Test_Script.jsp"%>