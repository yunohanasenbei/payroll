package com.zdrv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ByWokerController {


	@GetMapping("/byWorker")
	public String showPage() {
		return "byWorker";
	}


}
