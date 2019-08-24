<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/include/Header.jsp"%>

<!-- Raspberry Pi 메인페이지 -->
<div class="main">
	<div class="container tim-container">
	
		<!-- Title -->
		<div class="tim-title">
			<h2>Raspberry Pi</h2>
		</div>
		<!-- //Title -->
		
		<!-- 게시글 -->
		<c:forEach items="${boardList}" var="list">
			<div id="acordeon">
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-target="#collapseOne" href="#collapseOne" data-toggle="gsdk-collapse">
									${list.TITLE}
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse">
							<div class="panel-body">
								${list.COMMENTS}
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<!-- //게시글 -->
		
		<!-- 페이징 -->
		<nav class="text-center">
			<ul class="pagination">
				<li>
					<a href="#" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li class="disabled active"><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">6</a></li>
				<li><a href="#">7</a></li>
				<li>
					<a href="#" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</ul>
		</nav>
		<!-- //페이징 -->
		
	</div>
</div>
<!-- //Raspberry Pi 메인페이지 -->

<%@include file="/WEB-INF/include/Footer.jsp"%>