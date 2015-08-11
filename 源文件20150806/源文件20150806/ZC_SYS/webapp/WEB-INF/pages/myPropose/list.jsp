<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="myPropose.list.title"></s:text></title>
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
						<span class="list_title_span"><s:text name="myPropose.list.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/myPropose/toInsertMyPropose.do" method="post" target="_blank">
							<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
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
							<s:text name="myPropose.list.head_title"></s:text>
						</th>
						<th>
							<s:text name="myPropose.list.head_time"></s:text>
						</th>
						<th>
							<s:text name="myPropose.list.head_replyTime"></s:text>
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
								<a href="${ctx}/myPropose/showMyPropose.do?id=${id}"  class="list_data" target="_blank"><s:property value="title" /></a>
							</td>
							<td>
								<s:property value="time" />
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
						<span class="list_page_bar_span"><s:text name="common.page.mark_1"></s:text>${pageNo}<s:text name="common.page.mark_2"></s:text>${pageCount}<s:text name="common.page.mark_3"></s:text></span>
						<s:if test="pageNo != 1">
							<a class="list_page_bar_link"
								href='${ctx}/myPropose/findMyProposeList.do?pageNo=1'><s:text name="common.page.mark_first"></s:text></a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/myPropose/findMyProposeList.do?pageNo=${pageNo-1}'><s:text name="common.page.mark_forward"></s:text></a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/myPropose/findMyProposeList.do?pageNo=${pageNo+1}'><s:text name="common.page.mark_next"></s:text></a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/myPropose/findMyProposeList.do?pageNo=${pageCount}'><s:text name="common.page.mark_end"></s:text></a>
						</s:if>

					</td>
				</tr>
			</table>
		</div>
	</body>
</html>