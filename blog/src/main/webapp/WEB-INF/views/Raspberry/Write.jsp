<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/include/Header.jsp"%>

<style>
	.note-editable { height:630px; overflow:scroll; }
	.input-group-addon { background-color:cornsilk; }
	#submit { margin-bottom:10px; }
</style>

<!-- Raspberry Pi 글쓰기 페이지 -->
<div class="main">
	<div class="container tim-container">
	
		<!-- Title -->
		<div class="tim-title">
			<h2>Raspberry Pi 글쓰기</h2>
		</div>
		<!-- //Title -->
	
		<!-- summernote -->
		<form method="post" action="/Raspberry/WriteSubmit">
			<div class="input-group">
				<span class="input-group-addon">제목</span>
				<input type="text" class="form-control" name="title" aria-label="Amount (rounded to the nearest dollar)">
			</div>
			<textarea id="summernote" name="comments"></textarea>
			<input type="submit" class="btn btn-primary btn-fill pull-right" value="완료" />
		</form>
		<!-- //summernote -->
		
	</div>
</div>
<!-- //Raspberry Pi 글쓰기 페이지 -->

<%@include file="/WEB-INF/views/Raspberry/Write_Script.jsp"%>
<%@include file="/WEB-INF/include/Footer.jsp"%>