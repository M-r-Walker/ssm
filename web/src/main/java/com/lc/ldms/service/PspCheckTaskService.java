package com.lc.ldms.service;

import java.util.List;

import com.lc.ldms.model.PspCheckTask;

public interface PspCheckTaskService {
	//查询
	List<PspCheckTask> getPspCheckTaskList(PspCheckTask pspCheckTask) ;
	// 添加
	public Integer addCusInfo(PspCheckTask pspCheckTask);

	// 更新
	public Integer updateCusInfo(PspCheckTask pspCheckTask);

	// 删除
	public Integer deleteCusInfo(String pspTaskNo);
}
