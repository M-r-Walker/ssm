<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<%@include file="/WEB-INF/jsp/admin/common/head.jspf" %>
<head>  
<!-- <meta http-equiv="refresh" content="5"> --><!-- content="5" 是时间控制，表示每隔5秒刷新一次页面 -->
<!--content="1 是时间控制,表示1秒后自动跳转到要跳转的页面  -->
<!-- <meta http-equiv="refresh" content="1;url=/web/user/showUser"> -->
<%-- <meta http-equiv="refresh" content="1;url=${pageContext.request.contextPath}/menu.jsp"> --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  

<%String employeeId = request.getParameter("employeeid"); %>
<title>登录成功</title>  
<script type="text/javascript">
	$(document).ready(function(){
		$(document).on('click','.window-mask',function(e){
			$('#dl').dialog('close');
		});
	});
	function ok_click(){
		window.location.href="${pageContext.request.contextPath }/user/menu?employeeId=<%=employeeId%>";
	}
</script>
<script type="text/javascript">
   $(document).ready(function(){
      //setInterval("checkUserOnline()",5000); //每隔5秒判断一次
   })
   
   function checkUserOnline(){
      var msg = "";
      $.ajax({
        type : "POST",
        url : "${ldms}/registEmployee/checkUserOnline",
        data : {},
        async: false,
        success : function(data){
           msg = data;
        }
      });
      if (msg == 'null' || msg == '' || msg == 'undefined'){
         return;
      }else{
         //调用你的注销用户方法
         var url="${ldms}/registEmployee/logout";
         $.get(url,function(data){});
      }
   }
</script>
</head>  
<body class="temp_page">  

    <div id="dl" class="easyui-dialog" title="登录成功" style="width:300px; height:180px; padding:10px 20px"
    	data-options="resizable:false,modal:true,closable:true,
    	buttons:[{text:'确定',handler:ok_click}]">
    	<div align="center"><font size="6">欢迎您，${employeeId}！</font></div>
    </div>
</body>  
</html>  