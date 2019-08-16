<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
$(document).ready(function(){
	$(".scoring").hide();
	
	var questionList 	= new Array();
	var indexValue 		= 0;
	
	// Chapter2 문제 리스트
	$.ajax({
		 url : "/License/EIC/Chapter2/getQuestionList"
		,type : "POST"
		,success : function(data){
			questionList = data;
			
			$("#roading").hide();	// '문제를 불러오고 있습니다..' 문구 숨김.
			
			// 첫번째 문제 show.
			$("#question").text("문제 1) " + questionList[0].question);
			$("#example1").text("1) " + questionList[0].example1);
			$("#example2").text("2) " + questionList[0].example2);
			$("#example3").text("3) " + questionList[0].example3);
			$("#example4").text("4) " + questionList[0].example4);
			$("#answer").val(questionList[0].answer);
		}
	});
	
	// 보기 클릭 시
	$(".pointer").click(function(){
		var answer 		= $("#answer").val();
		var selected 	= $(this).attr("id");
		
		// 정답일 때
		if("example"+answer == selected)
		{
			$("#scoring").text("정답입니다.");
			$(".scoring").show();
		}
		// 오답일 때
		else
		{
			$("#scoring").text("오답입니다.");
			$(".scoring").show();
		}
	});
	
	// 다음문제 버튼 클릭 시
	$("#btnNext").click(function(){
		indexValue += 1;

		$(".scoring").hide();	// 채점부분 숨김.
		if(indexValue == 19)
		{
			$("#btnNext").text("종료");
		}
		else if(indexValue == 20)
		{
			location.href="/License/EIC/Index";
			return false;
		}
		
		// 다음 문제 show.
		$("#question").text("문제 "+parseInt(indexValue+1)+") " + questionList[indexValue].question);
		$("#example1").text("1) " + questionList[indexValue].example1);
		$("#example2").text("2) " + questionList[indexValue].example2);
		$("#example3").text("3) " + questionList[indexValue].example3);
		$("#example4").text("4) " + questionList[indexValue].example4);
		$("#answer").val(questionList[indexValue].answer);
	});
	
	
});
</script>