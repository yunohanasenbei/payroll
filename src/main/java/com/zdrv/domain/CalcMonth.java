package com.zdrv.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CalcMonth {

	private Date today;
	private Date startDay;
	private Date endDay;
	private long dayDiff;

}
