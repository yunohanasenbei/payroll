package com.zdrv.service;

import com.zdrv.domain.Admin;

public interface AdminService {

	boolean isCorrectIdAndPassword(String loginId, String loginPass) throws Exception;
	Admin getAdminByLoginId(String loginId) throws Exception;
}
