package com.lc.ldms.ctrl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lc.ldms.service.UAPClientEmployeeService;
import com.lc.listener.SessionListener;
import com.lc.ldms.model.clientPass;
import com.lc.ldms.service.ClientPassService;

@Controller  
@RequestMapping("/registEmployee")
public class uapclientEmployeeCtrl {

	@Resource  
	private UAPClientEmployeeService uapClientEmployeeService;
	@Resource
	private ClientPassService clientPassService;
	@RequestMapping("regist")
	public String regist(clientPass clientpass/*HttpServletRequest request*/,
			HttpSession session,
			Model model) {
		
		
		// 判断是否本行客户经理 getEmployeeId
		// uapClientEmployeeService.getEmployeeId(Integer.valueOf(request.getParameter("employeeid")));
		Integer employeeId = clientpass.getEmployeeid();
		if (employeeId != null) {//判断输入的员工号是否为空
			int employeeIdCount = uapClientEmployeeService.getEmployeeCountById(employeeId);
			if (employeeIdCount != 0) {//判断数据库中有无该员工号
				int sequence = clientPassService.getNumOfClient();
				clientpass.setSequence(sequence + 1);
				clientPassService.regist(clientpass);
				model.addAttribute("employeeId",employeeId);
				model.addAttribute("msg", "注册成功");
				return "success";
			} else {
				model.addAttribute("msg", "2");
				return "error";
			}
		} else {
			model.addAttribute("msg", "员工号录入不正确！");

			return "error";
		}
	}
	
    @RequestMapping("login")  
    public String login(/*Integer employeeId,String password*/HttpServletRequest request,Model model,
    		HttpSession session){  
        int employeeId = Integer.valueOf(request.getParameter("employeeid"));
        String	password=request.getParameter("password");
            
        clientPass clientpass = this.clientPassService.login(employeeId, password);
        if(clientpass != null && clientpass.getEmployeeid() != null) {
        	 model.addAttribute("employeeId",employeeId);
        	 System.out.println("客户经理/密码："+employeeId+",/****，登陆成功!\n"); 
//        	 SessionListener.userLogin(session, String.valueOf(employeeId));
        	 return "success"; 
        }else {
        	model.addAttribute("msg", "请先注册！");
        	return "error";
        }
         
    }  
    /*
     * 判断用户是否重复登录
     */
    @RequestMapping(value="/checkUserOnline")
    @ResponseBody
    public void checkUserOnline(HttpServletRequest request,HttpServletResponse response) throws IOException{
        HttpSession session=request.getSession();  
        PrintWriter out = response.getWriter();
        String msg = "";
        if(session.getAttribute("msg") != null){
           msg = session.getAttribute("msg").toString();
           System.out.println(msg);
        }
        out.print(session.getAttribute("msg"));
    }
    /*
     * 注销
     * */
    @RequestMapping("/logout")
    public String logout(HttpSession session){
    	SessionListener.MAP2.remove(session.getId());
    	//session.removeAttribute(session.get);
        return "logout";
    }
}
