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
		        <li><a href="${ctx}/arbitmanIn/toUpdateArbitmanIn.do"><span><s:text name="arbitman.title_2"></s:text></span></a></li>
		        <li><a href="${ctx}/educateIn/findEducateInList.do"><span><s:text name="arbitman.educate.title"></s:text></span></a></li>
				<li><a href="${ctx}/industryIn/findIndustryInList.do"><span><s:text name="arbitman.industry.title"></s:text></span></a></li>
				<li><a href="${ctx}/resumeIn/findResumeInList.do" class="selected"><span><s:text name="arbitman.resume.title"></s:text></span></a></li>
				<li><a href="${ctx}/languageIn/findLanguageInList.do" ><span><s:text name="arbitman.language.title"></s:text></span></a></li>
				<li><a href="${ctx}/arbitmanAttIn/findArbitmanAttInList.do" ><span><s:text name="arbitman.arbitmanAtt.title"></s:text></span></a></li>
		      </ul>
		    </div>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span"><s:text name="arbitman.resume.title"></s:text></span> &nbsp;
						<a href="${ctx}/resumeIn/findResumeInList.do" class="edit_return"> <s:text name="common.return"></s:text></a>
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
			<form id="fm" action="${ctx}/resumeIn/insertResumeIn.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
							<s:text name="arbitman.resume.startdate"></s:text>:
						</th>
						<td>
							<input name="resumeIn.startdate" type="text" size="30" class='{required:true} Wdate' onFocus="WdatePicker()" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.resume.enddate"></s:text>:
						</th>
						<td>
							<input name="resumeIn.enddate" type="text" size="30" class='{required:true} Wdate' onFocus="WdatePicker()" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.resume.company"></s:text>:
						</th>
						<td>
							<input name="resumeIn.company" type="text"  class='{required:true}'  size="30" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.resume.business"></s:text>:
						</th>
						<td>
							<input name="resumeIn.business" type="text" class='{required:true}'  size="30" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.resume.proveman"></s:text>:
						</th>
						<td>
							<input name="resumeIn.proveman" type="text" size=50/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.resume.lawyerabout"></s:text>:
						</th>
						<td>
							<s:select name="resumeIn.lawyerabout" list="baseDicList['9902']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="arbitman.resume.remark"></s:text>:
						</th>
						<td>
							<input name="resumeIn.remark" type="text" size="30" />
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
