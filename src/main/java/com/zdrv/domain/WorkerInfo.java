package com.zdrv.domain;

import lombok.Data;

@Data
public class WorkerInfo {

	private Integer companyId;
	private Integer workerId;
	private String name;
	private Integer workerClass;
	private Integer wageh;
	private Integer basicWorkingh;
	private Integer basicBreak;
	private Integer travelCost;
	private Integer travelCostMonth;
	private Integer admin;
	private String className;

}
