<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="myDownlog.list.title"></s:text></title>
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
						<span class="list_title_span"><s:text name="myDownlog.list.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/myDownlog/list.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							<s:text name="myDownlog.list.search_start"></s:text>:
							<input id="start" name="start" readonly type="text" size="16" class='Wdate'
								onFocus="WdatePicker()" value="${start}" />
							<s:text name="myDownlog.list.search_end"></s:text>：
							<input id="end" name="end" readonly type="text" size="16" class='Wdate'
								onFocus="WdatePicker()" value="${end}" />
						</td>
					</tr>
					<tr>
						<td align="left">
							<s:text name="myDownlog.list.downType"></s:text>:
							<input id="downType" name="downType" type="text" size="16" value="${downType}"/>
							<s:text name="myDownlog.list.fileName"></s:text>：
							<input id="fileName" name="fileName" type="text" size="15" value="${fileName}"/>
							<s:text name="myDownlog.list.description"></s:text>：
							<input id="description" name="description" type="text" size="15" value="${description}"/>
							<input id="Submit" name="Submit" type="submit" class="btr_search" value="<s:text name="common.button_search"></s:text>" />
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
							<s:text name="myDownlog.list.downTime"></s:text>
						</th>
						<th>
							ip
						</th>
						<th>
							<s:text name="myDownlog.list.downType"></s:text>
						</th>
						<th>
							<s:text name="myDownlog.list.description"></s:text>
						</th>
						<th>
							<s:text name="myDownlog.list.description"></s:text>
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
						<span class="list_page_bar_span"><s:text name="common.page.mark_1"></s:text>${pageNo}<s:text name="common.page.mark_2"></s:text>${pageCount}<s:text name="common.page.mark_3"></s:text></span>
						<s:if test="pageNo != 1">
							<a class="list_page_bar_link"
								href='${ctx}/myDownlog/list.do?pageNo=1${page_str}'><s:text name="common.page.mark_first"></s:text></a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/myDownlog/list.do?pageNo=${pageNo-1}${page_str}'><s:text name="common.page.mark_forward"></s:text></a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/myDownlog/list.do?pageNo=${pageNo+1}${page_str}'><s:text name="common.page.mark_next"></s:text></a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/myDownlog/list.do?pageNo=${pageCount}${page_str}'><s:text name="common.page.mark_end"></s:text></a>
						</s:if>

					</td>
				</tr>
			</table>
		</div>
	</body>
</html>