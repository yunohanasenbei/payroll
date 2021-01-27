package com.zdrv.domain;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Company {


	private Integer companyId;

	@NotNull
	private String companyName;

	@NotNull
	private Integer paidLeaveCalculationId;

	@NotNull
	@Min(1)
	@Max(31)
	private Integer companyDeadline;

	private MultipartFile upfile;

	private String companyIcon;
}
