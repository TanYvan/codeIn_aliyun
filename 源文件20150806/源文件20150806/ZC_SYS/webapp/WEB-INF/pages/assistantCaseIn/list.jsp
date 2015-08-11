<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>选择案件</title>
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
						<span class="list_title_span">选择案件..</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/assistantCaseIn/findAssistantCaseInList.do" method="post">
				<input id="returnUrl" name="returnUrl" type="hidden" size="16" value='${returnUrl}'/>
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left" width="230">
							案件状态:
							<s:select name="case_status" list="baseDicList['9910']" listKey="dataVal" listValue="dataText" value="case_status"></s:select>
							</td>
						<td align="left" width="230">
							立案号:
							<input id="case_code" name="case_code" type="text" size="16" value='${case_code}'/>
						</td>
						<td align="left">
						</td>
					</tr>
					<tr>
						<td align="left">
							申请人:
							<input id="partyinfo_1" name="partyinfo_1" type="text" size="16" value='${partyinfo_1}'/>
						</td>
						<td align="left">
							申请人代理人:
							<input id="agent_1" name="agent_1" type="text" size="16" value='${agent_1}'/>
						</td>
						<td align="left">
							申请人代理人单位:
							<input id="agent_company_1" name="agent_company_1" type="text" size="16" value='${agent_company_1}'/>
						</td>
					</tr>
					<tr>
						<td align="left">
							被申请人:
							<input id="partyinfo_2" name="partyinfo_2" type="text" size="16" value='${partyinfo_2}'/>
						</td>
						<td align="left">
							被申请人代理人:
							<input id="agent_2" name="agent_2" type="text" size="16" value='${agent_2}'/>
						</td>
						<td align="left">
							被申请人代理人单位:
							<input id="agent_company_2" name="agent_company_2" type="text" size="16" value='${agent_company_2}'/>
						</td>
					</tr>
					<tr>
						<td align="left">
							案由:
							<input id="casereason" name="casereason" type="text" size="16" value='${casereason}'/>
						</td>
						<td align="left">
							程序类型:
							<s:select name="aribitprog_num" list="baseDicAllList['0001']" listKey="dataVal" listValue="dataText" value="aribitprog_num"></s:select>
						</td>
						<td align="left">
							裁决作出日期 :
							<input id="decideDate" name="decideDate" type="text" size="16" class='Wdate' onFocus="WdatePicker()" value='${decideDate}'/>
						</td>
					</tr>
					<tr>
						<td align="left">
							结案方式:
							<s:select name="endStyle" list="baseDicAllList['8117']" listKey="dataVal" listValue="dataText" value="endStyle"></s:select>
						</td>
						<td align="left">
						</td>
						<td align="left">
						</td>
					</tr>
					<tr>
						<td align="left">
							<input name="Submit" type="submit" class="btr_search" value="查 询" />
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
						<tr>
						<th>
							选择
						</th>
						<th>
							立案日期
						</th>
						<th>
							立案号
						</th>
						<th>
							仲裁程序
						</th>
						<th>
							办案助理
						</th>
						<s:if test="case_status==1" >
							<th>
								案件阶段
							</th>
						</s:if>
						<th>
							审限或最终延期日期 
						</th>
						<th>
							申请人 
						</th>
						<th>
							被申请人 
						</th>
						<s:if test="case_status==2" >
							<th>
								结案号 
							</th>
							<th>
								结案日期
							</th>
						</s:if>
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
									<input type="submit" name="SubmitEdit" value="选择" />
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
								   <s:property value="case_state" />
								</td>
							</s:if>
							<td>
								<s:property value="finally_limit_dat" />
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
						</tr>
					</s:iterator>
				</tbody>
			</table>
			${page_bar}
		</div>
	</body>
</html>