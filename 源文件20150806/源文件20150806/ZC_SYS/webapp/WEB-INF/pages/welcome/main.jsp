<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title></title>
    <meta content="text/html; charset=utf8" http-equiv="Content-Type">
</head>
<frameset framespacing="0" border="0" cols="*" frameborder="no" rows="90,*,30">
<FRAME id="topFrame"  noResize src="top.do" name="topFrame" scrolling=no>
<FRAME id="mainFrame" src="mainFrame.do?jump=${jump}" name="mainFrame" scrolling=no>
<FRAME id="bottomFrame" noResize src="bottom.do" name="bottomFrame" scrolling=no></frameset>
<noframes>
</noframes>
</html>