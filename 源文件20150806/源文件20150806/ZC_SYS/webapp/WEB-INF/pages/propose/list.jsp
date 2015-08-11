<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>建议信息管理</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="${ctx}/public/common/DatePicker/WdatePicker.js"></script>
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
						<span class="list_title_span">建议信息管理</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/propose/findProposeList.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							
							提出时间:
							<input id="start" name="start" type="text" size="16" class='Wdate' onFocus="WdatePicker()" value="${start}" />
						          至
							<input id="end" name="end" type="text" size="16" class='Wdate' onFocus="WdatePicker()" value="${end}" />
							标题:
							<input name="title" type="text" size="16" value="${title}"/>
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
							回复 查看
						</th>
						<th>
							标题
						</th>
						<th>
							提出时间
						</th>
						<th>
							提出人
						</th>
						<th>
							提出人类别
						</th>
						<th>
							回复时间
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="proposeList" status="">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<form
									action="${ctx}/propose/toUpdatePropose.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitShow" value="回复 查看" />
								</form>
							</td>
							<td>
								<s:property value="title" />
							</td>
							<td>
								<s:property value="time" />
							</td>
							<td>
								<s:property value="name" />
							</td>
							<td>
								<s:property value="typ[userType]" />
							</td>
							<td>
								<s:property value="replyTime" />
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
								href='${ctx}/propose/findProposeList.do?pageNo=1${page_str}'>首页</a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/propose/findProposeList.do?pageNo=${pageNo-1}${page_str}'>上一页</a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/propose/findProposeList.do?pageNo=${pageNo+1}${page_str}'>下一页</a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/propose/findProposeList.do?pageNo=${pageCount}${page_str}'>末页</a>
						</s:if>

					</td>
				</tr>
			</table>
		</div>
	</body>
</html>