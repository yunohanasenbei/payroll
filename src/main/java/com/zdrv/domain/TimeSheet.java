package com.zdrv.domain;

import java.sql.Time;
import java.util.Date;

import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class TimeSheet {

	private Integer num;
	@NotNull
	private Integer worker_id;
	private Date day;
	private Time begin;
	private Time finish;
	private Time breakTime;
	private Time workingH;
	private Integer wageH;
	private Integer paidLeaveNum;

}
