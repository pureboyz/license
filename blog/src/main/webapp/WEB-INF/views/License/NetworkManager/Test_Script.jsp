<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
function showQuestions(chapter, questionList, indexValue, chapterSeqArr){
	// 사진이 있는 문제는 사진도 추가
	if(chapterSeqArr.indexOf(String(questionList[0].seqquestion)) > -1)
	{
		// replace('A', 'B') 한번만 치환 -> replace(/A/gi, 'B') replaceAll처럼 모두 치환
		// 정규식 gi : g는 발생할 모든 패턴을 검색, i는 대소문자를 구분안함
		$("#question").html("문제 "+parseInt(indexValue+1)+") " + questionList[indexValue].question.replace(/\n/gi, "<br/>") + '<br/><img src="${pageContext.request.contextPath}/resources/Images/NetworkManager/Chapter'+chapter+'/SEQ'+questionList[indexValue].seqquestion+'.png"/><br/><br/><br/>');
	}
	else
	{
		$("#question").html("문제 "+parseInt(indexValue+1)+") " + questionList[indexValue].question.replace(/\n/gi, "<br/>"));
	}

	// 보기가 없으면 사진으로 대체
// 	if(questionList[0].example1 === undefined)
// 	{
// 		$("#example1").html('1) ' + '<img src="${pageContext.request.contextPath}/resources/Images/Chapter'+chapter+'/SEQ'+questionList[indexValue].seqquestion+'_1.png"/>');
// 		$("#example2").html('2) ' + '<img src="${pageContext.request.contextPath}/resources/Images/Chapter'+chapter+'/SEQ'+questionList[indexValue].seqquestion+'_2.png"/>');
// 		$("#example3").html('3) ' + '<img src="${pageContext.request.contextPath}/resources/Images/Chapter'+chapter+'/SEQ'+questionList[indexValue].seqquestion+'_3.png"/>');
// 		$("#example4").html('4) ' + '<img src="${pageContext.request.contextPath}/resources/Images/Chapter'+chapter+'/SEQ'+questionList[indexValue].seqquestion+'_4.png"/>');
// 	}
// 	else
// 	{
		$("#example1").html("1) " + questionList[indexValue].example1);
		$("#example2").html("2) " + questionList[indexValue].example2);
		$("#example3").html("3) " + questionList[indexValue].example3);
		$("#example4").html("4) " + questionList[indexValue].example4);
// 	}
	
	// 정답
	$("#answer").val(questionList[indexValue].answer);
}

$(document).ready(function(){
	// 정답부분 숨김.
	$(".scoring").hide();
	
	var questionCount 	= 0;	// 문제의 개수
	
	var chapter 		= "${chapter}";	// Chapter 번호
	var chapterSeqArr 	= [];			// 질문에 사진이 있는 문제의 seq값을 담을 배열.
	
		 if(chapter == 1) { $("h2").text("네트워크일반"); 		questionCount = 17;		chapterSeqArr = ["201"]; }
	else if(chapter == 2) { $("h2").text("TCP/IP"); 		questionCount = 10;		chapterSeqArr = []; }
	else if(chapter == 3) { $("h2").text("NOS"); 			questionCount = 18;		chapterSeqArr = ["139", "142"]; }
	else if(chapter == 4) { $("h2").text("네트워크 운용기기"); 	questionCount = 5;		chapterSeqArr = []; }
	
	var questionList 	= new Array();	// 문제 리스트
	var indexValue 		= 0;			// 현재 문제의 index번호
	var score 			= 0;			// 점수
	
	// 문제 리스트 가져오기.
	$.ajax({
		 url : "/License/NetworkManager/Test/getQuestionList"
		,type : "POST"
		,dataType : "json"
		,data : {
			"chapter" : chapter
		}
		,success : function(data){
			console.log(data);
			questionList = data;
			
			$("#roading").hide();	// '문제를 불러오고 있습니다..' 문구 숨김.
			
			// 첫번째 문제 show.
			showQuestions(chapter, questionList, indexValue, chapterSeqArr);
		}
	});
	
	// TEST 취소 버튼 클릭 시
	$("#btnCancel").click(function(){
		location.href="/License/NetworkManager/Index";
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
		
		if(Number(indexValue) == Number(questionCount - 1))
		{
			$("#btnNext").text("종료");
		}
		else if(Number(indexValue) >= Number(questionCount))
		{
			var comment = score + "점!";
			
			$(".modal-body").find("span").html(comment);
			$("#btnModal").click();
			
			return false;
		}
		
		// 다음 문제 show.
		showQuestions(chapter, questionList, indexValue, chapterSeqArr);
	});
	
	// 점수확인 modal 창에서 확인 버튼 클릭 시
	$("#btnSubmit").click(function(){
		var subject = "";
		
			 if(chapter == 1) { subject = "네트워크일반"; }
		else if(chapter == 2) { subject = "TCP/IP"; }
		else if(chapter == 3) { subject = "NOS"; }
		else if(chapter == 4) { subject = "네트워크 운용기기"; }
			 
		$("[name=subject]").val(subject);
		$("[name=score]").val(score);
		$("[name=formComplete]").submit();
	});
	
	
});
</script>