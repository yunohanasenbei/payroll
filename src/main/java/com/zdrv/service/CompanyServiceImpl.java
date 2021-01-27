package com.zdrv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zdrv.dao.CompanyDao;
import com.zdrv.domain.Company;

@Service
public class CompanyServiceImpl implements CompanyService{

	@Autowired
	CompanyDao companyDao;

	@Override
	public Integer getDeadlineByCompanylist(Integer companyId) throws Exception {

		Company company = companyDao.findById(companyId);

		return company.getCompanyDeadline();
	}

}
