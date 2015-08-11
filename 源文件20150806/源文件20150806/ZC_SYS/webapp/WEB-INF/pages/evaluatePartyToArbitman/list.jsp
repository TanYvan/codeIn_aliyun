<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="evaluatePartyToArbitman.list.title"></s:text>.</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="edit_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
						<form action="${ctx}/partyCaseIn/findPartyCaseInList.do" method="post">
							<input type="hidden" name="returnUrl" value="/evaluatePartyToArbitman/findEvaluatePartyToArbitmanList.do" />
							<input type="submit" name="SubmitEdit" value="     <s:text name="common.button_select_case"></s:text>     " />
						</form>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							<s:text name="case.now_date"></s:text>
						</th>
						<th>
							<s:text name="case.case_code"></s:text>
						</th>
						<th>
							<s:text name="case.aribitprog_num"></s:text>
						</th>
						<th>
							<s:text name="case.clerk_name"></s:text>
						</th>
						<th>
							<s:text name="case.status"></s:text>
						</th>
						<th>
							<s:text name="case.finally_limit_dat"></s:text>
						</th>
						<th>
							<s:text name="case.party1"></s:text> 
						</th>
						<th>
							<s:text name="case.party2"></s:text>
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
						</tr>
					</s:iterator>
				</tbody>
			</table>
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span"><s:text name="evaluatePartyToArbitman.list.title"></s:text>.</span>
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
					<td align="left" width='30px'>
					<table class="list_toolbar" cellspacing="0" cellpadding="0">
						<tr>
							<td align="left" width='30px'>
							<s:if test="evaluateHash[arbit].size()>0" >
								<form action="${ctx}/evaluatePartyToArbitman/toUpdateEvaluatePartyToArbitman.do" method="post">
									<input type="submit" name="SubmitNew" value="<s:text name="common.button_update"></s:text>" />
								</form>
							</s:if>
							<s:else> 
								<form action="${ctx}/evaluatePartyToArbitman/toInsertEvaluatePartyToArbitman.do" method="post">
									<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
								</form>
							</s:else> 
							</td>
							<td>
							</td>
						</tr>
					</table>
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
						<th width="50%">
							
						</th>
						<s:iterator value="caseArbitmanInList" >
						<th colspan='2'>
							<s:property value="baseDicMap['0014'][arbitmantype]" />
							<br/>
							<s:property value="arbitmanHash[arbitman]" />
						</th>
						</s:iterator>
					</tr>
					<tr>
						<th>
							<s:text name="evaluatePartyToArbitman.list.head_content"></s:text>
						</th>
						<s:iterator value="caseArbitmanInList" >
						<th>
							<s:text name="evaluatePartyToArbitman.list.head_score"></s:text>
						</th>
						<th>
							<s:text name="evaluatePartyToArbitman.list.head_remark"></s:text>
						</th>
						</s:iterator>
					</tr>
				</thead>
				<tbody>
					<%
						i_tr = 0;
					%>
					
					<s:iterator value="evaluateHash[arbit]" status="eval">
						<%
							i_tr++;
						%>
						
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="data_text" />
							</td>
							<s:if test="data_val.length()>4">
								<s:iterator value="caseArbitmanInList" >
										<td>
											<s:property value="evaluateHash[arbitman].get(#eval.index).getScore()" />
										</td>
										<td>
											<s:property value="evaluateHash[arbitman].get(#eval.index).getRemark()" />
										</td>
								</s:iterator>
							</s:if>
							<s:else>
								<s:iterator value="caseArbitmanInList" >
									<td>
										 
									</td>
									<td>
										 
									</td>
								</s:iterator>
							</s:else>
						</tr>
						
						
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>