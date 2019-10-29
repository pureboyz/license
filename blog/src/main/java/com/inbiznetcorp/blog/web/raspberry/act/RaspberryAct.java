package com.inbiznetcorp.blog.web.raspberry.act;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inbiznetcorp.blog.VO.BoardVO;
import com.inbiznetcorp.blog.web.raspberry.service.RaspberryService;

@Controller
@RequestMapping("/Raspberry")
public class RaspberryAct
{
	@Resource(name="com.inbiznetcorp.blog.web.raspberry.service.RaspberryService")
	RaspberryService raspberryService;
	
	/**
	 * 메인페이지
	 */
	@RequestMapping(value = {"", "/", "/Index"})
	public String Index(Model model)
	{
		List<Map<String, Object>> boardList = raspberryService.BoardList("Raspberry Pi");
		model.addAttribute("boardList", boardList);
		
		return "/Develop/Raspberry/Index";
	}
	
	/**
	 * 가장 최신글 하나 불러온다.
	 */
	@RequestMapping(value = "getLatestBoard")
	public @ResponseBody Map<String, Object> getLatestBoard(Model model)
	{
		Map<String, Object> LatestPost = raspberryService.LatestPost("Raspberry Pi");
		
		return LatestPost;
	}
	
	/**
	 * 글쓰기페이지
	 */
	@RequestMapping("/Write")
	public String Write()
	{
		return "/Develop/Raspberry/Write";
	}

	/**
	 * 글쓰기완료
	 */
	@RequestMapping("/WriteSubmit")
	public String WriteSubmit(HttpServletRequest request)
	{
		String title 	= request.getParameter("title");
		String comments = request.getParameter("comments");
		
		BoardVO vo = new BoardVO();
		vo.setTitle(title);
		vo.setComments(comments);
		vo.setBoardname("Raspberry Pi");
		
		raspberryService.WriteSubmit(vo);
		
		return "redirect:/Raspberry/Index";
	}
}
