package com.inbiznetcorp.blog.web.raspberry.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.inbiznetcorp.blog.VO.BoardVO;
import com.inbiznetcorp.blog.mapper.raspberry.RaspberryMapper;

@Service("com.inbiznetcorp.blog.web.raspberry.service.RaspberryService")
public class RaspberryService
{
	@Resource(name="com.inbiznetcorp.blog.mapper.raspberry.RaspberryMapper")
	RaspberryMapper raspberryMapper;

	/**
	 * 게시글 리스트
	 */
	public List<Map<String, Object>> BoardList(String string)
	{
		return raspberryMapper.BoardList(string);
	}

	/**
	 * 글쓰기
	 */
	public int WriteSubmit(BoardVO vo)
	{
		return raspberryMapper.WriteSubmit(vo);
	}

	/**
	 * 가장 최신글 하나 불러온다.
	 */
	public Map<String, Object> LatestPost(String string)
	{
		return raspberryMapper.LatestPost(string);
	}


}
