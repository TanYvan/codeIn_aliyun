<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="arbitmanRewardAfterIn.list.title"></s:text></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet"
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
						<span class="list_title_span"><s:text name="arbitmanRewardAfterIn.list.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/arbitmanRewardAfterIn/findArbitmanRewardAfterInList.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							<s:text name="arbitmanRewardAfterIn.list.search_case_code"></s:text>:
							<input id="case_code" name="case_code" type="text" size="16" value='${case_code}'/>
							<s:text name="arbitmanRewardAfterIn.list.partyinfo_1"></s:text>:
							<input id="partyinfo_1" name="partyinfo_1" type="text" size="16" value='${partyinfo_1}'/>
							<s:text name="arbitmanRewardAfterIn.list.partyinfo_2"></s:text>:
							<input id="partyinfo_2" name="partyinfo_2" type="text" size="16" value='${partyinfo_2}'/>
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
							<s:text name="arbitmanRewardAfterIn.list.head_case_case_code"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_case_partyinfo_1"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_case_partyinfo_2"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_bankname"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_bank_account"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_typ"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_should_rmb"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_tax_base_rmb"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_tax_rmb"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_extend_rmb"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_extend_date"></s:text>
						</th>
						<th>
							<s:text name="arbitmanRewardAfterIn.list.head_remark"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="rewardAfterInList" status="case">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="case_case_code" />
							</td>
							<td>
								<s:property value="case_partyinfo_1" />
							</td>
							<td>
								<s:property value="case_partyinfo_2" />
							</td>
							<td>
								<s:property value="bankname" />
							</td>
							<td>
								<s:property value="bank_account" />
							</td>
							<td>
								<s:property value="baseDicMap['9802'][typ]" />
							</td>
							<td>
								<s:property value="should_rmb" />
							</td>
							<td>
								<s:property value="tax_base_rmb" />
							</td>
							<td>
								<s:property value="tax_rmb" />
							</td>
							<td>
								<s:property value="extend_rmb" />
							</td>
							<td>
								<s:property value="extend_date" />
							</td>
							<td>
								<s:property value="remark" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			${page_bar}
		</div>
	</body>
</html>