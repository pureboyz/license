package com.inbiznetcorp.blog.web.license.act;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inbiznetcorp.blog.VO.TestHistoryVO;
import com.inbiznetcorp.blog.web.license.service.NetworkManagerService;

@Controller
@RequestMapping("/License/NetworkManager")
public class NetworkManagerAct
{
	@Resource(name="com.inbiznetcorp.blog.web.license.service.NetworkManagerService")
	NetworkManagerService networkManagerService;
	
	/**
	 * 네트워크관리사 페이지
	 */
	@RequestMapping(value = {"", "/", "/Index"})
	public String EIC(Model model)
	{
//		model.addAttribute("history", eicService.getHistory());
		
		return "/License/NetworkManager/Index";
	}
	
	/**
	 * 문제 풀기 페이지
	 */
	@RequestMapping("/Test")
	public String Test(HttpServletRequest request, Model model)
	{
		model.addAttribute("chapter", request.getParameter("chapter"));
		
		return "/License/NetworkManager/Test";
	}
	
	/**
	 * 문제 리스트
	 */
	@RequestMapping("/Test/getQuestionList")
	public @ResponseBody JSONArray getQuestionList(HttpServletRequest request)
	{
		String chapter = request.getParameter("chapter");
		
		return networkManagerService.getQuestionList(chapter);
	}
	
	/**
	 * Test 종료
	 */
	@RequestMapping("/Test/TestComplete")
	public String TestComplete(HttpServletRequest request)
	{
//		TestHistoryVO vo = new TestHistoryVO();
//		vo.setLicense("1");
//		vo.setSubject((String) request.getParameter("subject"));
//		vo.setScore(Integer.parseInt(request.getParameter("score")));
		
		// TEST 종료 후 이력추가.
//		networkManagerService.TestComplete(vo);
		
		return "redirect:/License/NetworkManager/Index";
	}
}
