package com.zdrv.service;

import java.util.List;

import com.zdrv.domain.TimeSheet;

public interface TimeSheetService {


	List<TimeSheet> getTimeSheetByworkerId (Integer workerId) throws Exception;


}
