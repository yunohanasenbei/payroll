package com.zdrv.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.zdrv.dao.CompanyDao;
import com.zdrv.domain.Company;

@Controller
public class CompanyRegController {

	@Autowired
	private CompanyDao dao;

	@GetMapping("/companyReg")
	public String getCompanyReg(HttpSession session,
								Model model) throws Exception {

		Integer companyId = (Integer) session.getAttribute("companyId");

		model.addAttribute("company", dao.findById(companyId));
		return "companyReg";
	}

	@PostMapping("/companyReg")
	public String postCompanyReg(HttpSession session,
									@Valid Company company,
									Errors errors,
									Model model) throws Exception {

		Integer companyId = (Integer) session.getAttribute("companyId");

		if (errors.hasErrors()) {
			model.addAttribute("company", dao.findById(companyId));
			return "companyReg";

		}

//		insert文を作る
		company.setCompanyId(companyId);
//		service.editMember(member);
		return "companyReg";

	}

}
