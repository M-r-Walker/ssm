<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head> 
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>员工注册</title> 
<!-- <link href="/css/regist.css" rel="stylesheet" type="text/css" />  -->
</head>  
<style type="text/css">
body{
background-image:url(${pageContext.request.contextPath }/images/sunflower.jpg);
background-size:cover;
}
</style>
<body>  
<!--  <div style="float:left;">提示：请使用员工号注册</div><br/> -->
 <div colspan="0" align="center" width="70" height="30" >提示：请使用员工号注册</div><br/>

    <form action="${pageContext.request.contextPath }/registEmployee/regist" id="getUserInJson2">  
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
						<td><input type="submit" value="注册" ></td>
					</tr>
		 		
		 		</table>
		 	</td>
		 </tr>
		</table>
 
    </form>  
</body>  
</html>  