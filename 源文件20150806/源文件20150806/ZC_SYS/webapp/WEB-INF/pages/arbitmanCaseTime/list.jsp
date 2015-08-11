<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="arbitmanCaseTime.list.title_1"></s:text></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet" type="text/css" />
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
						<span class="list_title_span">
							<s:text name="arbitmanCaseTime.list.title_1"></s:text>
							<s:if test="category=='a'">
								<s:text name="arbitmanCaseTime.list.title_2"></s:text>
							</s:if>
							<s:if test="category=='b'">
								<s:text name="arbitmanCaseTime.list.title_3"></s:text>
							</s:if>
						</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
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
							<s:text name="arbitmanCaseTime.list.head_case_code"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d1"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d2"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d3"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d6"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d7"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d8"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d4"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d5"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="caseTimeList" status="case">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="case_code" />
							</td>
							<td>
								<s:property value="d1" />
							</td>
							<td>
								<s:property value="d2" />
							</td>
							<td>
								<s:property value="d3" />
							</td>
							<td>
								<s:property value="d6" />
							</td>
							<td>
								<s:property value="d7" />
							</td>
							<td>
								<s:property value="d8" />
							</td>
							<td>
								<s:property value="d4" />
							</td>
							<td>
								<s:property value="d5" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			${page_bar}
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span">${year_1}<s:text name="arbitmanCaseTime.list.title_21"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
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
							<s:text name="arbitmanCaseTime.list.head_d1"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d2"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d3"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d6"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d7"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d8"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d4"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseTime.list.head_d5"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr2 = 0;
					%>
					<s:iterator value="caseTimeAllList" status="case">
						<%
							i_tr2++;
						%>
						<tr class='<%=(i_tr2 % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="d1" />
							</td>
							<td>
								<s:property value="d2" />
							</td>
							<td>
								<s:property value="d3" />
							</td>
							<td>
								<s:property value="d6" />
							</td>
							<td>
								<s:property value="d7" />
							</td>
							<td>
								<s:property value="d8" />
							</td>
							<td>
								<s:property value="d4" />
							</td>
							<td>
								<s:property value="d5" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>