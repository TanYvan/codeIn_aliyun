<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>网上办公系统 工作区</title>
		<link href="css/css.css" rel="stylesheet" type="text/css" />
		<script attachment="javascript"
			src="${ctx}/common/DatePicker/WdatePicker.js">
</script>
		<link rel="stylesheet" type="text/css"
			href="${ctx}/easyui/themes/default/easyui.css" />
		<link rel="stylesheet" type="text/css"
			href="${ctx}/easyui/themes/icon.css" />
		<script type="text/javascript" src="${ctx}/easyui/jquery-1.8.0.min.js">
</script>
		<script type="text/javascript"
			src="${ctx}/easyui/jquery.easyui.min.js">
</script>
		<script>
function search() {
	loadgrid();
};
function loadgrid() {
	$('#test').datagrid( {
		title : 'My DataGrid',
		iconCls : 'icon-save',
		width : 700,
		height : 350,
		nowrap : true,
		autoRowHeight : false,
		striped : true,
		collapsible : true,
		url : '${ctx}/attachment/findAttachmentList.do',
		sortName : 'code',
		sortOrder : 'desc',
		remoteSort : false,
		idField : 'code',
		pagination : true,
		rownumbers : true,
		frozenColumns : [ [ {
			checkbox : false,
			title : '类型',
			field : 'category',
			width : 104
		} ] ],
		columns : [ [ {
			title : '上传时间',
			field : 'upTime',
			width : 104
		}, {
			title : '文件名',
			field : 'fileName',
			width : 104
		}, {
			title : '备注',
			field : 'remark',
			width : 104
		} ] ]
	});
};
</script>
	</head>
	<body>
		<table width="98%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td height="15"></td>
				</tr>
		</table>
		<table width="98%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<span class="font4">页面名称</span>
					<a href="#" class="a3"> 返回</a>
				</td>
			</tr>
			<tr>
				<td height="1" bgcolor="#999999"></td>
			</tr>
			<tr>
				<td height="15"></td>
			</tr>
		</table>
		<table width="98%" border="0" border="0" cellspacing="0"
			cellpadding="0">
			<tr>
				<td align="center" bgcolor="#FFFFFF" class="font5">
					修改成功 提示信息
				</td>
			</tr>
		</table>
		<a href="${ctx}/attachment/toInsertAttachment.do" class="a3">新增</a>
		<div style="overflow: auto;">
			<table id="test"></table>
		</div>
		<p>
			&nbsp;
		</p>
	</body>
</html>