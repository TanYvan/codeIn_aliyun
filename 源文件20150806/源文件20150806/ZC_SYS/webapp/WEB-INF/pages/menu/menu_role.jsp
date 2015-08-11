<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
	</head>
	<frameset cols="300,*" frameborder="yes" border="1" framespacing="0">
		<frame src="${ctx}/menu/menuTree.do?roleCode=${roleCode}" name="menu_tree" id="menu_tree" />
		<frame src="${ctx}/menu/menuEmpty.do" name="menu_edit" id="menu_edit" />
	</frameset>
	<noframes>
		<body>
		</body>
	</noframes>
</html>
