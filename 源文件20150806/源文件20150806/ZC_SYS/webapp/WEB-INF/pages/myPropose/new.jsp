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
			<script type="text/javascript" charset="utf-8" src="${ctx}/public/ueditor/ueditor.config.js"></script>
	    
	    <script type="text/javascript" charset="utf-8" src="${ctx}/public/ueditor/ueditor.all.js"> </script>
	    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
	    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	    <script type="text/javascript" charset="utf-8" src="${ctx}/public/ueditor/lang/zh-cn/zh-cn.js"></script>
		<script type="text/javascript">
			var ue = UE.getEditor('editor');
			ue.addListener("ready", function () {
			ue.setContent("${propose.content}");
			});
		</script>
		
		<title><s:text name="myPropose.new.title"></s:text></title>
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
						<span class="edit_title_span"><s:text name="myPropose.new.title"></s:text></span> &nbsp;
						<a href="${ctx}/myPropose/findMyProposeList.do" class="edit_return"> <s:text name="common.return"></s:text></a>
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
			<form id="fm" action="${ctx}/myPropose/insertMyPropose.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
							<s:text name="myPropose.new.head_title"></s:text>：
						</th>
						<td>
							<input name="propose.title" type="text" size="25" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="myPropose.new.head_content"></s:text>：
						</th>
						<td>
							<span><script id="editor" type="text/plain" name="propose.content"></script></span>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="myPropose.new.head_contact"></s:text>：
						</th>
						<td>
							<input name="propose.contact" type="text" size="50" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
						</th>
						<td>
							<input name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
