package com.inbiznetcorp.blog.mapper.license;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.inbiznetcorp.blog.vo.EicVO;

@Mapper
@Repository("com.inbiznetcorp.blog.mapper.license.EICMapper")
public interface EICMapper
{

	List<EicVO> Chapter2(String seqStr);

}
