<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>修改密码</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript" src="${ctx}/public/javascripts/jQuery.js">
</script>
		<script type="text/javascript">
function OnSubmit() {
	var pwd1 = document.getElementById("password").value;
	var pwd2 = document.getElementById("password_confirmation").value;
	var old = document.getElementById("old_password").value;
	var userId = document.getElementById("user.id").value;
	if (pwd2 != pwd1) {
		alert("您两次输入的密码不一致！");
	} else {
		$.ajax( {
			url : '${ctx}/user/changePassWord.do',

			type : 'POST',

			data : "id="+userId+"&old_password="+old+"&password"+pwd1,

			dataType : 'json',

			timeout : 1000,

			error : function() {
				alert('Error!!');
			},

			success : function(result) {
				if(result=="fail"){
					alert("password error!");
				}else{
					var fm=document.getElementById("fm");
					fm.submit();
				}
			}
		});
	}
}
</script>
	</head>
	<body>

		<br />
		<form id="fm" method="post" action="${ctx}/user/toUser.do">
			<table class="list">
				<tr>
					<th>
						编码 :
					</th>
					<td>
						<input id="user.id" type="hidden" name="user.id"
							value="${user.id}" />
						<s:property value="user.code" />
					</td>
				</tr>
				<tr>
					<th>
						名称 :
					</th>
					<td>
						<s:property value="user.name" />
					</td>
				</tr>
				<tr>
					<th>
						原密码 :
					</th>
					<td>
						<input type="password" id="old_password" name="old_password"
							value='' />
					</td>
				</tr>
				<tr>
					<th>
						新密码 :
					</th>
					<td>
						<input type="password" id="password" name="password" value='' />
					</td>
				</tr>
				<tr>
					<th>
						新密码确认 :
					</th>
					<td>
						<input type="password" id="password_confirmation"
							name="password_confirmation" value='' />
					</td>
				</tr>
			</table>
			<br />
			<div align="center">
				<input type="button" onclick="OnSubmit();" value="确定" />
			</div>

		</form>
	</body>
</html>
