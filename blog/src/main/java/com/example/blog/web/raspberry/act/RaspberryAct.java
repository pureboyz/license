package com.example.blog.web.raspberry.act;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Raspberry")
public class RaspberryAct
{
	@RequestMapping(value = {"", "/", "/Index"})
	public String Index()
	{
		return "/Raspberry/Index";
	}
}
