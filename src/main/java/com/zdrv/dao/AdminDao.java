package com.zdrv.dao;

import org.apache.ibatis.annotations.Mapper;

import com.zdrv.domain.Admin;

@Mapper
public interface AdminDao {

	Admin selectByLoginId(String loginId) throws Exception;
}
