<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#0E3F6A">
	<tr>
		<td  align="center" class="copyright_font"><s:text name="welcome.bottom.copyright_1"></s:text>：Copyright©   <s:text name="welcome.bottom.copyright_2"></s:text></td>
	</tr>
	<tr>
		<td  align="center" valign="middle" class="copyright_font" ><s:text name="welcome.bottom.copyright_3"></s:text></td>
	</tr>
</table>
</body>
</html>
