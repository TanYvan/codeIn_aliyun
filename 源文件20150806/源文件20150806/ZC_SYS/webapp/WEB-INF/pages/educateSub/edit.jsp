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
		<script type="text/javascript" src="${ctx}/public/javascripts/jQuery.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/jquery.metadata.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/${validateJs}" charset="utf-8"></script>
		<script type="text/javascript">	$().ready(function() { $("#fm").validate();	});</script>
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
		        <li><a href="${ctx}/arbitmanSub/toUpdateArbitmanSub.do"><span><s:text name="arbitman.title_2"></s:text></span></a></li>
		        <li><a href="${ctx}/educateSub/findEducateSubList.do" class="selected"><span><s:text name="arbitman.educate.title"></s:text></span></a></li>
				<li><a href="${ctx}/industrySub/findIndustrySubList.do" ><span><s:text name="arbitman.industry.title"></s:text></span></a></li>
				<li><a href="${ctx}/resumeSub/findResumeSubList.do" ><span><s:text name="arbitman.resume.title"></s:text></span></a></li>
				<li><a href="${ctx}/languageSub/findLanguageSubList.do" ><span><s:text name="arbitman.language.title"></s:text></span></a></li>
		      </ul>
		    </div>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span"><s:text name="arbitman.educate.title"></s:text></span> &nbsp;
						<a href="${ctx}/educateSub/findEducateSubList.do" class="edit_return"> <s:text name="common.return"></s:text></a>
						..
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
			<form id="fm" action="${ctx}/educateSub/updateEducateSub.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
							<s:text name="arbitman.educate.graduatedate"></s:text>：
						</th>
						<td>
							<input name="educateSub.id" type="hidden" size="15"  value="${educateSub.id}"/>
							<input name="educateSub.graduatedate" type="text" size="15"  class='{required:true} Wdate' onFocus="WdatePicker()" value="${educateSub.graduatedate}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.educate.specialty"></s:text>：
						</th>
						<td>
							<input name="educateSub.specialty" type="text" size="15" class='{required:true}' value="${educateSub.specialty}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.educate.school"></s:text>：
						</th>
						<td>
							<input name="educateSub.school" type="text" size="15" class='{required:true}' value="${educateSub.school}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.educate.studycalendar"></s:text>：
						</th>
						<td>
						    <s:select name="educateSub.studycalendar" list="baseDicList['9006']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.educate.degree"></s:text>：
						</th>
						<td>
							<s:select name="educateSub.degree" list="baseDicList['9007']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.educate.degreeletter"></s:text>：
						</th>
						<td>
							<input name="educateSub.degreeletter" type="text" size="15"  value="${educateSub.degreeletter}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.educate.lawyercalendar"></s:text>:
						</th>
						<td>
							<s:select name="educateSub.lawyercalendar" list="baseDicList['9902']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.educate.foreignlearn"></s:text>:
						</th>
						<td>
						    <s:select name="educateSub.foreignlearn" list="baseDicList['9902']" listKey="dataVal" listValue="dataText" ></s:select>
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
