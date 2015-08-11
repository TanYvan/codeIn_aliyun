<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet" type="text/css" />
		<title>评价仲裁员..</title>
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
			document.getElementById('SubmitOk').value='提交中请等待';
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
						<span class="edit_title_span">评价仲裁员..</span> &nbsp;
						<a href="${ctx}/evaluateAssistantToArbitman/findEvaluateAssistantToArbitmanList.do" class="edit_return"> 返回</a>
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
			<form id="fm" action="${ctx}/evaluateAssistantToArbitman/insertEvaluateAssistantToArbitman.do" method="post" enctype="multipart/form-data" onsubmit="return check();">
				<table class="list_data_table" cellpadding="0" cellspacing="1">
					<thead>
						<tr>
							<th width="50%">
								
							</th>
							<s:iterator value="caseArbitmanInList" status="data">
								<th>
									<s:property value="baseDicMap['0014'][arbitmantype]" />
									<br/>
									<s:property value="arbitmanHash[arbitman]" />
								</th>
								<th>
									
								</th>
							</s:iterator>
						</tr>
						<tr>
							<th>
								评价内容
							</th>
							<s:iterator value="caseArbitmanInList" status="data">
								<th>
									分数
								</th>
								<th>
									备注
								</th>
							</s:iterator>
						</tr>
					</thead>
					<tbody>
						<%
							int i_tr = 0;
						%>
						<s:iterator value="baseDicList['8160']" >
							<%
								i_tr++;
							%>
							<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
								<td>
									<s:property value="dataText" />
								</td>
								<s:if test="dataVal.length()>4">
									<s:iterator value="caseArbitmanInList" >
										<td>
											 <input type="text" id="score_id_${dataVal}_<s:property value='arbitman' />" name="score_name_${dataVal}_<s:property value='arbitman'/>" value="0" style="width: 25px" class='{number:true}'/>
										</td>
										<td>
											 <input type="text" id="remark_id_${dataVal}_<s:property value='arbitman'/>" name="remark_name_${dataVal}_<s:property value='arbitman'/>" value="" class='{maxlength:300}'/>
										</td>
									</s:iterator>
								</s:if>
								<s:else>
									<s:iterator value="caseArbitmanInList" >
										<td>
											 <input type="hidden" id="score_id_${dataVal}_<s:property value='arbitman' />" name="score_name_${dataVal}_<s:property value='arbitman'/>" value="0" style="width: 25px" class='{number:true}'/>
										</td>
										<td>
											 <input type="hidden" id="remark_id_${dataVal}_<s:property value='arbitman'/>" name="remark_name_${dataVal}_<s:property value='arbitman'/>" value="" class='{maxlength:300}'/>
										</td>
									</s:iterator>
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
							<input id="SubmitOk" name="SubmitOk" type="submit" class="btr_ok" value="确 定" />
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
