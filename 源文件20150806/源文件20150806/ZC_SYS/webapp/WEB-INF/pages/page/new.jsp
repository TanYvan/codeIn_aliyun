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
		<title>系统权限新建</title>
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
						<span class="edit_title_span">系统权限新建</span> &nbsp;
						<a href="${ctx}/page/findPageList.do" class="edit_return"> 返回</a>
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
			<form id="fm" action="${ctx}/page/insertPage.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>

							编码:
						</th>
						<td>
							<input type="text" id="code" name="page.code" value="${page.code}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							名称:
						</th>
						<td>
							<input type="text" name="page.name" value="${page.name}" size=50/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							Url:
						</th>
						<td>
							<input type="text" name="page.url" value="${page.url}" size=80/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							Controllers:
						</th>
						<td>
							<input type="text" name="page.controllers" value="${page.controllers}" size=80/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							actions:
						</th>
						<td>
							<input type="text" name="page.actions" value="${page.actions}" size=80/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							状态:
						</th>
						<td>
							<select name="page.status">
								<option value="Y">
									Y
								</option>
								<option value="N">
									N
								</option>
							</select>
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
