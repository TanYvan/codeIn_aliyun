<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="myNotify.list.title"></s:text></title>
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
						<span class="list_title_span"><s:text name="myNotify.list.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/myNotify/findMyNotifyList.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<s:text name="myNotify.list.search_category"></s:text>:
							<s:select name="category" list="baseDicAllList['9029']" listKey="dataVal" listValue="dataText" ></s:select>
							<s:text name="myNotify.list.search_title"></s:text>:
							<input id="title" name="title" type="text" size="16"  value="${title}"/>
							<s:text name="myNotify.list.search_place"></s:text>：
							<input id="place" name="place" type="text" size="16" value="${place}" />
							<s:text name="myNotify.list.search_date"></s:text>：
							<input id="startdate" name="startdate" type="text" size="16" class='{required:true} Wdate' onFocus="WdatePicker()" value="${startdate}"/>至
							<input id="enddate" name="enddate" type="text" size="16" class='{required:true} Wdate' onFocus="WdatePicker()" value="${enddate}"/>
							<input name="Submit" type="submit" class="btr_search" value="<s:text name="common.button_search"></s:text>" />
						</td>
					</tr>
				</table>
			</form>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							<s:text name="myNotify.list.head_title"></s:text>
						</th>
						<th>
							<s:text name="myNotify.list.head_category"></s:text>
						</th>
						<th>
							<s:text name="myNotify.list.head_place"></s:text>
						</th>
						<th>
							<s:text name="myNotify.list.head_date"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="NotifyList" status="role">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<a href="${ctx}/myNotify/showMyNotify.do?id=${id}" class="list_data" target="_blank"><s:property value="title" /></a>
							</td>
							<td>
								<s:property value="baseDicMap['9029'][category]" />
							</td>
							<td>
								<s:property value="place" />
							</td>
							<td>
								<s:property value="putDate" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			<table class="list_page_bar">
				<tr>
					<td>
						<span class="list_page_bar_span"><s:text name="common.page.mark_1"></s:text>${pageNo}<s:text name="common.page.mark_2"></s:text>${pageCount}<s:text name="common.page.mark_3"></s:text></span>
						<s:if test="pageNo != 1">
							<a class="list_page_bar_link"
								href='${ctx}/myNotify/findMyNotifyList.do?pageNo=1${page_str}'><s:text name="common.page.mark_first"></s:text></a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/myNotify/findMyNotifyList.do?pageNo=${pageNo-1}${page_str}'><s:text name="common.page.mark_forward"></s:text></a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/myNotify/findMyNotifyList.do?pageNo=${pageNo+1}${page_str}'><s:text name="common.page.mark_next"></s:text></a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/myNotify/findMyNotifyList.do?pageNo=${pageCount}${page_str}'><s:text name="common.page.mark_end"></s:text></a>
						</s:if>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>