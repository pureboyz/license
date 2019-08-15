package com.inbiznetcorp.blog.web.license.act;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/License")
public class EICAct
{
	/**
	 * 자격증 메인 페이지
	 */
	@RequestMapping(value = {"", "/", "/Index"})
	public String Index()
	{
		return "/License/Index";
	}
	
	/**
	 * 정보통신기사 페이진
	 */
	@RequestMapping("/EIC")
	public String EIC()
	{
		return "/License/EIC";
	}
}
