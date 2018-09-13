package com.lc.ldms.service;

import com.lc.ldms.model.clientPass;

public interface ClientPassService {

	//注册
	void regist(clientPass clientpass);
	//登录
	clientPass login(int employeeid,String password);
	int getNumOfClient();
}
