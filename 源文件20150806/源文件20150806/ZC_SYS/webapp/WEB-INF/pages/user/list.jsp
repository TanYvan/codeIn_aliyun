<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>用户信息管理</title>
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
						<span class="list_title_span">用户信息管理</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/user/findUserList.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							<s:select name="searchType"
								list="#{'code':'编码','name':'名称','spell':'拼写'}" listKey="key"
								listValue="value">
							</s:select>
							<s:select name="condition" list="#{'and':'等于','or':'包含'}"
								listKey="key" listValue="value">
							</s:select>
							<input type="text" name="searchValue" value="${searchValue}"/>
							<input name="Submit" type="submit" class="btr_search" value="查 询" />
						</td>
					</tr>
				</table>
			</form>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/user/toInsertUser.do" method="post">
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
							用户名
						</th>
						<th>
							用户名称
						</th>
						<th>
							拼音缩写
						</th>
						<th>
							用户角色
						</th>
						<th>
							用户职责
						</th>
						<th>
							在选择列表或查询中显示 Y:显示；N:不显示
						</th>
						<th>
							是否在职 Y:在职；N:不在职
						</th>
						<th>
							顺序号
						</th>
						<th>
							查看
						</th>
						<th>
							修改
						</th>
						<th>
							修改密码
						</th>
						<th>
							删除
						</th>
					</tr>
				</thead>
				<tbody>
					<%int i_tr=0;%>
					<s:iterator value="userList" status="user">
						<%i_tr++;%>
						<tr class='<%=(i_tr%2==0)?"tr_even":"tr_odd"%>'>
							<td>
								<s:property value="code" />
							</td>
							<td>
								<s:property value="name" />
							</td>
							<td>
								<s:property value="spell" />
							</td>
							<td align="center">
								<a class="a3"
									href="${ctx}/ur/toUpdateUr.do?user=<s:property value='code'/>">编辑角色</a>
							</td>
							<td align="center">
								<a class="a3"
									href="${ctx}/ud/toUpdateUd.do?user=<s:property value='code'/>">编辑职责</a>
							</td>
							<td>
								<s:property value="states" />
							</td>
							<td>
								<s:property value="used" />
							</td>
							<td>
								<s:property value="ord" />
							</td>
							<td>
								<form
									action="${ctx}/user/showUser.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitShow" value="查看" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/user/toUpdateUser.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitEdit" value="修改" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/user/toChangePassWord.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitPw" value="修改密码" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/user/deleteUser.do?id=<s:property value='id'/>"
									method="post" onsubmit="return confirm('您确认要删除吗？');">
									<input type="submit" name="SubmitDel" value="删除" />
								</form>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			<table class="list_page_bar">
				<tr>
					<td>
						<span class="list_page_bar_span">第${pageNo}页 共${pageCount}
							页</span>
						<s:if test="pageNo != 1">
							<a class="list_page_bar_link"
								href='${ctx}/user/findUserList.do?pageNo=1${page_str}'>首页</a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/user/findUserList.do?pageNo=${pageNo-1}${page_str}'>上一页</a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/user/findUserList.do?pageNo=${pageNo+1}${page_str}'>下一页</a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/user/findUserList.do?pageNo=${pageCount}${page_str}'>末页</a>
						</s:if>
						
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>