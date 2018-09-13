package com.lc.ldms.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lc.ldms.model.ccmisCcapply;
import com.lc.ldms.util.Page;
@Service
public interface ccmisCcapplyMapper {
    int deleteByPrimaryKey(String ccapplyid);

    int insert(ccmisCcapply record);

    int insertSelective(ccmisCcapply record);

    ccmisCcapply selectByPrimaryKey(String ccapplyid);

    int updateByPrimaryKeySelective(ccmisCcapply record);

    int updateByPrimaryKey(ccmisCcapply record);
    
    int total();
    
    List<ccmisCcapply> list(Page page);
}