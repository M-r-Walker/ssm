package com.lc.listener;

import java.util.HashMap;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class SessionListener implements HttpSessionBindingListener {
	
	//保存username和session的映射
	public static HashMap<String,HttpSession> MAP1 = new HashMap<String,HttpSession>();
	//保存sessionID和username的映射
	public static HashMap<String,String> MAP2 = new HashMap<String,String>();
	@Override
	public void valueBound(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	public static void userLogin(HttpSession session, String sUserName) {
		// TODO Auto-generated method stub
        //已登录
        if(MAP2.containsValue(sUserName)){
        	HttpSession l_session = MAP1.get(sUserName);
           //不同浏览器,同一用户(强制下线前一个)
           if(l_session != null && l_session.getId() != session.getId()){
              MAP1.remove(sUserName);
              MAP2.remove(l_session.getId());
              l_session.setAttribute("msg", "您的账号已在另一处登录!");
              MAP2.put(session.getId(), sUserName);
              MAP1.put(sUserName, session);
           }
           //同一浏览器，同一用户(不做任何变动)
           
        }else{
           //未登录
           if(MAP2.containsKey(session.getId())){
              //同一浏览器，不同用户(不做任何变动)
           }else{
              //不同浏览器，不同用户(正常添加)
              MAP2.put(session.getId(), sUserName);
              MAP1.put(sUserName, session);
           }
        }
	}

}
