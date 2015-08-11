<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>文件下载日志</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<script type="text/javascript" src="${ctx}/public/common/DatePicker/WdatePicker.js"></script>	 
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
						<span class="list_title_span">文件下载日志</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/downlog/findDownlogList.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							起始时间:
							<input id="start" name="start" readonly type="text" size="16" class='Wdate'
								onFocus="WdatePicker()" value="${start}" />
							截止时间：
							<input id="end" name="end" readonly type="text" size="16" class='Wdate'
								onFocus="WdatePicker()" value="${end}" />
							用户类别:
							<input id="userType1" name="userType1" type="text" size="16" value="${userType1}"/>
							用户编号：
							<input id="user" name="user" type="text" size="16" value="${user}"/>
						</td>
					</tr>
					<tr>
						<td align="left">
							下载类别:
							<input id="downType" name="downType" type="text" size="16" value="${downType}"/>
							文件名：
							<input id="fileName" name="fileName" type="text" size="15" value="${fileName}"/>
							描述：
							<input id="description" name="description" type="text" size="15" value="${description}"/>
							<input id="Submit" name="Submit" type="submit" class="btr_search" value="查 询" />
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
							时间
						</th>
						<th>
							用户类别
						</th>
						<th>
							用户名
						</th>
						<th>
							ip
						</th>
						<th>
							下载类别
						</th>
						<th>
							文件名
						</th>
						<th>
							描述
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="DownlogList" status="role">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="downTime" />
							</td>
							<td>
								<s:property value="userType" />
							</td>
							<td>
								<s:property value="userCode" />
							</td>
							<td>
								<s:property value="ip" />
							</td>
							<td>
								<s:property value="downType" />
							</td>
							<td>
								<s:property value="fileName" />
							</td>
							<td>
								<s:property value="description" />
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
								href='${ctx}/downlog/findDownlogList.do?pageNo=1${page_str}'>首页</a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/downlog/findDownlogList.do?pageNo=${pageNo-1}${page_str}'>上一页</a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/downlog/findDownlogList.do?pageNo=${pageNo+1}${page_str}'>下一页</a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/downlog/findDownlogList.do?pageNo=${pageCount}${page_str}'>末页</a>
						</s:if>

					</td>
				</tr>
			</table>
		</div>
	</body>
</html>