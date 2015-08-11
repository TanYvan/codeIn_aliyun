<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="arbitmanCaseIn.list.title"></s:text></title>
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
						<span class="list_title_span"><s:text name="arbitmanCaseIn.list.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/arbitmanCaseIn/findArbitmanCaseInList.do" method="post">
				<input id="returnUrl" name="returnUrl" type="hidden" size="16" value='${returnUrl}'/>
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left" width="230">
							<s:text name="case.search_case_status"></s:text>:
							<s:select name="case_status" list="baseDicList['9910']" listKey="dataVal" listValue="dataText" value="case_status"></s:select>
						</td>
						<td align="left" width="230">
							<s:text name="case.search_case_code"></s:text>:
							<input id="case_code" name="case_code" type="text" size="16" value='${case_code}'/>
						</td>
						<td align="left">
						</td>
					</tr>
					<tr>
						<td align="left">
							<s:text name="case.search_party1"></s:text>:
							<input id="partyinfo_1" name="partyinfo_1" type="text" size="16" value='${partyinfo_1}'/>
						</td>
						<td align="left">
							<s:text name="case.search_agent1"></s:text>:
							<input id="agent_1" name="agent_1" type="text" size="16" value='${agent_1}'/>
						</td>
						<td align="left">
							<s:text name="case.search_agent_company1"></s:text>:
							<input id="agent_company_1" name="agent_company_1" type="text" size="16" value='${agent_company_1}'/>
						</td>
					</tr>
					<tr>
						<td align="left">
							<s:text name="case.search_party2"></s:text>:
							<input id="partyinfo_2" name="partyinfo_2" type="text" size="16" value='${partyinfo_2}'/>
						</td>
						<td align="left">
							<s:text name="case.search_agent2"></s:text>:
							<input id="agent_2" name="agent_2" type="text" size="16" value='${agent_2}'/>
						</td>
						<td align="left">
							<s:text name="case.search_agent_company2"></s:text>:
							<input id="agent_company_2" name="agent_company_2" type="text" size="16" value='${agent_company_2}'/>
						</td>
					</tr>
					<tr>
						<td align="left">
							<s:text name="case.search_casereason"></s:text>:
							<input id="casereason" name="casereason" type="text" size="16" value='${casereason}'/>
						</td>
						<td align="left">
							<s:text name="case.search_aribitprog_num"></s:text>:
							<s:select name="aribitprog_num" list="baseDicAllList['0001']" listKey="dataVal" listValue="dataText" value="aribitprog_num"></s:select>
						</td>
						<td align="left">
							<s:text name="case.search_decideDate"></s:text>:
							<input id="decideDate" name="decideDate" type="text" size="16" class='Wdate' onFocus="WdatePicker()" value='${decideDate}'/>
						</td>
					</tr>
					<tr>
						<td align="left">
							<s:text name="case.search_endStyle"></s:text>:
							<s:select name="endStyle" list="baseDicAllList['8117']" listKey="dataVal" listValue="dataText" value="endStyle"></s:select>
						</td>
						<td align="left">
							<s:text name="case.search_clerk"></s:text>:
							<input id="case_clerk" name="case_clerk" type="text" size="16" value='${case_clerk}'/>
						</td>
						<td align="left">
						</td>
					</tr>
					<tr>
						<td align="left">
							<input name="Submit" type="submit" class="btr_search" value="<s:text name="common.button_search"></s:text>" />
						</td>
						<td align="left">
						</td>
						<td align="left">
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
							<s:text name="common.button_select"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseIn.list.head_accepttime"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseIn.list.head_case_code"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseIn.list.head_aribitprog_num"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseIn.list.head_clerk_name"></s:text>
						</th>
						<s:if test="case_status==1" >
							<th>
								<s:text name="arbitmanCaseIn.list.head_case_state"></s:text>
							</th>
						</s:if>
						<th>
							<s:text name="arbitmanCaseIn.list.head_finally_limit_dat"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseIn.list.head_partyinfo_1"></s:text> 
						</th>
						<th>
							<s:text name="arbitmanCaseIn.list.head_partyinfo_2"></s:text>  
						</th>
						<s:if test="case_status==2" >
							<th>
								<s:text name="arbitmanCaseIn.list.head_end_code"></s:text>
							</th>
							<th>
								<s:text name="arbitmanCaseIn.list.head_decideDate"></s:text>
							</th>
						</s:if>
						<th>
							<s:text name="arbitmanCaseIn.list.head_toCaseBook"></s:text>
						</th>
						<th>
							<s:text name="arbitmanCaseIn.list.head_toCaseDocIn"></s:text>
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
						<tr <s:if test="case_status==1" ><s:property value="line_color" /></s:if> class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
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
							<s:if test="case_status==1" >
								<td>
								   <s:property value="baseCaseStatus[case_state]" />
								</td>
							</s:if>
							<td>
								<span style="color: red"><s:property value="finally_limit_dat" /></span>
							</td>
							<td>
								<s:property value="partyinfo_1" />
							</td>
							<td>
								<s:property value="partyinfo_2" />
							</td>
							<s:if test="case_status==2" >
								<td>
									<s:property value="arbitBooknum" /> 
								</td>
								<td>
									<s:property value="decideDate" /> 
								</td>
							</s:if>
							<td>
								<form
									action="${ctx}/arbitmanCaseIn/toCaseBookIn.do?recevice_code=<s:property value='recevice_code'/>"
									method="post" target="_blank">
									<input type="submit" name="SubmitEdit" value='<s:text name="common.button_show"></s:text>' />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/arbitmanCaseIn/toCaseDocIn.do?recevice_code=<s:property value='recevice_code'/>"
									method="post" target="_blank">
									<input type="submit" name="SubmitEdit" value='<s:text name="common.button_show"></s:text>'  />
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