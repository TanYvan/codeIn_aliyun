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
		<title><s:text name="caseApply.new.title"></s:text></title>
	</head>
	<body>
		<div align="center">
			<table class="edit_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span"><s:text name="caseApply.new.title"></s:text></span> &nbsp;
						<a href="${ctx}/caseApply/findCaseApplyList.do" class="edit_return">
							<s:text name="common.return"></s:text></a>
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
							<div class="message">${error}</div>
						</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/caseApply/insertCaseApply.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th width="30%">
							<s:text name="caseApply.new.head_casereason"></s:text>：
						</th>
						<td>
							<textarea id="caseApplyBase.casereason" name="caseApplyBase.casereason" rows="5" cols="60"></textarea>
							<s:text name="caseApply.new.mes_1"></s:text>
						</td>
					</tr>
					<tr>
						<th width="30%">
							<s:text name="caseApply.new.head_remark"></s:text>：
						</th>
						<td>
							<textarea id="caseApplyBase.remark" name="caseApplyBase.remark" rows="5" cols="60"></textarea>
						</td>
					</tr>
					<tr>
						<th width="30%">
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
