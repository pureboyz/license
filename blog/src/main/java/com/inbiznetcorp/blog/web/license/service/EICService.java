package com.inbiznetcorp.blog.web.license.service;

import java.util.List;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.inbiznetcorp.blog.mapper.license.EICMapper;
import com.inbiznetcorp.blog.vo.EicVO;

@Service("com.inbiznetcorp.blog.web.license.service.EICService")
public class EICService
{
	@Resource(name="com.inbiznetcorp.blog.mapper.license.EICMapper")
	EICMapper eicMapper;

	/**
	 * Chapter2 20문제를 가져온다.
	 */
	@SuppressWarnings("unchecked")
	public JSONArray Chapter2()
	{
		String 	seqStr 	= "";	// 랜덤으로 뽑은 20개의 숫자가 담기는 문자열.
		int 	cnt 	= 1;	// cnt가 20이 되면 isRun을 false로 변경하여 숫자 뽑기 종료.
		boolean isRun 	= true;
		
		while(isRun)
		{
			int number = (int)((Math.random()*240)+1);	// 1~240 중에서 랜덤으로 숫자 하나를 뽑는다.
			
			// 이미 뽑은 숫자가 아니면 seqStr에 담는다.
			if(seqStr.indexOf(String.valueOf(number)) == -1)
			{
				// 마지막 숫자면 while문 종료
				if(cnt == 20)
				{
					seqStr += number;
					cnt++;
					isRun = false;
				}
				else
				{
					seqStr += number+",";
					cnt++;
				}
			}
			
		}
		
		List<EicVO> questionList 	= eicMapper.Chapter2(seqStr);
		JSONArray 	questionJArray 	= new JSONArray();
		
		for(EicVO question : questionList)
		{
			JSONObject jObj = new JSONObject();
			jObj.put("seq", 		question.getSeq());
			jObj.put("question", 	question.getQuestion());
			jObj.put("example1", 	question.getExample1());
			jObj.put("example2", 	question.getExample2());
			jObj.put("example3", 	question.getExample3());
			jObj.put("example4", 	question.getExample4());
			jObj.put("answer", 		question.getAnswer());
			
			questionJArray.add(jObj);
		}
		
		return questionJArray;
	}

}
