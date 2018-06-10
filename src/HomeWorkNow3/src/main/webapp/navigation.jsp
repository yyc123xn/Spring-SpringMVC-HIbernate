<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "com.yyc.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% User user=(User)session.getAttribute("user");  
if(user!=null){%>  
  
<h5>导航栏  用户名：${user.username }           
<c:if test="${user.status==0}">状态：学生   年级：${user.grade }</c:if>
<c:if test="${user.status==1}">状态：老师</c:if></h5>
<a href = "${pageContext.servletContext.contextPath}/users/${user.userId}" >编辑用户信息</a>
<a href = "${pageContext.servletContext.contextPath}/users/${user.userId}/courses" >我的课程</a>
<a href = "${pageContext.servletContext.contextPath}/signIn" >退出登录</a>
<c:if test="${user.status==1}"><a href = "${pageContext.servletContext.contextPath}/courses" >创建课程</a></c:if>

  
<%}else{
     response.sendRedirect(request.getContextPath()+"/signIn.jsp");
     return;
}%> 
</body>
</html>