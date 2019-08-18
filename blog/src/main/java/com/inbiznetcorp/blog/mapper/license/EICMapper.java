package com.inbiznetcorp.blog.mapper.license;

import java.util.Map;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("com.inbiznetcorp.blog.mapper.license.EICMapper")
public interface EICMapper
{

	/**
	 * Chapter3 20문제를 가져온다.
	 */
	List<Map<String, Object>> Chapter3(String seqStr);

}
