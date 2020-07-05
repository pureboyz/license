<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/include/Header.jsp" %>

<!-- 네트워크 관리사 2급 -->
<div class="main">
	<div class="container tim-container" style="max-width:800px; padding-top:100px; min-height:870px;">
	
		<!-- Title -->
		<div class="tim-title">
			<h2>네트워크 관리사 2급</h2>
		</div>
		<!-- //Title -->
		
		<hr/>
		<br/>
		
		<!-- 문제풀기 버튼 -->
		<div class="dropdown text-right">
			<button class="btn btn-primary dropdown-toggle" type="button" id="about-us" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				문제풀기
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu pull-right" aria-labelledby="about-us">
				<li><a href="/License/NetworkManager/Test?chapter=1">네트워크일반</a></li>
				<li><a href="/License/NetworkManager/Test?chapter=2">TCP/IP</a></li>
				<li><a href="/License/NetworkManager/Test?chapter=3">NOS</a></li>
				<li><a href="/License/NetworkManager/Test?chapter=4">네트워크 운용기기</a></li>
			</ul>
		</div>
		<!-- //문제풀기 버튼 -->
		
		<br/>
	
		<!-- 이력 테이블 -->
<!-- 		<table class="table table-striped"> -->
<%-- 			<colgroup> --%>
<%-- 				<col width="15%" /> --%>
<%-- 				<col width="45%" /> --%>
<%-- 				<col width="15%" /> --%>
<%-- 				<col width="25%" /> --%>
<%-- 			</colgroup> --%>
<!-- 			<thead> -->
<!-- 				<tr> -->
<!-- 					<th>회차</th> -->
<!-- 					<th>과목</th> -->
<!-- 					<th>점수</th> -->
<!-- 					<th>날짜</th> -->
<!-- 				</tr> -->
<!-- 			</thead> -->
<!-- 			<tbody> -->
<%-- 				<c:forEach items="${history}" var="history"> --%>
<!-- 					<tr> -->
<%-- 						<td>${history.SEQ}</td> --%>
<%-- 						<td>${history.SUBJECT}</td> --%>
<%-- 						<td>${history.SCORE}</td> --%>
<%-- 						<td>${history.CREATEDATE} <span class="small" style="color:#ccc;">${history.CREATETIME}</span></td> --%>
<!-- 					</tr> -->
<%-- 				</c:forEach> --%>
<!-- 			</tbody> -->
<!-- 		</table> -->
		<!-- //이력 테이블 -->
		
		<!-- 이력 테이블 페이징 -->
<!-- 		<nav class="text-center"> -->
<!-- 			<ul class="pagination"> -->
<!-- 				<li> -->
<!-- 					<a href="#" aria-label="Previous"> -->
<!-- 						<span aria-hidden="true">&laquo;</span> -->
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 				<li><a href="#">1</a></li> -->
<!-- 				<li><a href="#">2</a></li> -->
<!-- 				<li><a href="#">3</a></li> -->
<!-- 				<li class="disabled active"><a href="#">4</a></li> -->
<!-- 				<li><a href="#">5</a></li> -->
<!-- 				<li><a href="#">6</a></li> -->
<!-- 				<li><a href="#">7</a></li> -->
<!-- 				<li> -->
<!-- 					<a href="#" aria-label="Next"> -->
<!-- 						<span aria-hidden="true">&raquo;</span> -->
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 		</nav> -->
		<!-- //이력 테이블 페이징 -->
		
	</div>
</div>
<!-- //네트워크 관리사 2급 -->

<%@include file="/WEB-INF/include/Footer.jsp"%>