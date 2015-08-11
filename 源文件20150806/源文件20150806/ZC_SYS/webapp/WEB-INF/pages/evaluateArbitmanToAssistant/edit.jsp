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
		<title><s:text name="evaluateArbitmanToAssistant.edit.title"></s:text></title>
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
			document.getElementById('SubmitOk').disabled='disabled';
			document.getElementById('SubmitOk').value='<s:text name="common.submit_wait"></s:text>';
			return true;
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
						<span class="edit_title_span"><s:text name="evaluateArbitmanToAssistant.edit.title"></s:text></span> &nbsp;
						<a href="${ctx}/evaluateArbitmanToAssistant/findEvaluateArbitmanToAssistantList.do" class="edit_return"> <s:text name="common.return"></s:text></a>
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
			<form id="fm" action="${ctx}/evaluateArbitmanToAssistant/updateEvaluateArbitmanToAssistant.do" method="post" enctype="multipart/form-data" onsubmit="return check();">
				<table class="list_data_table" cellpadding="0" cellspacing="1">
					<thead>
						<tr>
							<th width="50%">
								
							</th>
							<th colspan='2'>
								<s:text name="evaluateArbitmanToAssistant.edit.head_assistant"></s:text>：<s:property value="clerk_code" />
							</th>
							<th>
								
							</th>
						</tr>
						<tr>
							<th>
								<s:text name="evaluateArbitmanToAssistant.edit.head_content"></s:text>
							</th>
							<th>
								<s:text name="evaluateArbitmanToAssistant.edit.head_score"></s:text>
							</th>
							<th>
								<s:text name="evaluateArbitmanToAssistant.edit.head_remark"></s:text>
							</th>
						</tr>
					</thead>
					<tbody>
						<%
							int i_tr = -1;
						%>
						<s:iterator value="evaluateList" status="eval">
							<%
								i_tr++;
							%>
							<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
								<td>
									<s:property value="data_text" />
								</td>
								<s:if test="data_val.length()>4">
									<td>
										 <input type="text" id='score_id_<s:property value="data_val" />_<s:property value="clerk_code" />' name='score_name_<s:property value="data_val" />_<s:property value="clerk_code" />' value='<s:property value="score" />' style="width: 25px" class='{number:true}'/>
									</td>
									<td>
										 <input type="text" id='remark_id_<s:property value="data_val" />_<s:property value="clerk_code" />' name='remark_name_<s:property value="data_val" />_<s:property value="clerk_code" />' value='<s:property value="remark" />' class='{maxlength:300}'/>
									</td>
								</s:if>
								<s:else >
									<td>
										 <input type="hidden" id='score_id_<s:property value="data_val" />_<s:property value="clerk_code" />' name='score_name_<s:property value="data_val" />_<s:property value="clerk_code" />' value='<s:property value="score" />' style="width: 25px" class='{number:true}'/>
									</td>
									<td>
										 <input type="hidden" id='remark_id_<s:property value="data_val" />_<s:property value="clerk_code" />' name='remark_name_<s:property value="data_val" />_<s:property value="clerk_code" />' value='<s:property value="remark" />' class='{maxlength:300}'/>
									</td>
								</s:else>
							</tr>
						</s:iterator>
					</tbody>
				</table>
				<table class="edit_blank_line" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
						</th>
						<td>
							<input id="SubmitOk" name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
					</tr>
				</table>
				<table class="edit_blank_line" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
