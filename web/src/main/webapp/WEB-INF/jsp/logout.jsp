<%@ page contentType="text/html" pageEncoding="UTF-8" %>  
<html>  
<%@include file="/WEB-INF/jsp/admin/common/head.jspf" %>
 <head>   
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
  <title>注销页面 - JAVAWEB.CC</title>  
  <script type="text/javascript">
	$(document).ready(function(){
		$(document).on('click','.window-mask',function(e){
			$('#tc').dialog('close');
		});
	});
	function ok_click(){
		window.location.href="${pageContext.request.contextPath }/index.jsp";
	}
</script>
 </head>  
 <body>   
  <%-- 注销前 SessionID 为：<%= session.getId() %> <br /> 属性为：<%= session.getAttribute("employeeId") %> <br />   --%>
  <%  
   response.setHeader("refresh", "2; URL = ../index.jsp");  // 定时跳转  
  %>  
<%--   注销后 SessionID 为：<%= session.getId() %> 属性为： <br />  
  <h3>您已成功推出本系统，两秒钟后跳转到登陆页</h3>  
  <h3>如果没有自动跳转，请点击<a href="../index.jsp">这里</a></h3>  --%> 
  
      <div id="tc" class="easyui-dialog" title="退出成功" style="width:300px;height:200px;"
    	data-options="resizable:false,modal:true,closable:true,
    	buttons:[{text:'确定',handler:ok_click}]">
    	<div>已成功退出系统，两秒后跳转到登陆页</br>如果没有自动跳转，请点击确定</div>
    </div>
 </body>  
</html> 