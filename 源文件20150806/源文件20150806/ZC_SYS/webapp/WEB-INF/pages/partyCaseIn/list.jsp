<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="caseIn.list.title"></s:text></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet" type="text/css" />
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
						<span class="list_title_span"><s:text name="caseIn.list.title"></s:text>.</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_search_table" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
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
							<s:text name="caseIn.list.head_select"></s:text>
						</th>
						<th>
							<s:text name="caseIn.list.head_accepttime"></s:text>
						</th>
						<th>
							<s:text name="caseIn.list.head_case_code"></s:text>
						</th>
						<th>
							<s:text name="caseIn.list.head_aribitprog_num"></s:text>
						</th>
						<th>
							<s:text name="caseIn.list.head_clerk_name"></s:text>
						</th>
						<th>
							<s:text name="caseIn.list.head_case_state"></s:text>
						</th>
						<th>
							<s:text name="caseIn.list.head_finally_limit_dat"></s:text>
						</th>
						<th>
							<s:text name="caseIn.list.head_partyinfo_1"></s:text>
						</th>
						<th>
							<s:text name="caseIn.list.head_partyinfo_2"></s:text> 
						</th>
						<th>
							<s:text name="caseIn.list.head_toCaseBook"></s:text>
						</th>
						<th>
							<s:text name="caseIn.list.head_toCaseDocIn"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="caseInList" status="case">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<form
									action="${ctx}${ReturnUrl}?recevice_code=<s:property value='recevice_code'/>"
									method="post">
									<input type="submit" name="SubmitEdit" value="<s:text name="common.button_select"></s:text>" />
								</form>
							</td>
							<td>
								<s:property value="accepttime" />
							</td>
							<td>
								<s:property value="case_code" />
							</td>
							<td>
								<s:property value="baseDicMap['0001'][aribitprog_num]" />
							</td>
							<td>
								<s:property value="clerk_name" />
							</td>
							<td>
								<s:property value="baseCaseStatus[case_state]" />
							</td>
							<td>
								<s:property value="finally_limit_dat" />
							</td>
							<td>
								<s:property value="partyinfo_1" />
							</td>
							<td>
								<s:property value="partyinfo_2" />
							</td>
							<td>
								<form
									action="${ctx}/partyCaseIn/toCaseBookIn.do?recevice_code=<s:property value='recevice_code'/>"
									method="post" target="_blank">
									<input type="submit" name="SubmitEdit" value="<s:text name="common.button_show"></s:text>" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/partyCaseIn/toCaseDocIn.do?recevice_code=<s:property value='recevice_code'/>"
									method="post" target="_blank">
									<input type="submit" name="SubmitEdit" value="<s:text name="common.button_show"></s:text>" />
								</form>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			${page_bar}
		</div>
	</body>
</html>