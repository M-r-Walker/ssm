package com.lc.ldms.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lc.ldms.dao.ccmisCcapplyMapper;
import com.lc.ldms.model.ccmisCcapply;
import com.lc.ldms.service.ccapplyService;
import com.lc.ldms.util.Page;

  
@Service("userService")  
public class ccapplyServiceImpl implements ccapplyService {  
    @Resource  
    private ccmisCcapplyMapper userDao;  
    /**
     * 方法查询结果放入缓存，再次查询从缓存中
     * 读取
     * */
    @Override  
    public ccmisCcapply getUserById(String userId) {  
        // TODO Auto-generated method stub  
        return this.userDao.selectByPrimaryKey(userId);  
    }
    @Override
    public List<ccmisCcapply> list(Page page){
    	return this.userDao.list(page);
    }
    public int total() {
    	return this.userDao.total();
    }

}  