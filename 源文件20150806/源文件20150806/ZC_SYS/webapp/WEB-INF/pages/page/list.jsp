<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>系统权限管理</title>
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
						<span class="list_title_span">系统权限管理</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/page/findPageList.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							<input id="pageNo" name="pageNo" type="hidden" size="16"
								value="1" />
							<s:select name="searchType"
								list="#{'code':'编码','name':'名称','url':'url'}" listKey="key"
								listValue="value"></s:select>
							<s:select name="condition" list="#{'and':'等于','or':'包含'}"
								listKey="key" listValue="value">
							</s:select>
							<input type="text" id="searchValue" name="searchValue" />
							<input name="Submit" type="submit" class="btr_search" value="查 询" />
						</td>
					</tr>
				</table>
			</form>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/page/toInsertPage.do" method="post">
							<input type="submit" name="SubmitNew" value="新建" />
						</form>
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
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							编码
						</th>
						<th>
							名称
						</th>
						<th>
							url
						</th>
						<th>
							状态
						</th>
						<th>
							编辑
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="pageList" status="user">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="code" />
							</td>
							<td>
								<s:property value="name" />
							</td>
							<td>
								<s:property value="url" />
							</td>
							<td>
								<s:property value="status" />
							</td>
							<td>
								<form
									action="${ctx}/page/toUpdatePage.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitEdit" value="修改" />
								</form>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>