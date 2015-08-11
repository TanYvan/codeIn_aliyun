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
		<script language="javascript"
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
	var category=$('#category').val();
	var range=$('#range').val();
	var title=$('#title').val();
	$('#test')
			.datagrid(
					{
						title : 'My DataGrid',
						iconCls : 'icon-save',
						width : 700,
						height : 350,
						nowrap : true,
						autoRowHeight : false,
						striped : true,
						collapsible : true,
						url : '${ctx}/notify/findNotifyList.do?category='+category+'&range='+range+'&title='+title,
						sortName : 'code',
						sortOrder : 'desc',
						remoteSort : false,
						idField : 'code',
						pagination : true,
						rownumbers : true,
						frozenColumns : [ [ {
							checkbox : false,
							title : '标题',
							field : 'title',
							width : 104
						} ] ],
						columns : [ [
								{
									title : '类型',
									field : 'category',
									width : 104
								},
								{
									title : '发布范围',
									field : 'range',
									width : 104
								},
								{
									title : '状态',
									field : 'status',
									width : 104,
									formatter : function(val, rec) {
										if (val == 1) {
											return '发布';
										} else {
											return '未发布';
										}
									}
								},
								{
									title : '发布人',
									field : 'editUser',
									width : 104
								},
								{
									title : '发布时间',
									field : 'putDate',
									width : 104
								},
								{
									title : '点击量',
									field : 'num',
									width : 104
								},
								{
									title : '操作',
									field : 'id',
									width : 104,
									formatter : function(val, rec) {
										return "<a href='${pageContext.request.contextPath}/notify/toUpdateNotify.do?id="
												+ val + "'>编辑</a>";
									}
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
		<form id="fm" action="${ctx}/notify/findNotifyList.do" method="post">
			<table width="98%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left" class="font6">
						类型
						<s:select id="category" name="category" list="#{'':'全部','1':'公告'}" listKey="key"
							listValue="value"></s:select>
					</td>
					<td align="left" class="font6">
						发布范围
						<s:select id="range"  name="range"
							list="#{'':'全部','1':'仲裁人','2':'助理','3':'当事人'}" listKey="key"
							listValue="value"></s:select>
					</td>
					<td align="left" class="font6">
						标题:
						<input id="title" name="title" type="text" size="16" />
					</td>
					<td align="left">
						<input type="button" onclick="search();" name="imageField"
							value="查询" />
					</td>
				</tr>
			</table>
		</form>
		<table width="98%" border="0" border="0" cellspacing="0"
			cellpadding="0">
			<tr>
				<td align="center" bgcolor="#FFFFFF" class="font5">
					修改成功 提示信息
				</td>
			</tr>
		</table>
		<a href="${ctx}/notify/toInsertNotify.do" class="a3">新增</a>
		<div style="overflow: auto;">
			<table id="test"></table>
		</div>
		<p>
			&nbsp;
		</p>
	</body>
</html>