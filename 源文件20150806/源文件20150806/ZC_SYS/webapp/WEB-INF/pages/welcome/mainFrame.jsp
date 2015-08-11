<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8" />
    <title>aaa</title>
  </head>
  <frameset cols="220,*" framespacing="0" frameborder="yes" border="0" id="main">
      <frame src="menu.do" name="menuFrame" id="menuFrame" scrolling="auto"/>
      <frame src="desk.do?jump=${jump}" name="workFrame" id="workFrame" scrolling="auto"/>
  </frameset>
    <noframes><body background=#F7FDFC;>
    </body>
  </noframes>
</html>
