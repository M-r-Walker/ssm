package com.lc.ldms.dao;

import org.apache.ibatis.annotations.Param;

import com.lc.ldms.model.clientPass;

public interface clientPassMapper {
    int deleteByPrimaryKey(Integer employeeid);

    int insert(clientPass record);

    int insertSelective(clientPass record);

    clientPass selectByPrimaryKey(Integer employeeid);

    int updateByPrimaryKeySelective(clientPass record);

    int updateByPrimaryKey(clientPass record);

	int getNumOfClient();

	clientPass login(@Param("employeeid")int employeeid, @Param("password")String password);
}