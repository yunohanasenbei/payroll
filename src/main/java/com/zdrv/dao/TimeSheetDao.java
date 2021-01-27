package com.zdrv.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.zdrv.domain.TimeSheet;

@Mapper
public interface TimeSheetDao {

	List<TimeSheet> selectByworkerId (Integer workerId) throws Exception;
	List<TimeSheet> selectByworkerIdOfMonth (Integer workerId) throws Exception;


}
