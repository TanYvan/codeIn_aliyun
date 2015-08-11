<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>角色信息维护</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<SCRIPT language='JavaScript'>
			function checkall() {
				var a = '';
				if (document.getElementsByName("cheall").value == 't') {
					document.getElementsByName("cheall").value = 'f';
				} else {
					a = 'true';
					document.getElementsByName("cheall").value = 't';
				}
				var chec = document.getElementsByName("che");
				for (i = 0; i < chec.length; i++) {
					chec[i].checked = a;
				}
			}
			function getcondi() {
				var chec = document.getElementsByName("che");
				var a = '';
				for (i = 0; i < chec.length; i++) {
					if (chec[i].checked == true)
						a = a + chec[i].value + ',';
		
				}
				aa = a.substr(0, a.length - 1)
				var c = document.getElementById("condi_dissent");
				c.value = "(" + aa + ")";
				var d = document.getElementById("condi_agree");
				d.value = "(" + aa + ")";
				//alert(c.value);
			}
			function aa() {
				//var b =document.getElementById("institute");
				a = window.showModalDialog('/reviewed_c/institute_select');
				if (a != null)
					document.getElementById("institute").value = a
			}
		</SCRIPT>
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
						<span class="edit_data_table">角色信息维护</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/role/findRoleList.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							<s:select name="searchType" list="#{'code':'编码','name':'名称'}"
								listKey="key" listValue="value">
							</s:select>
							<s:select name="condition" list="#{'and':'等于','or':'包含'}"
								listKey="key" listValue="value">
							</s:select>
							<input type="text" name="searchValue" />
							<input name="Submit" type="submit" class="btr_search" value="查 询" />
						</td>
					</tr>
				</table>
			</form>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/role/toInsertRole.do" method="post">
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
						<th nowrap="nowrap">
							编码
						</th>
						<th nowrap="nowrap">
							名称
						</th>
						<th nowrap="nowrap">
							注释
						</th>
						<th nowrap="nowrap">
							菜单
						</th>
						<th nowrap="nowrap">
							编辑
						</th>
						<th nowrap="nowrap">
							删除
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="roleList" status="role">
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
								<s:property value="description" />
							</td>
							<td>
								<a class="a3"
									href="${ctx}/menu/menuRole.do?roleCode=<s:property value='code'/>">编辑菜单</a>
							</td>
							<td>
								<form
									action="${ctx}/role/toUpdateRole.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitShow" value="修改" />
								</form>
							</td>

							<td>
								<form
									action="${ctx}/role/deleteRole.do?id=<s:property value='id'/>"
									method="post" onsubmit="return confirm('您确认要删除吗？');">
									<input type="submit" name="SubmitShow" value="删除 " />
								</form>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>