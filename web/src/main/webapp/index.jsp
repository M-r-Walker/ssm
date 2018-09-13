<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" language="java" %>
<html>
<c:set value="${pageContext.request.contextPath }" var="ldms" />
<style type="text/css">
body{
background-image:url(${pageContext.request.contextPath }/images/butterfly.jpg);
background-size:cover;
}
</style>

<body>

  	<form method="post" action="${pageContext.request.contextPath }/registEmployee/login" id="getUserInJson2">
		<table border="0" cellpadding = "0" cellspacing = 0 style = "width:100%;height:100%" >
		 <tr>
		 	<td style="width:100%;" align = "center" valign = "middle">
		 		<table style = "backageground-color:lighskyblue;margin:atuo">
					<tr>
						<td>用户名</td>
						<td><input type="text"  name="employeeid" placeholder="员工号"></td>
					</tr>
					<tr>
						<td>密码</td>
						<td><input type="password" name="password" placeholder="密码"></td>
					</tr>
					<tr>
						<td colspan="0" align="center" width="70" height="30" >
						<td><input type="submit" value="登录" ></td>
					</tr>
		 		
		 		</table>
		 	</td>
		 </tr>
		</table>
	</form>

<%-- <a href="${pageContext.request.contextPath }/login.jsp">去登录</a>   --%>
</body>
</html>
