package com.inbiznetcorp.blog.web.license.act;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inbiznetcorp.blog.VO.TestHistoryVO;
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
	public String EIC(Model model)
	{
		model.addAttribute("history", eicService.getHistory());
		
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
		TestHistoryVO vo = new TestHistoryVO();
		vo.setLicense("EIC");
		vo.setSubject((String) request.getParameter("subject"));
		vo.setScore(Integer.parseInt(request.getParameter("score")));
		
		// TEST 종료 후 이력추가.
		eicService.TestComplete(vo);
		
		return "redirect:/License/EIC/Index";
	}
	
}
