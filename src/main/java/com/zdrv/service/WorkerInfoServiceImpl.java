package com.zdrv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zdrv.dao.WorkerDao;
import com.zdrv.domain.WorkerInfo;

@Service
@Transactional
public class WorkerInfoServiceImpl implements WorkerInfoService{

	@Autowired
	WorkerDao dao;

	@Override
	public void addWorkerInfo(WorkerInfo worker) throws Exception {

		dao.insert(worker);

	}


}
