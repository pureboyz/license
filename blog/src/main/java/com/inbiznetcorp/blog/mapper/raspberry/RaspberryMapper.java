package com.inbiznetcorp.blog.mapper.raspberry;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.inbiznetcorp.blog.VO.BoardVO;

@Mapper
@Repository("com.inbiznetcorp.blog.mapper.raspberry.RaspberryMapper")
public interface RaspberryMapper
{

	/**
	 * 게시글 리스트
	 */
	List<Map<String, Object>> BoardList(String string);

	/**
	 * 글쓰기
	 */
	int WriteSubmit(BoardVO vo);

	/**
	 * 가장 최신글 하나 불러온다.
	 */
	Map<String, Object> LatestPost(String string);

}
