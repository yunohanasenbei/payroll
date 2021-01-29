package com.zdrv.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.zdrv.domain.Admin;
import com.zdrv.service.AdminService;

@Controller
public class LoginController {

	@Autowired
	AdminService service;

	@GetMapping({"/","/login"})
	public String showLogin (Model model) {
		model.addAttribute("admin",new Admin());
		return "login";
	}

	@PostMapping({"/","/login"})
	public String login(@Valid Admin admin,
						Errors errors,
						HttpSession session) throws Exception {
		//入力に不備がある
		if(errors.hasErrors()) {
			return "login";
		}

		//パスワードが正しくない
		if(!service.isCorrectIdAndPassword(admin.getLoginId(), admin.getLoginPass())) {
			errors.rejectValue("loginId", "error.incorrect_id_password");
			return "login";
		}

		Admin loginAdmin = service.getAdminByLoginId(admin.getLoginId());
		System.out.println("2回目");
		System.out.println(loginAdmin);

		// 正しいログインIDとパスワード
		// ⇒ セッションにログインIDを格納し、リダイレクト
		session.setAttribute("loginId", loginAdmin.getLoginId());
		session.setAttribute("companyId", loginAdmin.getWorkerInfo().getCompanyId());
		session.setAttribute("workerId", loginAdmin.getWorkerId());
		session.setAttribute("admin", loginAdmin.getWorkerInfo().getAdmin());
		System.out.println(loginAdmin.getWorkerInfo().getAdmin());

		if(loginAdmin.getWorkerInfo().getAdmin() == null) {
			System.out.println("/timeSheet" + loginAdmin.getWorkerId());
			return "redirect:/timeSheet" + loginAdmin.getWorkerId();
		}

		return "redirect:/index";

	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		//セッションを破棄し、トップページへ遷移
		session.invalidate();
		return "redirect:/login";
	}
}
