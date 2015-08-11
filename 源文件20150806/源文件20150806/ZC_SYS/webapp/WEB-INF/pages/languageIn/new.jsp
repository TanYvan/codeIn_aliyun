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
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet" type="text/css" />
		<title></title>
		<script type="text/javascript" src="${ctx}/public/common/DatePicker/WdatePicker.js"></script>
	</head>
	<body>
		<div align="center">
			<table class="edit_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<div class="tabs" align="center">
		      <ul>
		        <li><a href="${ctx}/arbitmanIn/toUpdateArbitmanIn.do"><span><s:text name="arbitman.title_2"></s:text></span></a></li>
		        <li><a href="${ctx}/educateIn/findEducateInList.do"><span><s:text name="arbitman.educate.title"></s:text></span></a></li>
				<li><a href="${ctx}/industryIn/findIndustryInList.do"><span><s:text name="arbitman.industry.title"></s:text></span></a></li>
				<li><a href="${ctx}/resumeIn/findResumeInList.do"><span><s:text name="arbitman.resume.title"></s:text></span></a></li>
				<li><a href="${ctx}/languageIn/findLanguageInList.do" class="selected"><span><s:text name="arbitman.language.title"></s:text></span></a></li>
				<li><a href="${ctx}/arbitmanAttIn/findArbitmanAttInList.do" ><span><s:text name="arbitman.arbitmanAtt.title"></s:text></span></a></li>
		      </ul>
		    </div>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span"><s:text name="arbitman.language.title"></s:text></span> &nbsp;
						<a href="${ctx}/languageIn/findLanguageInList.do" class="edit_return"> <s:text name="common.return"></s:text></a>
						.
					</td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
			</table>
			<table class="edit_toolbar" cellspacing="0" cellpadding="0">
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
			<form id="fm" action="${ctx}/languageIn/insertLanguageIn.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
							<s:text name="arbitman.language.language"></s:text>:
						</th>
						<td>
							<s:select list="baseDicList['9008']" listKey="dataVal" listValue="dataText"  name="languageIn.language"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.language.ability"></s:text>:
						</th>
						<td>
							<s:select list="baseDicList['9009']" listKey="dataVal" listValue="dataText"  name="languageIn.ability"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.language.literacy"></s:text>:
						</th>
						<td>
							<s:select list="baseDicList['9010']" listKey="dataVal" listValue="dataText" name="languageIn.literacy"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.language.remark"></s:text>:
						</th>
						<td>
							<input name="languageIn.remark" type="text" size="15" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
						</th>
						<td>
							<input name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
