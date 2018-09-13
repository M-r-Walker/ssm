package com.lc.ldms.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lc.ldms.dao.uapclientEmployeeMapper;
import com.lc.ldms.service.UAPClientEmployeeService;

@Service("uapClientEmployeeService")
public class UAPClientEmployeeServiceImpl implements UAPClientEmployeeService{

	@Autowired
	private uapclientEmployeeMapper uapclientEmployeeDao;
	

	@Override
	public int getEmployeeId(Integer employeeId) {
		// TODO Auto-generated method stub
		return uapclientEmployeeDao.getEmployeeId(employeeId);
	}


	@Override
	public Integer getEmployeeCountById(Integer employeeId) {
		// TODO Auto-generated method stub
		return uapclientEmployeeDao.getEmployeeCountById(employeeId);
	}
}
