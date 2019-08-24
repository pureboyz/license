package com.inbiznetcorp.blog.web.license.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import com.inbiznetcorp.blog.Util.JsonUtil;
import com.inbiznetcorp.blog.Util.RandomNumberUtil;
import com.inbiznetcorp.blog.VO.QuestionListVO;
import com.inbiznetcorp.blog.VO.TestHistoryVO;
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
		QuestionListVO vo = new QuestionListVO();
		vo.setChapter("CHAPTER"+chapter);
		vo.setSeq(RandomNumberUtil.RandomNumberToStr(eicMapper.CountOfChapter(chapter), 20, ","));
		
		return JsonUtil.ListToJSONArray(eicMapper.getQuestionList(vo));
	}

	/**
	 * 테스트 이력을 가져온다.
	 */
	public List<Map<String, Object>> getHistory()
	{
		return eicMapper.getHistory();
	}

	/**
	 * TEST 종료 후 이력추가
	 */
	public int TestComplete(TestHistoryVO vo)
	{
		return eicMapper.TestComplete(vo);
	}

}
