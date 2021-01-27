package com.zdrv.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.zdrv.domain.WorkerInfo;

@Mapper
public interface WorkerDao {

	List<WorkerInfo> findAll() throws Exception;
	WorkerInfo findById(Integer workerId) throws Exception;
	void insert(WorkerInfo worker) throws Exception;
	void update (WorkerInfo worker) throws Exception;


}
