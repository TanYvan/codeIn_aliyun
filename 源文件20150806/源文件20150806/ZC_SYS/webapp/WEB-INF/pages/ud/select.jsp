<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>添加用户职责</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<script type="text/javascript"
			src="${ctx}/public/javascripts/jQuery.js"></script>
	</head>
	<script language="javascript">
	function addMethod(dutyCode) {
		var code = document.getElementById("code").value;
		$.ajax( {
			url : "${ctx}/ud/insertUd.do",
			type : 'POST',

			data : "dutyCode=" + dutyCode + "&code=" + code,

			dataType : 'json',

			timeout : 1000,

			success : function(result) {
				if (result == "fail") {
					alert(result);
				} else {
					var fm = document.getElementById("fm");
					fm.submit();
				}
			}
		});
	}
</script>
	<body>
		<div align="center">
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span">职责信息选择列表</span>[for
						<s:property value='user' />
						] &nbsp;
						<a href="${ctx}/ud/toUpdateUd.do?user=<s:property value='user'/>"
							class="list_return"> 返回</a>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
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

			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							职责编码
						</th>
						<th>
							职责名称
						</th>
						<th>
							添加
						</th>
					</tr>
				</thead>
				<tbody>
					<%int i_tr=0;%>
					<s:iterator value="dutyList" status="duty">
						<%i_tr++;%>
						<tr class='<%=(i_tr%2==0)?"tr_even":"tr_odd"%>'>
							<td>
								<s:property value="code" />
							</td>
							<td>
								<s:property value="name" />
							</td>
							<td>
								<form
									action="${ctx}/ud/insertUd.do?user=<s:property value='user'/>&dutyCode=<s:property value='code'/>"
									method="post">
									<input type="submit" name='SubmitAdd' value="添加" />
								</form>
							</td>
						</tr>
					</s:iterator>	
				</tbody>
			</table>
		</div>
	</body>
</html>