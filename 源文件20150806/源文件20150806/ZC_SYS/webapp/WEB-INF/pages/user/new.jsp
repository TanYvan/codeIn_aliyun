<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>用户信息新建</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<script type="text/javascript" src="${ctx}/public/javascripts/jQuery.js"></script>
		<script language="javascript">
		function checkForm() {
			var code = $("#code").val();
			$.ajax( {
				url : "${ctx}/user/checkSameKey.do",
				type : 'POST',
				data : "code=" + code,
				dataType : 'json',
				timeout : 10000,
				error : function() {
					alert('Error!!');
				},
				success : function(result) {
					if (result == "fail") {
						alert("用户名重复!");
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
				<tbody>
					<tr>
						<td></td>
					</tr>
			</table>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span">用户信息新建</span>
						&nbsp;
						<a href="${ctx}/user/findUserList.do" class="edit_return"> 返回</a>
					</td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
			</table>
			<table class="edit_toolbar" cellspacing="0"cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
						<div class="message">${error}</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/user/insertUser.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
							顺序号:
						</th>
						<td>
							<input type="text" name="user.ord" value="${user.ord}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<i>*</i>用户名:
						</th>
						<td>
							<input type="text" id="code" name="user.code" value="${user.code}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<i>*</i>密码:
						</th>
						<td align="left">
							<input type="text" name="user.password" value="${user.password}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<i>*</i>用户名称:
						</th>
						<td>
							<input type="text" name="user.name" value="${user.name}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							拼音缩写:
						</th>
						<td>
							<input type="text" name="user.spell" value="${user.spell}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							咨询登录编码:
						</th>
						<td>
							<input type="text" name="user.lCode" value="${user.lCode}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							显示状态(在选择列表或查询中显示,Y:显示；N:不显示):
						</th>
						<td>
							<s:select name="user.used" list="#{'Y':'Y','N':'N'}" listKey="key"
								listValue="value">
							</s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							是否在职(Y:在职；N:不在职):
						</th>
						<td>
							<s:select name="user.states" list="#{'Y':'Y','N':'N'}"
								listKey="key" listValue="value">
							</s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							性别:
						</th>
						<td>
							<s:select name="user.sex" list="#{'m':'男','w':'女'}" listKey="key"
								listValue="value">
							</s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							固定电话:
						</th>
						<td>
							0755-
							<input type="text" name="user.telephone" value="${user.telephone}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							传真号码:
						</th>
						<td>
							0755-
							<input type="text" name="user.fax" value="${user.fax}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							手机号码:
						</th>
						<td>
							<input type="text" name="user.mobiletel" value="${user.mobiletel}" />
						</td>
					</tr>
					<tr>
						<th>
							邮件地址:
						</th>
						<td>
							<input type="text" name="user.email" value="${user.email}" />
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