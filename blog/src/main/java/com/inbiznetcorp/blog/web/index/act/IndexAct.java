package com.inbiznetcorp.blog.web.index.act;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = {"", "/", "/Index"})
public class IndexAct
{
	/**
	 * Blog 메인 페이지.
	 */
	@RequestMapping(value = {"", "/", "/Index"})
	public String Index()
	{
//		return "/Index/Index";
		return "redirect:/License/NetworkManager";
	}
}
