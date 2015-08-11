<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>仲裁员信息下载更新</title>
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
						<span class="list_title_span">仲裁员信息下载更新（建议每次更新范围小于三百)</span>
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
							下载仲裁员基础信息(共${arbitmanMax}条信息)
						</td>
					</tr>
					<tr class='tr_odd'>
						<td>
							<form action="${ctx}/arbitmanPublicUp/down.do" method="post">
								<input type="text" name="num1" value="0" size=10/>至<input type="text" name="num2" value="0" size=10/>
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
							下载仲裁员聘用信息(共${arbitmanNowMax}条信息)
						</td>
					</tr>
					<tr class='tr_odd'>
						<td>
							<form action="${ctx}/arbitmanPublicUp/down2.do" method="post">
								<input type="text" name="num3" value="0" size=10/>至<input type="text" name="num4" value="0" size=10/>
								<input type="submit" name="Submit" value="数据下载"  onclick="alert('数据下载开始')"/>
							</form>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>