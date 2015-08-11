<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<title><s:text name="myPropose.show.title"></s:text></title>
	</head>
	<body>
		<div align="center">
			<table class="show_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="show_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="show_title_span"><s:text name="myPropose.show.title"></s:text></span> &nbsp;
					</td>
				</tr>
				<tr>
					<td class="show_title_hr"></td>
				</tr>
				<tr>
					<td class="show_title_blank_line"></td>
				</tr>
			</table>
			<table class="show_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/propose/updatePropose.do" method="post">
				<table class="show_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th width="30%">

							
						</th>
						<td width="70%">
						     <s:text name="myPropose.show.time"></s:text>：${propose.time}
						</td>
					</tr>
					<tr>
						<th>
							
						</th>
						<td>
							 <s:text name="myPropose.show.title"></s:text>：${propose.title}
						</td>
					</tr>
					<tr>
						<th>
							
						</th>
						<td>
							 <s:text name="myPropose.show.content"></s:text>：${propose.content}
						</td>
					</tr>
					<tr>
						<th>
							
						</th>
						<td>
							 <s:text name="myPropose.show.contact"></s:text>：${propose.contact}
						</td>
					</tr>
					<tr>
						<th>
							
						</th>
						<td>
						<s:text name="myPropose.show.replay"></s:text>：
						   <hr/>
						   <s:iterator value="replayList" status="">
						   	<s:property value="content"/>
						   	<hr/>
						   </s:iterator>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
