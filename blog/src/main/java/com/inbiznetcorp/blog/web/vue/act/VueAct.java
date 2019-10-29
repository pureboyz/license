package com.inbiznetcorp.blog.web.vue.act;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Vue")
public class VueAct
{
	@RequestMapping(value = {"", "/", "/Index"})
	public String Index()
	{
		return "/Develop/Vue/Index";
	}
}
