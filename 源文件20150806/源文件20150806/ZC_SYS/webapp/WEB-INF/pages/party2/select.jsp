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
						<span class="list_title_span" id="sqrxx"><s:text name="party.select.title"></s:text></span>
						<a href="${ctx}/caseApply/toUpdateCaseApply.do#bsqrxx"
							class="edit_return"> <s:text name="common.return"></s:text></a>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/party2/select.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							<s:text name="party.select.partyName"></s:text>:
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
							<s:text name="party.select.partyName"></s:text>
						</th>
						<th>
							<s:text name="party.select.isPerson"></s:text>
						</th>
						<th>
							<s:text name="party.select.commissary"></s:text>
						</th>
						<th>
							<s:text name="party.select.dutyName"></s:text>
						</th>
						<th>
							<s:text name="party.select.postTelCode"></s:text>
						</th>
						<th>
							<s:text name="party.select.postcode"></s:text>
						</th>
						<th>
							<s:text name="party.select.profession"></s:text>
						</th>
						<th>
							<s:text name="party.select.subprofession"></s:text>
						</th>
						<th>
							<s:text name="party.select.addr"></s:text>
						</th>
						<th>
							<s:text name="party.select.area"></s:text>
						</th>
						<th>
							<s:text name="party.select.mobileTel"></s:text>
						</th>
						<th>
							email
						</th>
						<th>
							<s:text name="party.select.tel"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="partyList" status="party">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td align="left" >
								<form action="${ctx}/party2/selectInsertParty.do" method="post">
									<input type="hidden" name="id" value="<s:property value="id" />" />
									<input type="submit" name="SubmitNew" value="<s:text name="common.button_select"></s:text>" />
								</form>
							</td>
							<td>
								<s:property value="partyName" />
							</td>
							<td>
								<s:property value="baseDicMap['9905'][isPerson]"/>
							</td>
							<td>
								<s:property value="commissary" />
							</td>
							<td>
								<s:property value="baseDicMap['8141'][dutyName]" />
							</td>
							<td>
								<s:property value="postTelCode" />
							</td>
							<td>
								<s:property value="postcode" />
							</td>
							<td>
								<s:property value="baseDicMap['9019'][profession]" />
							</td>
							<td>
								<s:property value="baseDicMap['9019'][subprofession]" />
							</td>
							<td>
								<s:property value="addr" />
							</td>
							<td>
								<s:property value="regionMap[area]" />
							</td>
							<td>
								<s:property value="mobileTel" />
							</td>
							<td>
								<s:property value="email" />
							</td>
							<td>
								<s:property value="tel"/>
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
								href='${ctx}/party2/select.do?pageNo=1${page_str}'><s:text name="common.page.mark_first"></s:text></a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/party2/select.do?pageNo=${pageNo-1}${page_str}'><s:text name="common.page.mark_forward"></s:text></a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/party2/select.do?pageNo=${pageNo+1}${page_str}''><s:text name="common.page.mark_next"></s:text></a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/party2/select.do?pageNo=${pageCount}${page_str}''><s:text name="common.page.mark_end"></s:text></a>
						</s:if>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>
