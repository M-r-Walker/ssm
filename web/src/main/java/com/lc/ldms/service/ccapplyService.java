package com.lc.ldms.service;

import java.util.List;

import com.lc.ldms.model.ccmisCcapply;
import com.lc.ldms.util.Page;

public interface ccapplyService {
	public ccmisCcapply getUserById(String userId);
	
	int total();
	
	List<ccmisCcapply> list(Page page);
}
