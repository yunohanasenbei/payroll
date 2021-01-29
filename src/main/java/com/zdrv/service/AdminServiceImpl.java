package com.zdrv.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zdrv.dao.AdminDao;
import com.zdrv.domain.Admin;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDao dao;

	@Override
	public boolean isCorrectIdAndPassword(String loginId, String loginPass) throws Exception {

		Admin admin = dao.selectByLoginId(loginId);
		System.out.println(admin);

		//ログインIDが正しいかチェック
		if(admin == null) {
			return false;
		}

		//パスワードが正しいかチェック
		if(!BCrypt.checkpw(loginPass, admin.getLoginPass())) {
			return false;
		}

		return true;
	}

	@Override
	public Admin getAdminByLoginId(String loginId) throws Exception {

		
		return dao.selectByLoginId(loginId);
	}

}
