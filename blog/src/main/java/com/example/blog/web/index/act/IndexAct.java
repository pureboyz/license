package com.example.blog.web.index.act;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexAct
{
	@RequestMapping(value = {"", "/", "/Index"})
	public String Index()
	{
		return "/Index/Index";
	}
}
