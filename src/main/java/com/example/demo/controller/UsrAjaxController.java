package com.example.demo.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UsrAjaxController {

	@RequestMapping("/usr/home/plus")
	public String showPlus() {
		return "/usr/home/AjaxTestPage";
	}

	@RequestMapping("/usr/home/doPlus")
	@ResponseBody
	public String doPlus(int num1, int num2) {
		String msg = "더하기 성공!!!";

		int rs = num1 + num2;

		String code = "S-1";

		return rs + "/" + msg + "/" + code;
	}
	@RequestMapping("/usr/home/doPlusJson")
	@ResponseBody
	public Map<String, Object> doPlusJson(int num1, int num2) {
		
		Map<String,Object> rsMap = new HashMap<>();
		
		rsMap.put("rs", num1 + num2);
		rsMap.put("msg", "더하기 성공<map>");
		rsMap.put("code", "s-1");

		return rsMap;
	}

}
