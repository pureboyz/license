package com.inbiznetcorp.blog.web.license.act;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inbiznetcorp.blog.web.license.service.EICService;

@Controller
@RequestMapping("/License/EIC")
public class EICAct
{
	@Resource(name="com.inbiznetcorp.blog.web.license.service.EICService")
	EICService eicService;
	
	/**
	 * 자격증 메인 페이지
	 */
//	@RequestMapping(value = {"", "/", "/Index"})
//	public String Index()
//	{
//		return "/License/Index";
//	}
	
	/**
	 * 정보통신기사 페이지
	 */
	@RequestMapping(value = {"", "/", "/Index"})
	public String EIC()
	{
		return "/License/EIC/Index";
	}
	
	/**
	 * Chapter2 문제 풀기 페이지
	 */
	@RequestMapping("/Chapter2")
	public String Chapter2(Model model)
	{
		return "/License/EIC/Chapter2";
	}
	
	/**
	 * Chapter2 문제 리스트
	 */
	@RequestMapping("/Chapter2/getQuestionList")
	public @ResponseBody JSONArray getQuestionList()
	{
		JSONArray questionJArray = eicService.Chapter2();
		
		return questionJArray;
	}
	
}
