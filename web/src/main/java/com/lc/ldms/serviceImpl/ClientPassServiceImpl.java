package com.lc.ldms.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lc.ldms.dao.clientPassMapper;
import com.lc.ldms.model.clientPass;
import com.lc.ldms.service.ClientPassService;

@Service("clientPassService")
public class ClientPassServiceImpl implements ClientPassService{

	@Autowired
	private clientPassMapper clientpassMapper;
	
	@Override
	public clientPass login(int employeeid, String password) {
		// TODO Auto-generated method stub
		return clientpassMapper.login(employeeid,password);
	}

	@Override
	public void regist(clientPass clientpass) {
		// TODO Auto-generated method stub
		clientpassMapper.insert(clientpass);
	}

	@Override
	public int getNumOfClient() {
		// TODO Auto-generated method stub
		return clientpassMapper.getNumOfClient();
	}
}
