package com.lc.ldms.ctrl;

import java.util.List;

import javax.annotation.Resource;  
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lc.ldms.model.ccmisCcapply;  
import com.lc.ldms.service.ccapplyService;
import com.lc.ldms.util.Page;  
  
@Controller  
@RequestMapping("/user")  
public class ccapplyCtrl {  
    @Resource  
    private ccapplyService userService;  
    private static Logger log=LoggerFactory.getLogger(ccapplyCtrl.class);  
    @RequestMapping(value = "/view")  
    public String toIndex(HttpServletRequest request,Model model){  
        String userId = request.getParameter("id");  
        ccmisCcapply user = this.userService.getUserById(userId);  
        log.debug(user.toString());
        model.addAttribute("user", user);  
        return "view";  
    }  
    
    @RequestMapping("/showUser")
    public ModelAndView showUser(Page page) {
    	ModelAndView mav = new ModelAndView();
    	List<ccmisCcapply> cs = userService.list(page);
    	
    	int total = userService.total();
    	page.caculateLast(total);
    	mav.addObject("cs",cs);
    	mav.setViewName("showUser");
    	
    	return mav;
    }
    @RequestMapping("/menu")
    public ModelAndView menu(){
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("menu");
    	return mav;
    }
} 
