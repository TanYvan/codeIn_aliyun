<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css">
		<script type="text/javascript"
			src="${ctx}/public/javascripts/jQuery.js"></script>
		<script language="javascript">
	function checkForm() {
		var code = $("#code").val();
		$.ajax( {
			url : "${ctx}/quickmenu/checkSameKey.do",
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

	function aa() {
		a = window.showModalDialog("${ctx}/page/pageSelect.do", "",
				"dialogWidth=1000px;dialogHeight=600px;resizable=1");
		if (a != null) {
			a1 = a.indexOf('+', 0)
			a2 = a.substr(0, a1)
			a3 = a.substr(a1 + 1, a.length - a1)

			a4 = a3.indexOf('+', 0)
			a5 = a3.substr(0, a4)

			a6 = a3.substr(a4 + 1, a3.length - a4)

			document.getElementById("url").value = a2
			document.getElementById("controllers").value = a5
			document.getElementById("actions").value = a6
		}
	}
	function bb() {
		a = window.showModalDialog("${ctx}/page/pageSelect.do", "",
				"dialogWidth=1000px;dialogHeight=600px;resizable=1");
		if (a != null) {
			a1 = a.indexOf('+', 0)
			a2 = a.substr(0, a1)
			a3 = a.substr(a1 + 1, a.length - a1)

			a4 = a3.indexOf('+', 0)
			a5 = a3.substr(0, a4)

			a6 = a3.substr(a4 + 1, a3.length - a4)

			document.getElementById("url_2").value = a2
			document.getElementById("controllers_2").value = a5
			document.getElementById("actions_2").value = a6
		}
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
						<span class="edit_title_span">增加子节点</span> &nbsp;
					</td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/menu/insertMenu.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th width="20%">
							编码:
						</th>
						<td align="left" width="80%">
							<input type="text" name="menu.code" id="code" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							名称(简体中文):
						</th>
						<td align="left">
							<input type="text" name="menu.name" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							名称(繁体中文):
						</th>
						<td align="left">
							<input type="text" name="menu.nameTw" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							名称(英文):
						</th>
						<td align="left">
							<input type="text" name="menu.nameEn" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							url:
						</th>
						<td>
							<input id="url" type="text" name="menu.url" size=50/>
							<input type="button" value="选择" onclick="aa()";/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							controllers:
						</th>
						<td>
							<input id="controllers" type="text" name="menu.controllers" size=50/>
						</td>
					</tr>
					<tr>
						<th>
							actions:
						</th>
						<td>
							<input id="actions" type="text" name="menu.actions" size=50/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
						</th>
						<td>
							<input type="submit" value="提交" />
						</td>
					</tr>
				</table>
				<input type="hidden" name="menu.roleCode" value="${roleCode}" />
				<input type="hidden" name="menu.parent" value="${parent}" />
			</form>


			<table class="edit_blank_line" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td></td>
					</tr>
			</table>
		<s:if test="parent!=0">
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span">修改当前节点</span> &nbsp;
					</td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/menu/updateMenu.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th width="20%">
							编码:
						</th>
						<td align="left" width="80%">
							${menu.code}
							<input type="hidden" name="menu.id" value="${menu.id}" />
							<input type="hidden" name="menu.code" value="${menu.code}" />
							<input type="hidden" name="menu.roleCode" value="${menu.roleCode}" />
							<input type="hidden" name="menu.parent" value="${menu.parent}" />
							<div style="color: red"></div>
						</td>
					</tr>

					<tr>
						<th>
							名称（简体中文）:
						</th>
						<td align="left">
							<input type="text" name="menu.name" value="${menu.name}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							名称（繁体中文）:
						</th>
						<td align="left">
							<input type="text" name="menu.nameTw" value="${menu.nameTw}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							名称（英文）:
						</th>
						<td align="left">
							<input type="text" name="menu.nameEn" value="${menu.nameEn}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							url:
						</th>
						<td>
							<input id="url_2" type="text" name="menu.url" value="${menu.url}" size=50/>
							<input type="button" value="选择" onclick="bb()";/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							controllers:
						</th>
						<td>
							<input id="controllers_2" type="text" name="menu.controllers" value="${menu.controllers}" size=50/>
						</td>
					</tr>
					<tr>
						<th>
							actions:
						</th>
						<td>
							<input id="actions_2" type="text" name="menu.actions" value="${menu.actions}" size=50/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>

						</th>
						<td>
							<table>
								<tr>
									<td>
										<input type="submit" value="提交" />
										</form>
									</td>
									<td>
										<form
											action="${ctx}/menu/deleteMenu.do?id=<s:property value='id'/>"
											method="post" onsubmit="return confirm('您确认要删除吗？');">
											<input type="submit" name="SubmitDel" value="删除" />
										</form>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</s:if>
		</div>
	</body>
</html>
