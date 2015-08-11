<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<title>参数表信息维护</title>
		<script type="text/javascript" src="${ctx}/public/javascripts/jQuery.js">
</script>
		<script language="javascript">
function checkForm() {
	var code = $("#code").val();
	$.ajax( {
		url : "${ctx}/page/checkSameKey.do",
		type : 'POST',
		data : "code=" + code,
		dataType : 'json',

		timeout : 10000,

		error : function() {
			alert('Error!!');
		},

		success : function(result) {
			if (result == "fail") {
				alert("编码重复!");
			} else {
				var fm = document.getElementById("fm");
				fm.submit();
			}
		}
	});
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
						<span class="edit_title_span">参数表信息维护</span> &nbsp;
						<a href="${ctx}/sysArg/findSysArgList.do" class="edit_return"> 返回</a>
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
							修改成功
						</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/sysArg/updateSysArg.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>

							编码:
						</th>
						<td>
							${sysArgs.code}
							<input type="hidden" name="sysArgs.id" value="${sysArgs.id}" />
							<input type="hidden" name="sysArgs.code" value="${sysArgs.code}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							参数值:
						</th>
						<td>
							<textarea name="sysArgs.val" rows="3" cols="50" >${sysArgs.val}</textarea>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							注释:
						</th>
						<td>
							${sysArgs.describ}
							<input type="hidden" name="sysArgs.describ"	value="${sysArgs.describ}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
						</th>
						<td>
							<input name="SubmitOk" type="submit" class="btr_ok" value="确 定" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
