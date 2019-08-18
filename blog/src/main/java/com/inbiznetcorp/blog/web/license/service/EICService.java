package com.inbiznetcorp.blog.web.license.service;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import com.inbiznetcorp.blog.Util.JsonUtil;
import com.inbiznetcorp.blog.Util.RandomNumberUtil;
import com.inbiznetcorp.blog.mapper.license.EICMapper;

@Service("com.inbiznetcorp.blog.web.license.service.EICService")
public class EICService
{
	@Resource(name="com.inbiznetcorp.blog.mapper.license.EICMapper")
	EICMapper eicMapper;

	/**
	 * Chapter3 20문제를 가져온다.
	 */
	public JSONArray Chapter3()
	{
		return JsonUtil.ListToJSONArray(eicMapper.Chapter3(RandomNumberUtil.RandomNumberToStr(240, 20)));
	}

}
