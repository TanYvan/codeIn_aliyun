<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<title><s:text name="partyCaseMessage.list.title"></s:text></title>
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
							<input type="hidden" name="returnUrl" value="/partyCaseMessage/list.do" />
							<input type="submit" name="SubmitEdit" value="     <s:text name="common.button_select_case"></s:text>    " />
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
			<table class="show_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="show_title_span"><s:text name="partyCaseMessage.list.title"></s:text></span> &nbsp;
					</td>
				</tr>
				<tr>
					<td class="show_title_hr"></td>
				</tr>
				<tr>
					<td class="show_title_blank_line"></td>
				</tr>
			</table>
			<table class="show_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			
				<table class="show_data_table" cellspacing="0" cellpadding="0">
					<form id="fm" action="${ctx}/partyCaseMessage/insert.do" method="post">
					<tr>
						<th width="10%">
							<s:text name="partyCaseMessage.list.myMessage"></s:text>
						</th>
						<td width="90%">
						   <textarea name="message.message" rows="5" cols="60"></textarea>
						</td>
					</tr>
					<tr>
						<th width="10%">	
						</th>
						<td width="90%">
						   <input name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
					</tr>
					</form>
					<s:iterator value="messageList" status="">
					<tr>
						<th width="10%">

							
						</th>
						<td width="90%">
							<s:text name="partyCaseMessage.list.party_t"></s:text>：<s:property value="party_t"/>
						</td>
					</tr>
					<tr>
						<th>
							
						</th>
						<td>
							<s:text name="partyCaseMessage.list.message"></s:text>：<s:property value="message"/>
							<hr/>
						</td>
					</tr>
					</s:iterator>
				</table>
			
		</div>
	</body>
</html>
