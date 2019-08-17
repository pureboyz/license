package com.inbiznetcorp.blog.web.license.service;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import com.inbiznetcorp.blog.Util.JsonUtil;
import com.inbiznetcorp.blog.mapper.license.EICMapper;

@Service("com.inbiznetcorp.blog.web.license.service.EICService")
public class EICService
{
	@Resource(name="com.inbiznetcorp.blog.mapper.license.EICMapper")
	EICMapper eicMapper;

	/**
	 * Chapter2 20문제를 가져온다.
	 */
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
		
		return JsonUtil.ListToJSONArray(eicMapper.Chapter2(seqStr));
	}

}
