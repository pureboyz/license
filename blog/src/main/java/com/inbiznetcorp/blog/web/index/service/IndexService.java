package com.inbiznetcorp.blog.web.index.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.inbiznetcorp.blog.mapper.index.IndexMapper;

@Service("com.inbiznetcorp.blog.web.index.service.IndexService")
public class IndexService
{
	@Resource(name="com.inbiznetcorp.blog.mapper.index.IndexMapper")
	IndexMapper indexMapper;

	public String Index()
	{
		System.out.println("Index Service!!");
		return null;
//		return indexMapper.Index();
	}

}
