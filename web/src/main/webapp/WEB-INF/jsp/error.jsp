<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String msg = (String)request.getAttribute("msg");/* 后台是怎样保存参数，前端就用对应的方法获取参数:model.addAttribute("msg", "2"); */
%>
    <%@include file="/WEB-INF/jsp/admin/common/head.jspf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript"> 
$(document).ready(function(){
	$(document).on('click','.window-mask',function(e){
		alert("sdaf");
		$('#dl').dialog('close');
	});
	
});
function ok_click(){
	window.location.href="${pageContext.request.contextPath }/regist.jsp";
}
function err_click(){
	window.location.href="${pageContext.request.contextPath }/index.jsp";
}
 
/* setTimeout("javascript:location.href='http://localhost:8080/web/index.jsp'", 3000); */ 
</script>

</head>
<body>

	<div id="dl" class="easyui-dialog" title="登录失败"
		style="width: 200px; height: 200px;"
		data-options="resizable:false,modal:true,closable:true,
    	buttons:[{text:'确定',handler:ok_click},{text:'取消',handler:err_click}]">
    	<%if(!(msg.equals("2"))) {%>
		<div>确定去注册，取消返回登录！</div>
		<%}else{ %>
		<div>注册失败，不是本行员工或员工号录入不正确,请重新注册！</div>
		<%} %>
	</div>
	<%-- <div align="center">
    <br/>
    <br/>
    <br/>    
    ${requestScope.msg}<br/> 
    <h4><a href="http://localhost:8080/web/regist.jsp" >立即跳转注册</a></h4>
</div> --%>
 
</body>
</html>