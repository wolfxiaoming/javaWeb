<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-tags" prefix="logic" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String name = (String)request.getAttribute("name");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
    <base href="<%=basePath%>">
    
    <title>bean:cookieTag测试</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<logic:a href="index.jsp">sss</logic:a>
  </head>

	<body>
		<div align="center">
			<h1>bean:cookieTag测试</h1>
		</div>
		<s:bean name="liumx.Person" var="person" >
       <s:param name="man" value="'男人'"  />
        我的性别是：    <s:property value="man"/><br>
    </s:bean>    
	 <s:bean name="liumx.Person" var="person" >
       <s:param name="woman" value="'女人'"></s:param>
    </s:bean>
       我的性别是：<s:property value="#person.woman"/><br>
	<s:property value="#person.fromJavaBean()"/>
	<s:property value="#person.fromJavaBeanParam('小明')"/> 
	 <s:file name="file" label="上传文件"></s:file><br>
	  <s:select list="#{'1':'博士','2':'硕士'}" name="edu" label="学历" listKey="key" listValue="value"></s:select><br>
	  <s:checkboxlist list="#{1:'java',2:'css',3:'html',4:'struts2',5:'spring'}" label="喜欢的编程语言" name="boxs" value="{1,2}"></s:checkboxlist><br>
	</body>
</html>
