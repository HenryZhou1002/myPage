<%@ page 
language="java" 
import="java.util.*" 
import="java.util.Date"
contentType="text/html; charset=utf-8"
autoFlush = "true"
pageEncoding="utf-8"

%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP Study Page1</title>
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
  
  <%@include file="/nav2.html" %>
  <br/>
  
  <!-- class=“ ** ”  这里一定要加上双引号 -->
  <jsp:useBean id="student" scope="page" class="mine.Student"/>
  <br>
  	这是jsp的输出结果<br>
  修改名字之前的：<%=student.getName() %><br>
  <%student.setName("will"); %>
  修改完了名字后：<%=student.getName() %><br>
  
  
  
    <h1>这是第一个servlet小程序</h1>
    
    <!-- 获得一个请求 -->
    <a href="servlet/HelloServlet">Get方式 Servlet请求</a>
  	<form action="servlet/HelloServlet" method="post">
  		<input type="submit" value="Post方式请求HelloServlet"/>
  	</form>
  	
  	<%! int a = 5, b = 10;; %>
  	a = <%=a %>
  	<br/>
  	Now time is:<% Date d = new java.util.Date(); 
  		out.println(d);
  	%>
  	<br>

	循环5次输出“你好”。<br>
  	<% int a = 5;
  		for(int i = 0; i<a; i++)
  		{
  	 %>
  	 你好<br>
  	 <% } %>
  	 
  	 <%= 2 %><br>

  	
  	<%@page errorPage="ErrorPage.jsp" %>
  	<%! int i = 0; %>
  	7 / 1 = <%=7/1 %>
  	errorPage.jsp:<%@page isErrorPage="true" %>
  	<%=exception %>

  	
  	<table summary="我是摘要">
	<caption>我是表头的标题</caption>
	<tr>
		<td>1第一个</td>
		<td>1第二个</td>
		<td>1第三个</td>
		<td>1第四个</td>
		<td>1第五个</td>
		<td>1第六个</td>
		<td>1第七个</td>
	</tr>
	<tr>
		<td>2第一个</td>
		<td>2第二个</td>
		<td>2第三个</td>
		<td>2第四个</td>
		<td>2第五个</td>
		<td>2第六个</td>
		<td>2第七个</td>
	</tr>
 </table>

 	<!--添加链接-->
 	<!--加   http://www.baidu.com   -->
 	<a href="http://www.baidu.com" title="鼠标滑过" target="_blank">百度</a>  <br>
  
  </body>
</html>
