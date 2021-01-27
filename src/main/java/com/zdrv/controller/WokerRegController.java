package com.zdrv.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.zdrv.dao.WorkerDao;
import com.zdrv.domain.WorkerInfo;
import com.zdrv.service.WorkerInfoService;

@Controller
public class WokerRegController {

	@Autowired
	private WorkerDao dao;

	@Autowired
	private WorkerInfoService service;

	@GetMapping("/workerReg{workerId}")
	public String showPage(Model model,
							@PathVariable Integer workerId) throws Exception {
		model.addAttribute("worker", dao.findById(workerId));
		model.addAttribute("action","更新");
		return "workerReg";
	}


	@GetMapping("/workerList")
	public String getWorkerList(Model model,
								HttpSession session) throws Exception  {
		Integer admin = (Integer) session.getAttribute("admin");
		if(admin == null) {

			Integer workerId = (Integer) session.getAttribute("workerId");

			return "redirect:/worker" + workerId;
		}
		model.addAttribute("workerList",dao.findAll());
		return "workerList";

	}

	@GetMapping("/worker{workerId}")
	public String showWorker(Model model,
							@PathVariable Integer workerId) throws Exception {
		model.addAttribute("worker", dao.findById(workerId));
		return "worker";
	}

	@GetMapping("/workerAdd")
	public String addWorker(Model model) throws Exception {
		model.addAttribute("action","追加");
		model.addAttribute("worker", new WorkerInfo());
		return "workerReg";
	}

	@PostMapping("/workerAdd")
	public String addPost(HttpSession session,
							@Valid WorkerInfo worker,
							Errors errors,
							Model model) throws Exception{
		if(errors.hasErrors()) {
			model.addAttribute("action","追加");
			return "/workerAdd";
		}

		Integer companyId = (Integer) session.getAttribute("companyId");
		worker.setCompanyId(companyId);
		service.addWorkerInfo(worker);
		model.addAttribute("message","従業員ID：" + worker.getWorkerId() + "が追加されました。");


		return "redirect:/workerList";
	}
}
