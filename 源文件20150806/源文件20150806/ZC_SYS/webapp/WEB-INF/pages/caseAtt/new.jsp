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
		<title><s:text name="case_att.new.title"></s:text></title>
		<script type="text/javascript" src="${ctx}/public/common/DatePicker/WdatePicker.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/javascripts/jQuery.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/common/js/jquery.metadata.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/common/js/jquery.validate.min.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/common/js/${validateJs}" charset="utf-8"></script>
		<script type="text/javascript">	$().ready(function() { $("#fm").validate();	});</script>
		<script>
		function check() {
			if(document.getElementById("upload").value==""){
		    	alert('<s:text name="common.mes_1"></s:text>');
		    	return false;
		    }else{
		    	document.getElementById('SubmitOk').disabled='disabled';
		    	document.getElementById('SubmitOk').value='<s:text name="common.submit_wait"></s:text>';
		    	return true;
		    }
		}
		</script>
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
						<span class="edit_title_span"><s:text name="case_att.new.title"></s:text></span> &nbsp;
						<a href="${ctx}/caseApply/toUpdateCaseApply.do#ajfj"  class="edit_return"> 返回</a>
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
			<form id="fm" action="${ctx}/caseAtt/insertCaseAtt.do" method="post" enctype="multipart/form-data" onsubmit="return check();">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>

							<s:text name="case_att.new.category"></s:text>:
						</th>
						<td>
							<s:select list="baseDicList['9104']" listKey="dataVal" listValue="dataText" name="attachment.category" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="case_att.new.upload"></s:text>:
						</th>
						<td>
							<input id="upload" name="upload" type="file"  size="25" />
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="case_att.new.remark"></s:text>:
						</th>
						<td>
							<textarea name="attachment.remark" rows="5" cols="60" ></textarea>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
						</th>
						<td>
							<input id="SubmitOk" name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
