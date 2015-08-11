<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>网上办公系统 工作区3</title>
		<link href="css/css.css" rel="stylesheet" type="text/css" />
		<script>
function submit() {
	var fm = document.getElementById("fm");
	fm.submit();
}
</script>
	</head>

	<body>
		<table width="98%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td height="15"></td>
				</tr>
		</table>
		<table width="98%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<span class="font4">页面名称</span>
					<a href="${ctx}/notify/toNotifyList.do" class="a3"> &nbsp;返回</a>
				</td>
			</tr>
			<tr>
				<td height="1" bgcolor="#999999"></td>
			</tr>
			<tr>
				<td height="15"></td>
			</tr>
		</table>
		<table width="98%" border="0" border="0" cellspacing="0"
			cellpadding="0">
			<tr>
				<td align="center" bgcolor="#FFFFFF" class="font5">
				</td>
			</tr>
		</table>
		<form id="fm" action="${ctx}/notify/insertNotify.do" method="post">
			<table width="98%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class="font6">
						类型：
						<s:select name="notify.category" list="#{'1':'公告'}" listKey="key"
							listValue="value"></s:select>
					</td>
				</tr>
				<tr>
					<td class="font6">
						发布范围： 仲裁员
						<input type="checkbox" value="仲裁员" name="notify.range">
						助理
						<input type="checkbox" value="助理" name="notify.range">
						当事人
						<input type="checkbox" value="当事人" name="notify.range">
					</td>
				</tr>
				<tr>
					<td class="font6">
						标题：
						<input name="notify.title" type="text" size="15" />
					</td>
				</tr>
				<tr>
					<td class="font6">
						发布时间：
						<input name="notify.putDate" type="text" size="15" class='Wdate'
							onFocus="WdatePicker()"/>
					</td>
				</tr>
				<tr>
					<td class="font6">
						序号：
						<input name="notify.num" type="text" size="15" />
					</td>
				</tr>
				<tr>
					<td class="font6">
						内容：
						<textarea name="notify.content" rows="5" cols="60"></textarea>
					</td>
				</tr>
				<tr>
					<td class="font6">
						状态：
						<s:select name="notify.status" list="#{'1':'发布','0':'未发布'}" listKey="key"
							listValue="value"></s:select>
					</td>
				</tr>
			</table>
			<table width="98%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="15"></td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<input type="image" name="imageField" src="image/wofk_r5_c4.jpg"
							onclick="submit();" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
