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
		<title><s:text name="contractsign.new.title"></s:text></title>
		<script type="text/javascript"
			src="${ctx}/public/javascripts/jQuery.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/common/js/jquery.metadata.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/common/js/jquery.validate.min.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/common/js/${validateJs}" charset="utf-8"></script>
		<script type="text/javascript">	$().ready(function() { $("#fm").validate();	});</script>
		<script language="javascript" src="${ctx}/public/common/DatePicker/WdatePicker.js"></script>
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
						<span class="edit_title_span"><s:text name="contractsign.new.title"></s:text></span> &nbsp;
						<a href="${ctx}/caseApply/toUpdateCaseApply.do#htxx" class="edit_return"> <s:text name="common.return"></s:text></a>
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
			<form id="fm" action="${ctx}/contractsign/insertContractsign.do" method="post" onsubmit="return check();">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
							<span style="color: red">*</span> <s:text name="contractsign.new.contractdate"></s:text>:
						</th>
						<td>
							<input id="contractdate" name="contractsign.contractdate" type="text" size="25"
								value="${contractsign.contractdate}" class='{required:true} Wdate' onFocus="WdatePicker()"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span> <s:text name="contractsign.new.pactname"></s:text>：
						</th>
						<td>
							<input name="contractsign.pactname" type="text" size="40" class='{required:true,maxlength:200}' 
								value="${contractsign.pactname}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="contractsign.new.note"></s:text>：
						</th>
						<td>
						<textarea name="contractsign.note" rows="5" cols="60" class='{maxlength:200}'>${contractsign.note}</textarea>
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
