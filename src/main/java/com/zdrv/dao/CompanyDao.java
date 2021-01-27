package com.zdrv.dao;


import org.apache.ibatis.annotations.Mapper;

import com.zdrv.domain.Company;

@Mapper
public interface CompanyDao {


	Company findById(Integer id) throws Exception;
	void insert(Company company) throws Exception;
	void update (Company company) throws Exception;

}
