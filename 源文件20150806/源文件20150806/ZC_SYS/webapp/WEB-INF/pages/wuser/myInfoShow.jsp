<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>当事方用户信息显示</title>
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
				</tbody>
			</table>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span">当事方用户信息显示（已确认的用户信息为只读）</span>
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
			<table class="edit_data_table" cellspacing="0" cellpadding="0">
				<tr>
					<th width="30%">

						用户编号:
					</th>
					<td width="70%">
					    ${wuser.code}
					</td>
				</tr>
				<tr>
					<th>
						姓名（身份证）：
					</th>
					<td>
						${wuser.nameIdcard}
					</td>
				</tr>
				<tr>
					<th>
						身份证号码：
					</th>
					<td>
						${wuser.idCard}
					</td>
				</tr>
				<tr>
					<th>
						手机：
					</th>
					<td>
						${wuser.telephone}
					</td>
				</tr>
				<tr>
					<th>
						email：
					</th>
					<td>
						${wuser.email}
					</td>
				</tr>
				<tr>
					<th>
						当事人身份：
					</th>
					<td>
						${hs2[wuser.identity]}
					</td>
				</tr>
				<tr>
					<th>
						简介：
					</th>
					<td>
						${wuser.remark}
					</td>
				</tr>
				<tr>
					<th>
						邮编：
					</th>
					<td>
						${wuser.postCode}
					</td>
				</tr>
				<tr>
					<th>
						所在单位：
					</th>
					<td>
						${wuser.company}
					</td>
				</tr>
				<tr>
					<th>
						联系人地址：
					</th>
					<td>
						${wuser.addr}
					</td>
				</tr>
				<tr>
					<th>
						传真：
					</th>
					<td>
						${wuser.fax}
					</td>
				</tr>
				<tr>
					<th>
						短信手机之外的其它联系方式：
					</th>
					<td>
						${wuser.otherContact}
					</td>
				</tr>
				<s:if test="attachment!=null">
					<tr>
						<th>
							证件类型：
						</th>
						<td>
							${baseDicMap['9102'][attCategory]}
						</td>
					</tr>
					<tr>
						<th>
							证件：
						</th>
						<td>
							<a class="a3" href="${ctx}/${attPath}" target="_blank">文件下载</a>
						</td>
					</tr>
				</s:if>
			</table>
		</div>
	</body>
</html>