<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
$(document).ready(function(){
	$(".scoring").hide();
	
	var chapter 		= "${chapter}";	// Chapter 번호
	
		 if(chapter == 1) { $("h2").text("디지털전자회로"); }
	else if(chapter == 2) { $("h2").text("정보통신시스템"); }
	else if(chapter == 3) { $("h2").text("정보통신기기"); }
	else if(chapter == 3) { $("h2").text("정보전송공학"); }
	else if(chapter == 3) { $("h2").text("전자계산기일반 및 정보설비기준"); }
	
	
	var questionList 	= new Array();	// 문제 리스트
	var indexValue 		= 0;			// 현재 문제의 index번호
	var score 			= 0;			// 점수
	var questionNumber  = "";			// 문제 번호
	
	// 문제 리스트 가져오기.
	$.ajax({
		 url : "/License/EIC/Test/getQuestionList"
		,type : "POST"
		,dataType : "json"
		,data : {
			"chapter" : chapter
		}
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
			
			questionNumber += questionList[0].seq+" ";
		}
	});
	
	// TEST 취소 버튼 클릭 시
	$("#btnCancel").click(function(){
		location.href="/License/EIC/Index";
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
			score += 5;
		}
		// 오답일 때
		else
		{
			$("#scoring").text("오답입니다. 정답은 " + answer + "번 입니다.");
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
		else if(indexValue >= 20)
		{
			var comment = score + "점!";
			
			if(score < 40)
			{comment += " <br/><br/> 과락입니다..";}
			else if(score < 60)
			{comment += " <br/><br/> 불합격입니다..";}
			else
			{comment += " <br/><br/> 합격입니다!!";}
			
			$(".modal-body").find("span").html(comment);
			$("#btnModal").click();
			
			return false;
		}
		
		// 다음 문제 show.
		$("#question").text("문제 "+parseInt(indexValue+1)+") " + questionList[indexValue].question);
		$("#example1").text("1) " + questionList[indexValue].example1);
		$("#example2").text("2) " + questionList[indexValue].example2);
		$("#example3").text("3) " + questionList[indexValue].example3);
		$("#example4").text("4) " + questionList[indexValue].example4);
		$("#answer").val(questionList[indexValue].answer);
		
		questionNumber += questionList[indexValue].seq+" ";
	});
	
	// 점수확인 modal 창에서 확인 버튼 클릭 시
	$("#btnSubmit").click(function(){
		// replace('A', 'B') 한번만 치환 -> replace(/A/gi, 'B') replaceAll처럼 모두 치환
		// 정규식 gi : g는 발생할 모든 패턴을 검색, i는 대소문자를 구분안함
		$("[name=subject]").val(chapter);
		$("[name=questionNumber]").val(questionNumber.trim().replace(/ /gi, ","));	// 공백을 콤마로 변경.
		$("[name=score]").val(score);
		$("[name=formComplete]").submit();
	});
	
	
});
</script>