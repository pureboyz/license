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
	 * 문제 풀기 페이지
	 */
	@RequestMapping("/Test")
	public String Test(HttpServletRequest request, Model model)
	{
		model.addAttribute("chapter", request.getParameter("chapter"));
		
		return "/License/EIC/Test";
	}
	
	/**
	 * 문제 리스트
	 */
	@RequestMapping("/Test/getQuestionList")
	public @ResponseBody JSONArray getQuestionList(HttpServletRequest request)
	{
		String chapter = request.getParameter("chapter");
		
		return eicService.getQuestionList(chapter);
	}
	
	/**
	 * Test 종료
	 */
	@RequestMapping("/Test/TestComplete")
	public String TestComplete(HttpServletRequest request)
	{
		System.out.println(request.getParameter("subject"));
		System.out.println(request.getParameter("score"));
		System.out.println(request.getParameter("questionNumber"));
		return "redirect:/License/EIC/Index";
	}
	
}
