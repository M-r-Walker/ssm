<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/public.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/register.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/jquery-ui.css" />
<style type="text/css">
table {
	border: 1px solid blue;
	width="80%";
}
</style>
</head>
<body>
<table width="100%" height="100%" border="1" cellspacing="0">
  <tr height="10%">
    <td width="30%" >左上角网站标志</td>
    <td>
      <a href="data.html"target="main">数据管理</a>
      <a href="web.html" target="main">网站管理</a>
      <a href="user.html" target="main">用户管理</a>
    </td>
  </tr>
  <tr height="90%">
    <td>
      <!-- 加左导航的内容页 -->
      <iframe name="main" src="main.html" width="100%" height="100%"></iframe>
    </td>
  </tr>
  <tr>
    <td>页脚</td>
  </tr>
  </table>
                <script>
                        if(navigator.appName == "Microsoft Internet Explorer") {
                                var vs=navigator.appVersion.split(";")[1].replace(/[ ]/g, "");
                                if(vs== "MSIE6.0" ) {
                                //      window.location = "static/ie.html";
                                }
                        }
                        jQuery(document).ready(function(){
                                TN.placeholderInit();
                        });
                </script>
	<div class="mainHeader down-shadow mainHeaderColor">
		<div class="headerContent px940 center">
			<div class="logo"></div>
			<ul class="nav">
				<li><span><a class="" href="/">首页</a></span></li>
				<li><span><a class="" href="/product">产品介绍</a></span></li>
				<li><span><a class="" href="/download">下载软件</a></span></li>
				<li><span><a class="" href="/open">开放平台</a></span></li>
				<li><span><a class="" href="/help">帮助中心</a></span></li>
				<li><span><a class="" href="/news">新闻动态</a></span></li>
				<li><span><a class="" href="/feedback">意见反馈</a></span></li>
			</ul>
		</div>
	</div>
	<div style="width: 500px; margin: 0px auto; text-align: center">
		<table align='center' border='1' cellspacing='0'>
			<tr>
				<td>cifno</td>
				<td>id</td>
				<td>name</td>
				<td>statementaddress</td>
				<td>productname</td>
			</tr>
			<c:forEach items="${cs}" var="c" varStatus="st">
				<tr class==
					"row" <c:if test="${st.count%2==0}">bgcolor="#B0E0E6"</c:if>>
					<td>${c.cifno}</td>
					<td>${c.ccapplyid}</td>
					<td>${c.cusname}</td>
					<td>${c.statementaddress}</td>
					<td>${c.productname}</td>
				</tr>
			</c:forEach>
		</table>
		<div style="text-align: right">
			<a href="?start=0">首 页</a> <a href="?start=${page.start-page.count}">上一页</a>
			<a href="?start=${page.start+page.count}">下一页</a> <a
				href="?start=${page.last}">末 页</a>
		</div>
	</div>
</body>
