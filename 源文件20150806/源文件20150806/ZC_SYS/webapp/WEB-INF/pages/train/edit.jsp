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
		<title>培训信息修改</title>
		<script type="text/javascript" src="${ctx}/public/common/DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="${ctx}/public/javascripts/jQuery.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/jquery.metadata.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/${validateJs}" charset="utf-8"></script>
		<script type="text/javascript">	$().ready(function() { $("#fm").validate();	});</script>
		<script type="text/javascript" charset="utf-8" src="${ctx}/public/ueditor/ueditor.config.js"></script>
	    <script type="text/javascript" charset="utf-8" src="${ctx}/public/ueditor/ueditor.all.js"> </script>
	    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
	    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	    <script type="text/javascript" charset="utf-8" src="${ctx}/public/ueditor/lang/zh-cn/zh-cn.js"></script>
		<script type="text/javascript" src="${ctx}/public/javascripts/jQuery.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/jquery.metadata.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/${validateJs}" charset="utf-8"></script>
		<script type="text/javascript">	$().ready(function() { $("#fm").validate();	});</script>
		<script type="text/javascript">
			var ue = UE.getEditor('editor');
			ue.addListener("ready", function () {
			ue.setContent("${train.content}");
			});
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
						<span class="edit_title_span">培训信息修改</span> &nbsp;
						<a href="${ctx}/train/list.do" class="edit_return"> 返回</a>
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
			<form id="fm" action="${ctx}/train/update.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
							类型:
						</th>
						<td>
						    <input name="train.id" type="hidden" size="15" value="${train.id}"/>
							<s:select name="train.category" list="baseDicList['9036']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							发布范围：
						</th>
						<td>
							<s:checkboxlist list="#{'01':'在聘仲裁员','02':'候选仲裁员','03':'申请仲裁员候选人','11':'内网已经确认的当事人','12':'未确认的当事人'}" name="train.ranges" value="rangeList" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							发布时间：
						</th>
						<td>
							<input name="train.putDate" type="text" size="25" class='Wdate {required:true}' onFocus="WdatePicker()" value="${train.putDate}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							标题：
						</th>
						<td>
							<input name="train.title" type="text" size="15" value="${train.title}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							培训时间：
						</th>
						<td>
							<input name="train.doDate" type="text" size="25" class='Wdate {required:true}' value="${train.doDate}" onFocus="WdatePicker()"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							序号：
						</th>
						<td>
							<input name="train.num" type="text" size="15" value="${train.num}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							内容：
						</th>
						<td>
							<span><script id="editor" type="text/plain" name="train.content"></script></span>
						</td>
					</tr>
					<tr>
						<th>
							状态：
						</th>
						<td>
							<s:select name="train.status" list="#{'1':'发布','0':'未发布'}" listKey="key" listValue="value" ></s:select>
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
