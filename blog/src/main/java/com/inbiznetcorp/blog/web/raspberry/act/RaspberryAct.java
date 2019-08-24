package com.inbiznetcorp.blog.web.raspberry.act;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		System.out.println("boardList : "+boardList);
		model.addAttribute("boardList", boardList);
		
		return "/Raspberry/Index";
	}
	
	/**
	 * 글쓰기페이지
	 */
	@RequestMapping("/Write")
	public String Write()
	{
		return "/Raspberry/Write";
	}

	/**
	 * 글쓰기완료
	 */
	@RequestMapping("/WriteSubmit")
	public String WriteSubmit(HttpServletRequest request)
	{
		String title 	= request.getParameter("title");
		String comments = request.getParameter("comments");
		
		System.out.println("title 		: "+title);
		System.out.println("comments 	: "+comments);
		
		BoardVO vo = new BoardVO();
		vo.setTitle(title);
		vo.setComments(comments);
		vo.setBoardname("Raspberry Pi");
		
		raspberryService.WriteSubmit(vo);
		
		return "redirect:/Raspberry/Index";
	}
}
