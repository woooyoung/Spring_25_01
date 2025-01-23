package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.Data;
import lombok.NoArgsConstructor;

@Controller
public class UsrHomeController {

	@RequestMapping("/usr/home/getMember")
	@ResponseBody
	public Member getMember() {

		Member member = new Member(1, "회원1", "1234");

		return member;
	}

	@RequestMapping("/usr/home/getMap")
	@ResponseBody
	public Map<String, Object> getMap() {

		Map<String, Object> map = new HashMap<>();
		map.put("안녕", 11);
		map.put("잘가", true);

		return map;
	}

	@RequestMapping("/usr/home/getList")
	@ResponseBody
	public List<String> getList() {

		List<String> list = new ArrayList<>();
		list.add("안녕");
		list.add("잘가");

		return list;
	}

	@RequestMapping("/usr/home/getBoolean")
	@ResponseBody
	public boolean getBoolean() {

		return true;
	}

	@RequestMapping("/usr/home/String")
	@ResponseBody
	public String showMain() {
		return "하이";
	}

	@RequestMapping("/usr/home/getInt")
	@ResponseBody
	public int showMain3() {
		int a = 1;
		int b = 2;

		return a + b;
	}

}

@Data
@NoArgsConstructor
class Member {
	public Member(int id, String username, String password) {
		this.id = id;
		this.username = username;
		this.password = password;

	}

	int id;
	String username;
	String password;
}
