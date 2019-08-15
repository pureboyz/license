package com.inbiznetcorp.blog.mapper.index;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("com.inbiznetcorp.blog.mapper.index.IndexMapper")
public interface IndexMapper
{

	String Index();

}
