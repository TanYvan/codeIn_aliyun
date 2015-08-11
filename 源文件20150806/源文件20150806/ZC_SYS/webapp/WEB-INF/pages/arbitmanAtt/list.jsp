<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
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
			<div class="tabs" align="center">
		      <ul>
		        <li><a href="${ctx}/arbitman/toUpdateArbitman.do"><span><s:text name="arbitman.title_2"></s:text></span></a></li>
		        <li><a href="${ctx}/educate/findEducateList.do"><span><s:text name="arbitman.educate.title"></s:text></span></a></li>
				<li><a href="${ctx}/industry/findIndustryList.do"><span><s:text name="arbitman.industry.title"></s:text></span></a></li>
				<li><a href="${ctx}/resume/findResumeList.do"><span><s:text name="arbitman.resume.title"></s:text></span></a></li>
				<li><a href="${ctx}/language/findLanguageList.do"><span><s:text name="arbitman.language.title"></s:text></span></a></li>
				<li><a href="${ctx}/arbitmanAtt/findArbitmanAttList.do" class="selected"><span><s:text name="arbitman.arbitmanAtt.title"></s:text></span></a></li>
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
						<form action="${ctx}/arbitmanAtt/toInsertArbitmanAtt.do" method="post">
							<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
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
							<s:text name="arbitman.arbitmanAtt.category"></s:text>
						</th>
						<th>
							<s:text name="arbitman.arbitmanAtt.upTime"></s:text>
						</th>
						<th>
							<s:text name="arbitman.arbitmanAtt.fileName"></s:text>
						</th>
						<th>
							<s:text name="arbitman.arbitmanAtt.remark"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="attachmentList" status="att">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="baseDicMap['9101'][category]" />
							</td>
							<td>
								<s:property value="upTime" />
							</td>
							<td>
								<s:property value="fileName" />
								<a href="${ctx}/arbitmanAtt/downFile.do?id=<s:property value="id" />" target="_blank" class="edit_return"><s:text name="common.down"></s:text></a>
							</td>
							<td>
								<s:property value="remark" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>