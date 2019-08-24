package com.inbiznetcorp.blog.mapper.license;

import java.util.Map;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.inbiznetcorp.blog.VO.QuestionListVO;
import com.inbiznetcorp.blog.VO.TestHistoryVO;

@Mapper
@Repository("com.inbiznetcorp.blog.mapper.license.EICMapper")
public interface EICMapper
{
	/**
	 * 해당 Chapter의 총 문제 갯수를 가져온다.
	 */
	int CountOfChapter(String chapter);

	/**
	 * 해당 Chapter의 20문제를 가져온다.
	 */
	List<Map<String, Object>> getQuestionList(QuestionListVO dto);

	/**
	 * 테스트 이력을 가져온다.
	 */
	List<Map<String, Object>> getHistory();

	/**
	 * TEST 종료 후 이력추가
	 */
	int TestComplete(TestHistoryVO vo);

}
