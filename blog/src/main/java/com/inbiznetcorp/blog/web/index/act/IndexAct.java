package com.inbiznetcorp.blog.web.index.act;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inbiznetcorp.blog.web.index.service.IndexService;

@Controller
public class IndexAct
{
	@Resource(name="com.inbiznetcorp.blog.web.index.service.IndexService")
	IndexService indexService;
	
	@RequestMapping(value = {"", "/", "/Index"})
	public String Index()
	{
		String str = indexService.Index();
		System.out.println("str : "+str);
		
		return "/Index/Index";
	}
}
