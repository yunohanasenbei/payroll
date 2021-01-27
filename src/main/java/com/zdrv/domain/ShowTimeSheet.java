package com.zdrv.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ShowTimeSheet {

	private Date calcDay;
	private TimeSheet timeSheet;
}
