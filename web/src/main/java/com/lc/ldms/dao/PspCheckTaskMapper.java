package com.lc.ldms.dao;

import java.util.List;

import com.lc.ldms.model.PspCheckTask;

public interface PspCheckTaskMapper {
    int deleteByPrimaryKey(String pspTaskNo);

    int insert(PspCheckTask record);

    int insertSelective(PspCheckTask record);

    PspCheckTask selectByPrimaryKey(String pspTaskNo);

    int updateByPrimaryKeySelective(PspCheckTask record);

    int updateByPrimaryKey(PspCheckTask record);

	List<PspCheckTask> getPspCheckTaskList(PspCheckTask pspCheckTask);

	Integer addCusInfo(PspCheckTask pspCheckTask);

	Integer updateCusInfo(PspCheckTask pspCheckTask);

	Integer deleteCusInfo(String pspTaskNo);
}