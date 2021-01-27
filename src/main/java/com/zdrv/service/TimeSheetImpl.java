package com.zdrv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zdrv.dao.TimeSheetDao;
import com.zdrv.domain.TimeSheet;

@Service
public class TimeSheetImpl implements TimeSheetService {


	@Autowired
	TimeSheetDao dao;

	@Override
	public List<TimeSheet> getTimeSheetByworkerId(Integer workerId) throws Exception {


		return dao.selectByworkerId(workerId);
	}


}
