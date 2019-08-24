<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
function showQuestions(chapter, questionList, indexValue, chapterSeqArr){
	// 사진이 있는 문제는 사진도 추가
	if(chapterSeqArr.indexOf(String(questionList[0].seq)) > -1)
	{
		// replace('A', 'B') 한번만 치환 -> replace(/A/gi, 'B') replaceAll처럼 모두 치환
		// 정규식 gi : g는 발생할 모든 패턴을 검색, i는 대소문자를 구분안함
		$("#question").html("문제 "+parseInt(indexValue+1)+") " + questionList[indexValue].question.replace(/\n/gi, "<br/>") + '<img src="${pageContext.request.contextPath}/resources/Images/Chapter'+chapter+'/SEQ'+questionList[indexValue].seq+'_0.png"/><br/><br/><br/>');
	}
	else
	{
		$("#question").html("문제 "+parseInt(indexValue+1)+") " + questionList[indexValue].question.replace(/\n/gi, "<br/>"));
	}

	// 보기가 없으면 사진으로 대체
	if(questionList[0].example1 === undefined)
	{
		$("#example1").html('1) ' + '<img src="${pageContext.request.contextPath}/resources/Images/Chapter'+chapter+'/SEQ'+questionList[indexValue].seq+'_1.png"/>');
		$("#example2").html('2) ' + '<img src="${pageContext.request.contextPath}/resources/Images/Chapter'+chapter+'/SEQ'+questionList[indexValue].seq+'_2.png"/>');
		$("#example3").html('3) ' + '<img src="${pageContext.request.contextPath}/resources/Images/Chapter'+chapter+'/SEQ'+questionList[indexValue].seq+'_3.png"/>');
		$("#example4").html('4) ' + '<img src="${pageContext.request.contextPath}/resources/Images/Chapter'+chapter+'/SEQ'+questionList[indexValue].seq+'_4.png"/>');
	}
	else
	{
		$("#example1").html("1) " + questionList[indexValue].example1);
		$("#example2").html("2) " + questionList[indexValue].example2);
		$("#example3").html("3) " + questionList[indexValue].example3);
		$("#example4").html("4) " + questionList[indexValue].example4);
	}
	
	// 정답
	$("#answer").val(questionList[indexValue].answer);
}

$(document).ready(function(){
	// 정답부분 숨김.
	$(".scoring").hide();
	
	var chapter 		= "${chapter}";	// Chapter 번호
	var chapterSeqArr 	= [];			// 질문에 사진이 있는 문제의 seq값을 담dmf 배열.
	
		 if(chapter == 1) { $("h2").text("디지털전자회로"); 				chapterSeqArr = ["3", "7", "13", "14", "24", "35", "39", "40", "43", "49", "54", "58", "61", "63", "65", "68", "72", "75", "82", "84", "88", "92", "94", "95", "96", "99", "102", "104", "105", "108", "112", "118", "122", "123", "126", "137", "140", "141", "143", "154", "155", "156", "172", "177", "182", "184", "201", "216", "221", "225", "228", "233", "234", "237", "239", "244", "246", "254", "255", "256", "257", "261", "262", "265", "266", "267", "276", "277", "278", "281", "282", "284", "287", "293", "297", "299"]; }
	else if(chapter == 2) { $("h2").text("정보통신시스템"); 				chapterSeqArr = []; }
	else if(chapter == 3) { $("h2").text("정보통신기기"); 				chapterSeqArr = []; }
	else if(chapter == 4) { $("h2").text("정보전송공학"); 				chapterSeqArr = ["21", "218", "225", "289"]; }
	else if(chapter == 5) { $("h2").text("전자계산기일반 및 정보설비기준"); 	chapterSeqArr = ["25", "30", "62", "88", "130", "141", "204", "208", "264", "265", "269"]; }
	
	var questionList 	= new Array();	// 문제 리스트
	var indexValue 		= 0;			// 현재 문제의 index번호
	var score 			= 0;			// 점수
	
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
			showQuestions(chapter, questionList, indexValue, chapterSeqArr);
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
		
			 if(chapter == 1) { subject = "디지털전자회로"; }
		else if(chapter == 2) { subject = "정보통신시스템"; }
		else if(chapter == 3) { subject = "정보통신기기"; }
		else if(chapter == 4) { subject = "정보전송공학"; }
		else if(chapter == 5) { subject = "전자계산기일반 및 정보설비기준"; }
			 
		$("[name=subject]").val(subject);
		$("[name=score]").val(score);
		$("[name=formComplete]").submit();
	});
	
	
});
</script>