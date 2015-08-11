<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>案件文档</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="edit_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							文件类型
						</th>
						<th>
							日期
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="caseBookInList" status="case">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<a href="${ctx}/caseBookIn/show.do?id=<s:property value="id" />" target="_blank" class="edit_return"><s:property value="baseDicMap['9906'][typ]" />____</a>
								<s:if test="book_typ!=''">
									&nbsp;&nbsp;&nbsp;&nbsp;
									[
									<s:property value="baseDicMap[typ_dic_code][book_typ]" />
									]
								</s:if>
							</td>
							<td>
								<s:property value="book_dat" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>