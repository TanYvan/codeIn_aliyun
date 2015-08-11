<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>外网用户信息维护</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<script language="javascript"
			src="${ctx}public/common/DatePicker/WdatePicker.js"></script>
		<link rel="stylesheet" type="text/css"
			href="${ctx}/public/javascripts/easyui/themes/default/easyui.css" />
		<link rel="stylesheet" type="text/css"
			href="${ctx}/public/javascripts/easyui/themes/icon.css" />
		<script type="text/javascript"
			src="${ctx}/public/javascripts/easyui/jquery-1.8.0.min.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/javascripts/easyui/jquery.easyui.min.js"></script>
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
						<span class="list_title_span">外网注册中用户信息维护（已经办案件的用户信息请到内网查看）</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/wuser/findWuserList.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							编号:
							<input id="code" name="code" type="text" size="16" value="${code}"/>
							姓名:
							<input id="name" name="name" type="text" size="16" value="${name}"/>
							身份证:
							<input id="idCard" name="idCard" type="text" size="16" value="${idCard}"/>
						</td>
					</tr>
					<tr>
						<td align="left">
							手机:
							<input id="telephone" name="telephone" type="text" size="16" value="${telephone}"/>
							email:
							<input id="email" name="email" type="text" size="16" value="${email}"/>
							身份：
							<s:select name="identity"  list="baseDicAllList['9912']" listKey="dataVal" listValue="dataText"  value="identity"></s:select>
							<input name="Submit" type="submit" class="btr_search" value="查 询" />
						</td>
					</tr>
				</table>
			</form>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/wuser/toInsertWuser.do" method="post">
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
							编号
						</th>
						<th>
							名称
						</th>
						<th>
							身份证号码
						</th>
						<th>
							手机
						</th>
						<th>
							email
						</th>
						<th>
							证件类型
						</th>
						<th>
							身份
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
					<s:iterator value="wuserList" status="w">
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
								<s:property value="id_card" />
							</td>
							<td>
								<s:property value="telephone" />
							</td>
							<td>
								<s:property value="email" />
							</td>
							<td>
								<s:property value="paperwork_type" />
							</td>
							<td>
								<s:property value="baseDicMap['9912'][identity]"/>
							</td>
							<td>
								<s:property value="status" />
							</td>
							<td>
								<form
									action="${ctx}/wuser/toUpdateWuser.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitShow" value="修改" />
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
								href='${ctx}/wuser/findWuserList.do?pageNo=1${page_str}'>首页</a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/wuser/findWuserList.do?pageNo=${pageNo-1}${page_str}'>上一页</a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/wuser/findWuserList.do?pageNo=${pageNo+1}${page_str}'>下一页</a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/wuser/findWuserList.do?pageNo=${pageCount}${page_str}'>末页</a>
						</s:if>

					</td>
				</tr>
			</table>
		</div>
	</body>
</html>