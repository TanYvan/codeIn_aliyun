<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
	</head>
	<body>
		<div align="center">
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span">${typName}<s:text name="dic.select_1.title"></s:text></span>
						<a href="${ctx}${ReturnUrl}" class="edit_return"> <s:text name="common.return"></s:text></a>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
						</td>
					</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
						<div class="message">
						</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table width="50%" class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							<s:text name="common.button_select"></s:text>
						</th>
						<th>
							${typName}
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="dictionaryList">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<form
									action="${ctx}/${space}/${action}?SelectVal=<s:property value='dataVal'/>" method="post">
									<input type="submit" name="SubmitEdit" value="<s:text name="common.button_select"></s:text>" />
								</form>
							</td>
							<td>
								<s:property value="dataText" />
							</td>
							
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>