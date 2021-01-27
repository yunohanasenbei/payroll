package com.zdrv.domain;

import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data
public class Admin {

	private Integer workerId;

	@NotBlank
	private String loginId;

	@NotBlank
	private String loginPass;

	private WorkerInfo workerInfo;
}
