<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="myTrain.show.title"></s:text></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
	</head>
	<body>

	</body>
	<div align="center">
		<table class="show_blank_line" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td></td>
				</tr>
		</table>
		<table class="show_title" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<span class="show_title_span"><s:text name="myTrain.show.title"></s:text></span>
				</td>
			</tr>
			<tr>
				<td class="show_title_hr"></td>
			</tr>
			<tr>
				<td class="show_title_blank_line"></td>
			</tr>
		</table>
		<table class="show_toolbar" cellspacing="0"cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
						<s:property value="train.title" />
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="show_data_table" cellspacing="0" cellpadding="0">
			 	<tr>
					<th width="30%">
						
					</th>
					<td>
						<s:text name="myTrain.show.putDate"></s:text>：<s:property value="train.putDate" />
					</td>
				</tr>
			    <tr>
					<th width="30%">
						
					</th>
					<td>
						<s:text name="myTrain.show.doDate"></s:text>：<s:property value="train.doDate" />
					</td>
				</tr>
				<tr>
					<th>
					</th>
					<td>
						<div><s:property value="train.content" escape="false"/></div>
						
					</td>
				</tr>
			</table>
	</div>
</html>