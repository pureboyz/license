<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
$(document).ready(function(){
	// Index 페이지에  최근 게시글 가져와서 화면에 뿌리기.
	$.ajax({
		 url : "/Raspberry/getLatestBoard"
		,type : "POST"
		,success : function(data)
		{
			var latestPost = data;
			
			$("#title").html(latestPost.TITLE);
			$("#comments").html(latestPost.COMMENTS);
		}
	});
});
</script>