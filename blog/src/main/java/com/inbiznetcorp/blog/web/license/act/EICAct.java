package com.inbiznetcorp.blog.web.license.act;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	 * 정보통신기사 페이지
	 */
	@RequestMapping(value = {"", "/", "/Index"})
	public String EIC()
	{
		return "/License/EIC/Index";
	}
	
	/**
	 * Chapter3 문제 풀기 페이지
	 */
	@RequestMapping("/Chapter3")
	public String Chapter2(Model model)
	{
		return "/License/EIC/Chapter3";
	}
	
	/**
	 * Chapter3 문제 리스트
	 */
	@RequestMapping("/Chapter3/getQuestionList")
	public @ResponseBody JSONArray getQuestionList()
	{
		return eicService.Chapter3();
	}
	
	/**
	 * Chapter3 Test 종료
	 */
	@RequestMapping("/Chapter2/TestComplete")
	public String TestComplete(HttpServletRequest request)
	{
		System.out.println(request.getParameter("subject"));
		System.out.println(request.getParameter("score"));
		System.out.println(request.getParameter("questionNumber"));
		return "redirect:/License/EIC/Index";
	}
	
}
