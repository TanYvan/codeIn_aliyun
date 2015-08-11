<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<title><s:text name="party.select.title"></s:text></title>
	</head>
	<body>  
		<div align="center">
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span" id="sqrxx"><s:text name="agent.select.title"></s:text></span>
						<a href="${ctx}/caseApply/toUpdateCaseApply.do#dlrxx" class="edit_return"><s:text name="common.return"></s:text></a>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/agent/select.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							<s:text name="agent.select.name"></s:text>:
							<input id="name" name="name" type="text" size="16" value="${name}" />&nbsp;&nbsp;
							<input name="Submit" type="submit" class="btr_search" value="<s:text name="common.button_search"></s:text>" />
						</td>
					</tr>
				</table>
			</form>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							<s:text name="common.head_select"></s:text>
						</th>
						<th>
							<s:text name="agent.select.name"></s:text>
						</th>
						<th>
							<s:text name="agent.select.status"></s:text>
						</th>
						<th>
							<s:text name="agent.select.duty"></s:text>
						</th>
						<th>
							<s:text name="agent.select.postcode"></s:text>
						</th>
						<th>
							<s:text name="agent.select.company"></s:text>
						</th>
						<th>
							<s:text name="agent.select.addr"></s:text>
						</th>
						<th>
							<s:text name="agent.select.mobiletel"></s:text>
						</th>
						<th>
							<s:text name="agent.select.tel"></s:text>
						</th>
						<th>
							<s:text name="agent.select.postTelCode"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="agentList" status="agent">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td align="left" >
								<form action="${ctx}/agent/selectInsertAgent.do" method="post">
									<input type="hidden" name="id" value="<s:property value="id" />" />
									<input type="submit" name="SubmitNew" value="<s:text name="common.button_select"></s:text>" />
								</form>
							</td>
							<td>
								<s:property value="name"/>
							</td>
							<td>
								<s:text name="baseDicMap['0007'][status]"></s:text>
							</td>
							<td>
								<s:property value="duty" />
							</td>
							<td>
								<s:property value="postcode" />
							</td>
							<td>
								<s:property value="company" />
							</td>
							<td>
								<s:property value="addr" />
							</td>
							<td>
								<s:property value="mobiletel" />
							</td>
							<td>
								<s:property value="tel" />
							</td>
							<td>
								<s:property value="postTelCode" />
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
								href='${ctx}/agent/select.do?pageNo=1${page_str}'><s:text name="common.page.mark_first"></s:text></a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/agent/select.do?pageNo=${pageNo-1}${page_str}'><s:text name="common.page.mark_forward"></s:text></a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/agent/select.do?pageNo=${pageNo+1}${page_str}''><s:text name="common.page.mark_next"></s:text></a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/agent/select.do?pageNo=${pageCount}${page_str}''><s:text name="common.page.mark_end"></s:text></a>
						</s:if>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>
