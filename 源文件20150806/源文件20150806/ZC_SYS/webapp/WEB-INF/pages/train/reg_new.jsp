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
		<title>培训报名增加</title>
		<script type="text/javascript"
			src="${ctx}/public/common/DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" charset="utf-8"
			src="${ctx}/public/ueditor/ueditor.config.js"></script>
		<script type="text/javascript" charset="utf-8"
			src="${ctx}/public/ueditor/ueditor.all.js"> </script>
		<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
		<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
		<script type="text/javascript" charset="utf-8"
			src="${ctx}/public/ueditor/lang/zh-cn/zh-cn.js"></script>
		<script type="text/javascript">
			var ue = UE.getEditor('editor');
			ue.addListener("ready", function () {
			ue.setContent("${train.content}");
			});
		</script>
		<script language="javascript">
	function aa() {
		a = window.showModalDialog("${ctx}/searchArbitmanInForUser/select.do", "",
				"dialogWidth=1000px;dialogHeight=600px;resizable=1");
		if (a != null) {
			a1 = a.indexOf('+', 0)
			a2 = a.substr(0, a1)
			a3 = a.substr(a1 + 1, a.length - a1)

			document.getElementById("trainReg.user").value = a2
			document.getElementById("trainReg.user_name").value = a3
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
						<span class="edit_title_span">培训报名增加</span> &nbsp;
						<a href="${ctx}/train/regList.do?id=${id}" class="edit_return">
							返回</a>
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

						</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/train/regInsert.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
							仲裁员姓名：
						</th>
						<td>
							${trainReg.user_name}
							<input name="trainReg.train_id" type="hidden" size="15"
								value="${id}" />
							<input id="trainReg.user" name="trainReg.user" type="hidden" size="15" />
							<input id="trainReg.user_name" name="trainReg.user_name" type="text" size="50"   readonly/>
							<input type="button" value="选择" onclick="aa()" ;/>
						</td>
					</tr>
					<tr>
						<th>
							备注：
						</th>
						<td>
							<input id="trainReg.remark" name="trainReg.remark" type="text" size="50" />
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
