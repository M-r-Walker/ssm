<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:set value="${pageContext.request.contextPath }" var="ldms" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加客户信息</title>
</head>
<body>

  	<form method="post" action="${pageContext.request.contextPath }/pspCheck/addCusInfo" id="getUserInJson2">
		<table border="0" cellpadding = "0" cellspacing = 0 style = "width:100%;height:100%" >
		 <tr>
		 <td>客户名:</td><td><input type="text" name="cusName"  required="true"></td>
		 </tr>
		 <tr>
		 <td>客户号:</td><td><input type="text" name="cusId"  required="true"></td>
		 </tr>		
		 <tr>
		 <td>客户经理名:</td><td><input type="text" name="cusMngName" required="true"></td>
		 </tr>
		 <tr>
		 <td>客户经理号:</td><td><input type="text" name="cusMngId" required="true" ></td>
		 </tr>		
		<td><button type="submit">保存</button></td>
		 
		</table>
	</form>
</body>
</html>