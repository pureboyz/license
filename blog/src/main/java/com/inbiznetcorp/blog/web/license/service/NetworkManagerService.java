package com.inbiznetcorp.blog.web.license.service;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import com.inbiznetcorp.blog.Util.JsonUtil;
import com.inbiznetcorp.blog.Util.RandomNumberUtil;
import com.inbiznetcorp.blog.VO.QuestionListVO;
import com.inbiznetcorp.blog.mapper.license.networkmanager.NetworkManagerMapper;

@Service("com.inbiznetcorp.blog.web.license.service.NetworkManagerService")
public class NetworkManagerService
{
	@Resource(name="com.inbiznetcorp.blog.mapper.license.networkmanager.NetworkManagerMapper")
	NetworkManagerMapper networkManagerMapper;
	
	/**
	 * 문제를 가져온다.
	 */
	public JSONArray getQuestionList(String chapter)
	{
		QuestionListVO vo = new QuestionListVO();
		vo.setLicense("1");
		vo.setChapter(chapter);
		
		switch(chapter)
		{
			case "1":
				vo.setCount(17);
				break;
			case "2":
				vo.setCount(10);
				break;
			case "3":
				vo.setCount(18);
				break;
			case "4":
				vo.setCount(5);
				break;
			default :
				vo.setCount(20);
				break;
		}
		
		vo.setSeqquestion(RandomNumberUtil.RandomNumberToStr(networkManagerMapper.CountOfChapter(chapter), vo.getCount(), ","));
		
		return JsonUtil.ListToJSONArray(networkManagerMapper.getQuestionList(vo));
	}
}
