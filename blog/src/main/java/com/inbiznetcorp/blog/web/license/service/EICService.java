package com.inbiznetcorp.blog.web.license.service;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import com.inbiznetcorp.blog.DTO.QuestionListDTO;
import com.inbiznetcorp.blog.Util.JsonUtil;
import com.inbiznetcorp.blog.Util.RandomNumberUtil;
import com.inbiznetcorp.blog.mapper.license.EICMapper;

@Service("com.inbiznetcorp.blog.web.license.service.EICService")
public class EICService
{
	@Resource(name="com.inbiznetcorp.blog.mapper.license.EICMapper")
	EICMapper eicMapper;

	/**
	 * 20문제를 가져온다.
	 */
	public JSONArray getQuestionList(String chapter)
	{
		QuestionListDTO dto = new QuestionListDTO();
		dto.setChapter("CHAPTER"+chapter);
		dto.setSeq(RandomNumberUtil.RandomNumberToStr(eicMapper.CountOfChapter(chapter), 20));
		return JsonUtil.ListToJSONArray(eicMapper.getQuestionList(dto));
	}

}
