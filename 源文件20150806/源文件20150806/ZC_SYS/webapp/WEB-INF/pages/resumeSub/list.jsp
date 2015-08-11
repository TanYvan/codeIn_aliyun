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
		        <li><a href="${ctx}/arbitmanSub/toUpdateArbitmanSub.do"><span><s:text name="arbitman.title_2"></s:text></span></a></li>
		        <li><a href="${ctx}/educateSub/findEducateSubList.do"><span><s:text name="arbitman.educate.title"></s:text></span></a></li>
				<li><a href="${ctx}/industrySub/findIndustrySubList.do" ><span><s:text name="arbitman.industry.title"></s:text></span></a></li>
				<li><a href="${ctx}/resumeSub/findResumeSubList.do" class="selected"><span><s:text name="arbitman.resume.title"></s:text></span></a></li>
				<li><a href="${ctx}/languageSub/findLanguageSubList.do" ><span><s:text name="arbitman.language.title"></s:text></span></a></li>
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
						<form action="${ctx}/resumeSub/toInsertResumeSub.do" method="post">
							<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
							..
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
							<s:text name="arbitman.resume.startdate"></s:text>
						</th>
						<th>
							<s:text name="arbitman.resume.enddate"></s:text>
						</th>
						<th>
							<s:text name="arbitman.resume.company"></s:text>
						</th>
						<th>
							<s:text name="arbitman.resume.business"></s:text>
						</th>
						<th>
							<s:text name="arbitman.resume.proveman"></s:text>
						</th>
						<th>
							<s:text name="arbitman.resume.lawyerabout"></s:text>
						</th>
						<th>
							<s:text name="arbitman.resume.remark"></s:text>
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
					<s:iterator value="resumeSubList" status="user">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="startdate" />
							</td>
							<td>
								<s:property value="enddate" />
							</td>
							<td>
								<s:property value="company" />
							</td>
							<td>
								<s:property value="business" />
							</td>
							<td>
								<s:property value="proveman" />
							</td>
							<td>
								<s:property value="baseDicMap['9902'][lawyerabout]" />
							</td>
							<td>
								<s:property value="remark" />
							</td>
							<td>
								<form
									action="${ctx}/resumeSub/toUpdateResumeSub.do?id=<s:property value='id'/>" method="post">
									<input type="submit" name="SubmitEdit" value="<s:text name="common.button_update"></s:text>" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/resumeSub/deleteResumeSub.do?id=<s:property value='id'/>" method="post" onsubmit="return confirm('<s:text name="common.button_delete_confirm"></s:text>');">
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