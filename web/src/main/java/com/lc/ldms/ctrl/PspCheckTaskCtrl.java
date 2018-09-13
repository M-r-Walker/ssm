package com.lc.ldms.ctrl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.lc.ldms.model.PspCheckTask;
import com.lc.ldms.service.PspCheckTaskService;
import com.lc.ldms.util.ResponseUtil;

@Controller
@RequestMapping("/pspCheck")
public class PspCheckTaskCtrl {

	@Resource
	private PspCheckTaskService pspCheckTaskService;
	@RequestMapping("/firstCheck")
	public ModelAndView queryList(@RequestParam("cusType")String cusType,
			@RequestParam(value = "page", required = false) String page,
            @RequestParam(value = "rows", required = false) String rows,
            HttpServletRequest request,
            HttpServletResponse response
			) throws Exception{
		PspCheckTask pspCheckTask =new PspCheckTask();
		ModelAndView mav = new ModelAndView();
		String chkType = "01";
		request.getSession();
		pspCheckTask.setCusType(request.getParameter("cusType"));
		pspCheckTask.setChkType(chkType);
//		pspCheckTask.setCrtDate(dateTime());
		pspCheckTask.setCrtDate("");	
		String mng=request.getParameter("cusMngName");
		if (!"".equals(request.getParameter("cusName")) && request.getParameter("cusName")!=null) {
			pspCheckTask.setCusName(request.getParameter("cusName"));
		}
		if (!"".equals(request.getParameter("cusId")) && request.getParameter("cusId")!=null) {
			pspCheckTask.setCusId(request.getParameter("cusId"));
		}	
		if (!"".equals(request.getParameter("cusMngId")) && request.getParameter("cusMngId")!=null) {
			pspCheckTask.setCusMngId(request.getParameter("cusMngId"));
		}	
		if (!"".equals(request.getParameter("cusMngName")) && request.getParameter("cusMngName")!=null) {
			pspCheckTask.setCusMngName(request.getParameter("cusMngName"));
		}	
		if (!"".equals(request.getParameter("pspTaskNo")) && request.getParameter("pspTaskNo")!=null) {
			pspCheckTask.setPspTaskNo(request.getParameter("pspTaskNo"));
		}	

		List<PspCheckTask> pspCheckTaskList = pspCheckTaskService.getPspCheckTaskList(pspCheckTask);
		mav.setViewName("admin/checkTask/firstCheck");
		mav.addObject("pspCheckTaskList",pspCheckTaskList);
		
        //创建json对象
        JSONObject result = new JSONObject();
        //设置json序列化日期格式
        JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
        //禁止对象循环引用
        //使用默认日期格式化
        String jsonStr = JSONObject.toJSONString(pspCheckTaskList,
                SerializerFeature.DisableCircularReferenceDetect,
                SerializerFeature.WriteDateUseDateFormat);
        //得到json数组
        JSONArray array = JSON.parseArray(jsonStr);
        //把结果放入json
        result.put("rows", array);
        result.put("total", pspCheckTaskList.size());
        //返回
        ResponseUtil.write(response, result);
		return mav;
	}
	
	public String dateTime() throws Exception {
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		return sdf.format(date);
	}
	@RequestMapping(value="/searchCuscom",method = RequestMethod.POST)
	public String searchCuscom(@RequestParam(value = "cusType" , required = false)String cusType,
			@RequestParam(value = "page", required = false) String page,
            @RequestParam(value = "rows", required = false) String rows,
            HttpServletRequest request,
            HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		PspCheckTask pspCheckTask =new PspCheckTask();
		pspCheckTask.setCusName(request.getParameter("cusName"));
		pspCheckTask.setCusId(request.getParameter("cusId"));
		pspCheckTask.setCusMngId(request.getParameter("cusMngId"));
		pspCheckTask.setCusMngName(request.getParameter("cusMngName"));
		pspCheckTask.setPspTaskNo(request.getParameter("pspTaskNo"));
		pspCheckTask.setChkType(request.getParameter("chkType"));
		List<PspCheckTask> pspCheckTaskList = pspCheckTaskService.getPspCheckTaskList(pspCheckTask);
		String message="";
		if("01".equals(request.getParameter("chkType"))) {
			//mav.setViewName("firstCheck.jsp");
			message="firstCheck.jsp";
		}else {
			//mav.setViewName("/admin/checkTask/regularCheck");
			message="regularCheck.jsp";
		}
		mav.setViewName(message);
		mav.addObject("pspCheckTaskList",pspCheckTaskList);
        //创建json对象
        JSONObject result = new JSONObject();
        //设置json序列化日期格式
        JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
        //禁止对象循环引用
        //使用默认日期格式化
        String jsonStr = JSONObject.toJSONString(pspCheckTaskList,
                SerializerFeature.DisableCircularReferenceDetect,
                SerializerFeature.WriteDateUseDateFormat);
        //得到json数组
        JSONArray array = JSON.parseArray(jsonStr);
        //把结果放入json
        result.put("rows", array);
        result.put("total", pspCheckTaskList.size());
        //返回
        ResponseUtil.write(response, result);
		return message;
	}
	@RequestMapping("/addCusInfo")
	public String addCusInfo(@RequestParam("flag")int flag,
			PspCheckTask pspCheckTask,
            HttpServletRequest request,
            HttpServletResponse response
			) 
			throws Exception {
		
	       int resultTotal = 0; // 接收返回结果记录数
	        if (flag == 1) { // flag=1表示插入
	    		String pspTaskNo = "JCLS";
	    		try {
	    			pspTaskNo += dateTime();
	    		} catch (Exception e) {
	    			e.printStackTrace();
	    		}
	        	pspCheckTask.setPspTaskNo(pspTaskNo);
	        	pspCheckTask.setCusType(request.getParameter("cusType"));
	        	pspCheckTask.setChkType(request.getParameter("chkType"));
	            resultTotal = pspCheckTaskService.addCusInfo(pspCheckTask);
	        } else { // flag=0表示修改
	            resultTotal = pspCheckTaskService.updateCusInfo(pspCheckTask);
	        }

	        JSONObject result = new JSONObject();
	        if (resultTotal > 0) {
	            result.put("success", true);
	        } else {
	            result.put("success", false);
	        }
	        ResponseUtil.write(response, result);
	        return null;
	}
	@RequestMapping("/deleteCusInfo")
	public String deleteCusInfo(@RequestParam(value = "ids", required = false) String ids,
            HttpServletResponse response) throws Exception {
        //分割字符串得到id数组
        String[] idsStr = ids.split(",");
        JSONObject result = new JSONObject();
        for (int i = 0; i < idsStr.length; i++) {
            String id = idsStr[i];
             //其实在这里我们要判断该博客类别下面是否有博客 如果有就禁止删除博客类别 ，等我们完成博客对应的操作再来完善
            pspCheckTaskService.deleteCusInfo(id);
        }
        result.put("success", true);
        ResponseUtil.write(response, result);
        return null;
	}
}
