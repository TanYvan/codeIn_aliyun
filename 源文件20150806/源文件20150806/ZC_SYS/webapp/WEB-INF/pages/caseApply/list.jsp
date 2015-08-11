<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="caseApply.list.title"></s:text></title>
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
						<span class="list_title_span"><s:text name="caseApply.list.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/caseApply/toInsertCaseApply.do" method="post">
							<input type="submit" name="SubmitNew" value="<s:text name="caseApply.list.apply"></s:text>" />
						</form>
					</td>
					<td align="center">
						<div class="message">
							<div class="message">${error}</div>
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
							<s:text name="caseApply.list.head_select"></s:text>
						</th>
						<th>
							<s:text name="caseApply.list.head_status"></s:text>
						</th>
						<th>
							<s:text name="caseApply.list.head_createDate"></s:text>
						</th>
						<th>
							<s:text name="caseApply.list.head_applyCode"></s:text>
						</th>
						<th>
							<s:text name="caseApply.list.head_party1"></s:text>
						</th>
						<th>
							<s:text name="caseApply.list.head_party2"></s:text>
						</th>
						<th>
							<s:text name="caseApply.list.head_delete"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="caseApplyList" status="user">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:if test="status==1">
									<form
										action="${ctx}/caseApply/toUpdateCaseApply.do?id=<s:property value='id'/>"
										method="post">
										<input type="submit" name="SubmitSelect" value="<s:text name="caseApply.list.button_select"></s:text>" />
									</form>
								</s:if>
								<s:else>
									<a href="${ctx}/caseApply/showCaseApply.do?id=<s:property value='id'/>" class="list_data" method="post" target="_lank"><s:text name="common.button_show"></s:text></a>
								</s:else>
								
							</td>
							<td>
								<s:property value="status_hash[status]" />
							</td>
							<td>
								<s:property value="createT" />
							</td>
							<td>
								<s:property value="applyCode" />
							</td>
							<td>
								<s:property value="case_party1[applyCode]" />
							</td>			
							<td>
								<s:property value="case_party2[applyCode]" />
							</td>
							<td>
								<s:if test="status==1">
									<form
										action="${ctx}/caseApply/deleteCaseApply.do?id=<s:property value='id'/>"
										method="post" onsubmit="return confirm('<s:text name="caseApply.list.button_delete_confirm"></s:text>');">
										<input type="submit" name="SubmitEdit" value="<s:text name="caseApply.list.button_delete"></s:text>" />
									</form>
								</s:if>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>