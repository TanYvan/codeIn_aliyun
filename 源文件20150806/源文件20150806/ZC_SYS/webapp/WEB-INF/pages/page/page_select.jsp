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
		<script type="text/javascript">
        	window.name = "curWindow";
		</script>
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
						<span class="list_title_span">系统权限选择</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/page/pageSelect.do" method="post" target="curWindow">
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
					</td>
					<td align="center">
						<div class="message">
							
						</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th width="5%">
							选择
						</th>
						<th width="5%">
							编码
						</th>
						<th width="20%">
							名称
						</th>
						<th width="30%">
							url
						</th>
						<th width="20%">
							控制器
						</th>
						<th width="20%">
							action
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
							<td width="5%">
								<input type='button' value="选择" onclick="window.returnValue='<s:property value="url" />+<s:property value="controllers" />+<s:property value="actions" />';window.close();" />
							</td>
							<td width="5%">
								<s:property value="code" />
							</td>
							<td width="20%">
								<s:property value="name" />
							</td>
							<td width="30%">
								<s:property value="url" />
							</td>
							<td width="20%">
								<s:property value="controllers" />
							</td>
							<td width="20%">
								<s:property value="actions" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>