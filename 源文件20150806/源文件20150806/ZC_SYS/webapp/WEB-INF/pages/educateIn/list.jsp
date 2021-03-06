<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
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
			<div class="tabs" align="center">
		      <ul>
		        <li><a href="${ctx}/arbitmanIn/toUpdateArbitmanIn.do"><span><s:text name="arbitman.title_2"></s:text></span></a></li>
		        <li><a href="${ctx}/educateIn/findEducateInList.do" class="selected"><span><s:text name="arbitman.educate.title"></s:text></span></a></li>
				<li><a href="${ctx}/industryIn/findIndustryInList.do" ><span><s:text name="arbitman.industry.title"></s:text></span></a></li>
				<li><a href="${ctx}/resumeIn/findResumeInList.do" ><span><s:text name="arbitman.resume.title"></s:text></span></a></li>
				<li><a href="${ctx}/languageIn/findLanguageInList.do" ><span><s:text name="arbitman.language.title"></s:text></span></a></li>
				<li><a href="${ctx}/arbitmanAttIn/findArbitmanAttInList.do" ><span><s:text name="arbitman.arbitmanAtt.title"></s:text></span></a></li>
		      </ul>
		    </div>
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span">&nbsp;</span>
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
						<form action="${ctx}/educateIn/toInsertEducateIn.do" method="post">
							<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
							.
						</form>
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
							<s:text name="arbitman.educate.graduatedate"></s:text>
						</th>
						<th>
							<s:text name="arbitman.educate.specialty"></s:text>
						</th>
						<th>
							<s:text name="arbitman.educate.school"></s:text>
						</th>
						<th>
							<s:text name="arbitman.educate.studycalendar"></s:text>
						</th>
						<th>
							<s:text name="arbitman.educate.degree"></s:text>
						</th>
						<th>
							<s:text name="arbitman.educate.degreeletter"></s:text>
						</th>
						<th>
							<s:text name="arbitman.educate.lawyercalendar"></s:text>
						</th>
						<th>
							<s:text name="arbitman.educate.foreignlearn"></s:text>
						</th>
						<th>
							<s:text name="common.head_update"></s:text>
						</th>
						<th>
							<s:text name="common.head_delete"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="educateInList" status="user">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="graduatedate" />
							</td>
							<td>
								<s:property value="specialty" />
							</td>
							<td>
								<s:property value="school" />
							</td>
							<td>
								<s:property value="baseDicMap['9006'][studycalendar]" />
							</td>
							<td>
								<s:property value="baseDicMap['9007'][degree]" />
							</td>
							<td>
								<s:property value="degreeletter" />
							</td>
							<td>
								<s:property value="baseDicMap['9902'][lawyercalendar]" />
							</td>
							<td>
								<s:property value="baseDicMap['9902'][foreignlearn]" />
							</td>
							<td>
								<form
									action="${ctx}/educateIn/toUpdateEducateIn.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitEdit" value="<s:text name="common.button_update"></s:text>" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/educateIn/deleteEducateIn.do?id=<s:property value='id'/>"
									method="post" onsubmit="return confirm('<s:text name="common.button_delete_confirm"></s:text>');">
									<input type="submit" name="SubmitEdit" value="<s:text name="common.button_delete"></s:text>" />
								</form>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>