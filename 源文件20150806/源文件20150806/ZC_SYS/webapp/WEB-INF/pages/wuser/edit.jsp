<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>外网用户信息新建</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
	</head>
	<body>
		<div align="center">
			<table class="edit_blank_line" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td></td>
					</tr>
			</table>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span">外网用户信息新建</span> &nbsp;
						<a href="${ctx}/wuser/findWuserList.do" class="edit_return"> 返回</a>
					</td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
			</table>
			<table class="edit_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
						<div class="message">
							${error}
						</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/wuser/updateWuser.do?id=${id}" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th width="30%">

							编码:
						</th>
						<td width="70%">
							${wuser.code}
							<input name="wuser.id"  type="hidden" size="15" value="${wuser.id}"/>
							<input name="wuser.code"  type="hidden" size="15" value="${wuser.code}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							姓名：
						</th>
						<td>
							<input name="wuser.name" type="text" size="15"  value="${wuser.name}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							密码：
						</th>
						<td>
							<input name="wuser.password" type="text" size="15"  value="${wuser.password}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							身份证编号：
						</th>
						<td>
							<input name="wuser.idCard" type="text" size="30"  value="${wuser.idCard}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							手机：
						</th>
						<td>
							<input name="wuser.telephone" type="text" size="15"  value="${wuser.telephone}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							email：
						</th>
						<td>
							<input name="wuser.email" type="text" size="50"  value="${wuser.email}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							当事人身份：
						</th>
						<td>
							<s:select name="wuser.identity"  list="baseDicList['9912']" listKey="dataVal" listValue="dataText"  value="wuser.identity"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							简介：
						</th>
						<td>
							<textarea name="wuser.remark" rows="5" cols="50" >${wuser.remark}</textarea>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							邮编：
						</th>
						<td>
							<input name="wuser.postCode" type="text" size="50"  value="${wuser.postCode}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							所在单位：
						</th>
						<td>
							<input name="wuser.company" type="text" size="50"  value="${wuser.company}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							联系人地址：
						</th>
						<td>
							<input name="wuser.addr" type="text" size="50"  value="${wuser.addr}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							传真：
						</th>
						<td>
							<input name="wuser.fax" type="text" size="50"  value="${wuser.fax}"/>
						</td>
					</tr>
					<tr>
						<th>
							短信手机之外的其它联系方式：
						</th>
						<td>
							<input name="wuser.otherContact" type="text" size="50"  value="${wuser.otherContact}"/>
						</td>
					</tr>
					<tr>
						<th>
						</th>
						<td>
							<input name="SubmitOk" type="submit" class="btr_ok" value="确 定" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>