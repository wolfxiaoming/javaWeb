<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body>
    This is my JSP page. <br>
    <%
    //使用pageContext设置属性，该属性默认在page范围内
pageContext.setAttribute("page", "hello");
//使用request设置属性，该属性默认在request范围内
request.setAttribute("request", "request");	
session.setAttribute("session", "session");
application.setAttribute("application", "application");

out.println(pageContext.getAttributesScope("page") +"<br>");
out.println(pageContext.getAttributesScope("request") +"<br>");
out.println(pageContext.getAttributesScope("session") +"<br>");
out.println(pageContext.getAttributesScope("application") +"<br>");

%>
<%=request.getContextPath()%>
<form name="form" id="form" method = "post" action="<%=request.getContextPath()%>/liumx">
	<input type="text" name="content" value="123"></input>
	<input type="submit" name="sub" id="sub" value="提交"></input>
</form>
  </body>
</html>


