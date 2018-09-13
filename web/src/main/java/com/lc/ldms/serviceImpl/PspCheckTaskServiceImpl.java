package com.lc.ldms.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lc.ldms.dao.PspCheckTaskMapper;
import com.lc.ldms.model.PspCheckTask;
import com.lc.ldms.service.PspCheckTaskService;
@Service("pspCheckTaskService")
public class PspCheckTaskServiceImpl implements PspCheckTaskService{

	@Resource
	private PspCheckTaskMapper pspCheckTaskDao;
	@Override
	public List<PspCheckTask> getPspCheckTaskList(PspCheckTask pspCheckTask) {
		// TODO Auto-generated method stub
		return pspCheckTaskDao.getPspCheckTaskList(pspCheckTask);
	}
	@Override
	public Integer addCusInfo(PspCheckTask pspCheckTask) {
		// TODO Auto-generated method stub
		return pspCheckTaskDao.addCusInfo(pspCheckTask);
	}
	@Override
	public Integer updateCusInfo(PspCheckTask pspCheckTask) {
		// TODO Auto-generated method stub
		return pspCheckTaskDao.updateCusInfo(pspCheckTask);
	}
	public Integer deleteCusInfo(String pspTaskNo) {
		// TODO Auto-generated method stub
		return pspCheckTaskDao.deleteCusInfo(pspTaskNo);
	}

}
