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
		
		<div class="mt30"></div>
		
		<!-- 게시글 목록 -->
		<table class="table table-striped border_b">
			<tbody>
				<c:forEach items="${boardList}" var="list">
					<tr>
						<td>
							<span class="fl pointer">${list.TITLE}</span>
							<span class="fr">${list.CREATEDATE}</span>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- //게시글 목록 -->
		
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
		
		<div class="mt30"></div>
		
		<!-- 게시글 상세 -->
		<div class="border_b text_center">
        	<h4 id="title"></h4>
        </div>
        <div class="text_center" id="comments"></div>
		<!-- //게시글 상세 -->
		
	</div>
</div>
<!-- //Raspberry Pi 메인페이지 -->

<%@include file="/WEB-INF/views/Raspberry/Index_Script.jsp"%>
<%@include file="/WEB-INF/include/Footer.jsp"%>