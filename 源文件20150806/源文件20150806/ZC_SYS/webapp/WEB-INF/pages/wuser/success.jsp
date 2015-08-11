<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link href="css/css.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="${ctx}/common/DatePicker/WdatePicker.js"></script>
		<link rel="stylesheet" type="text/css" href="${ctx}/easyui/themes/default/easyui.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/easyui/themes/icon.css" />
		<script type="text/javascript" src="${ctx}/easyui/jquery-1.8.0.min.js"></script>
		<script type="text/javascript" src="${ctx}/easyui/jquery.easyui.min.js"></script>
	</head>
	<body>
		<table width="98%" border="0" border="0" cellspacing="0"
			cellpadding="0">
			<tr>
				<td align="center" bgcolor="#FFFFFF" class="font5">
					<s:text name="wuser.myInfo.user_code"></s:text>：${code}
					<a href="${ctx}/welcome/main.do"><s:text name="common.toSys"></s:text></a>
				</td>
			</tr>
		</table>
	</body>
</html>