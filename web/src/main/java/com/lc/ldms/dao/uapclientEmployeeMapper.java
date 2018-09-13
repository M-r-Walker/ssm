package com.lc.ldms.dao;

import com.lc.ldms.model.uapclientEmployee;

public interface uapclientEmployeeMapper {
    int deleteByPrimaryKey(Integer employeeid);

    int insert(uapclientEmployee record);

    int insertSelective(uapclientEmployee record);

    uapclientEmployee selectByPrimaryKey(Integer employeeid);

    int updateByPrimaryKeySelective(uapclientEmployee record);

    int updateByPrimaryKey(uapclientEmployee record);

	int getEmployeeId(Integer employeeId);

	Integer getEmployeeCountById(Integer employeeId);
}