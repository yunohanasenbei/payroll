package com.zdrv.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;

import com.zdrv.dao.CompanyDao;
import com.zdrv.domain.CalcMonth;
import com.zdrv.domain.ShowTimeSheet;
import com.zdrv.domain.TimeSheet;
import com.zdrv.service.CompanyService;
import com.zdrv.service.TimeSheetService;
import com.zdrv.utility.CalcDate;

@Controller
public class TimeSheetController {

	@Autowired
	TimeSheetService service;

	@Autowired
	CompanyDao companyDao;

	@Autowired
	CompanyService companyService;

	@InitBinder
	public void initBinderForm(WebDataBinder binder) {
		//input type="date"の変換
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, "startDay",new CustomDateEditor(dateFormat, true));

		//input type="time"の変換
		SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm");
		binder.registerCustomEditor(Date.class, "startTime", new CustomDateEditor(timeFormat, true));
	}


	@GetMapping("/timeSheetAdd{workerId}")
	public String getTimeSheetAdd(Model model,
			HttpSession session) throws Exception {

		Integer admin = (Integer) session.getAttribute("admin");
		model.addAttribute("admin", admin);


		//締め日から1か月の日付を計算するためにcompanyListから締め日を取得
		Integer companyId = (Integer) session.getAttribute("companyId");
		Integer deadline = companyService.getDeadlineByCompanylist(companyId);


		//計算ようの月初、月末の日付と日数をCalcMonthに取得
		CalcMonth calcMonth = CalcDate.calcMonth(deadline);

		System.out.println(calcMonth.getStartDay());
		System.out.println((int) calcMonth.getDayDiff());

		//workerIdから対象期間の勤務情報をリストで取得
		Integer workerId = (Integer) session.getAttribute("workerId");

		List<TimeSheet> timeSheet = service.getTimeSheetByworkerId(workerId);

		//抽出した勤務情報を1か月のリストの中に入れる
		List<ShowTimeSheet> showTimeSheet = CalcDate.addMonthList(calcMonth, timeSheet);
		model.addAttribute("month", showTimeSheet);
		model.addAttribute("workerId", workerId);

		return "timeSheetAdd";
	}


	@GetMapping("/timeSheet{workerId}")
	public String getTimeSheet(Model model,
			HttpSession session) throws Exception {

		Integer admin = (Integer) session.getAttribute("admin");
		model.addAttribute("admin", admin);


		//締め日から1か月の日付を計算するためにcompanyListから締め日を取得
		Integer companyId = (Integer) session.getAttribute("companyId");
		Integer deadline = companyService.getDeadlineByCompanylist(companyId);


		//計算ようの月初、月末の日付と日数をCalcMonthに取得
		CalcMonth calcMonth = CalcDate.calcMonth(deadline);

		System.out.println(calcMonth.getStartDay());
		System.out.println((int) calcMonth.getDayDiff());

		//workerIdから対象期間の勤務情報をリストで取得
		Integer workerId = (Integer) session.getAttribute("workerId");

		List<TimeSheet> timeSheet = service.getTimeSheetByworkerId(workerId);

		//抽出した勤務情報を1か月のリストの中に入れる
		List<ShowTimeSheet> showTimeSheet = CalcDate.addMonthList(calcMonth, timeSheet);
		model.addAttribute("month", showTimeSheet);

		return "timeSheet";
	}


}
