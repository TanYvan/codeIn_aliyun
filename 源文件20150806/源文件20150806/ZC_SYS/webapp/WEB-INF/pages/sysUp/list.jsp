<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>系统数据下载更新</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
	</head>
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
						<span class="list_title_span">系统数据下载更新</span>
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
				<tbody>
					<tr class='tr_even'>
						<td>
							下载内网基础数据到外网<br/>
							字典表数据、附件信息配置、地区信息。
						</td>
					</tr>
					<tr class='tr_odd'>
						<td>
							<form action="${ctx}/sysUp/down.do" method="post">
								<input type="submit" name="Submit" value="数据下载" onclick="alert('数据下载开始')"/>
							</form>
						</td>
					</tr>
					<tr class='tr_even'>
						<td>
						<br/>
						<br/>
						</td>
					</tr>
					<tr class='tr_even'>
						<td>
							刷新系统缓存<br/>
							系统参数、菜单、字典表数据、附件信息配置、地区信息。
						</td>
					</tr>
					<tr class='tr_odd'>
						<td>
							<form action="${ctx}/sysUp/flush.do" method="post">
								<input type="submit" name="Submit" value="刷新" onclick="alert('刷新开始')"/>
							</form>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>