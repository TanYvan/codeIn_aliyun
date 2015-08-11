<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>用户信息维护</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
	</head>
	<body>

	</body>
	<div align="center">
		<table class="show_blank_line" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td></td>
				</tr>
		</table>
		<table class="show_title" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<span class="show_title_span">用户信息—查看</span> &nbsp;
					<a href="${ctx}/user/findUserList.do" class="show_return">
						返回</a>
				</td>
			</tr>
			<tr>
				<td class="show_title_hr"></td>
			</tr>
			<tr>
				<td class="show_title_blank_line"></td>
			</tr>
		</table>
		<table class="show_toolbar" cellspacing="0"cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
						<div class="message">${error}</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="show_data_table" cellspacing="0" cellpadding="0">
				<tr>
					<th>
						顺序号:
					</th>
					<td>
						<s:property value="user.ord" />
					</td>
				</tr>
				<tr>
					<th>
						<i>*</i>用户名:
					</th>
					<td>
						<s:property value="user.code" />
					</td>
				</tr>
				<tr>
					<th>
						<i>*</i>密码:
					</th>
					<td align="left">
						<s:property value="user.password" />
					</td>
				</tr>
				<tr>
					<th>
						<i>*</i>用户名称:
					</th>
					<td>
						<s:property value="user.name" />
					</td>
				</tr>
				<tr>
					<th>
						拼音缩写:
					</th>
					<td>
						<s:property value="user.spell" />
					</td>
				</tr>
				<tr>
					<th>
						咨询登录编码:
					</th>
					<td>
						<s:property value="user.lCode" />
					</td>
				</tr>
				<tr>
					<th>
						显示状态(在选择列表或查询中显示,Y:显示；N:不显示):
					</th>
					<td>
						<s:property value="user.used" />
					</td>
				</tr>
				<tr>
					<th>
						是否在职(Y:在职；N:不在职):
					</th>
					<td>
						<s:property value="user.states" />
					</td>
				</tr>
				<tr>
					<th>
						性别:
					</th>
					<td>
						<s:property value="user.sex" />
					</td>
				</tr>
				<tr>
					<th>
						固定电话:
					</th>
					<td>
						0755-<s:property value="user.telephone" />
					</td>
				</tr>
				<tr>
					<th>
						传真号码:
					</th>
					<td>
						0755-<s:property value="user.fax" />
					</td>
				</tr>
				<tr>
					<th>
						手机号码:
					</th>
					<td>
						<s:property value="user.mobiletel" />
					</td>
				</tr>
				<tr>
					<th>
						邮件地址:
					</th>
					<td>
						<s:property value="user.email" />
					</td>
				</tr>
			</table>
	</div>
</html>