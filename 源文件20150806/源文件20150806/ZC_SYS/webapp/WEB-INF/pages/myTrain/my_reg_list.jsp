<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="myTrain.my_reg_list.title"></s:text></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<script type="text/javascript" src="${ctx}/public/common/DatePicker/WdatePicker.js"></script>
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
						<span class="list_title_span"><s:text name="myTrain.my_reg_list.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/myTrain/myRegList.do?id=${id}" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<s:text name="myTrain.my_reg_list.search_date"></s:text>：
							<input id="startdate" name="startdate" type="text" size="16" class='{required:true} Wdate' onFocus="WdatePicker()" value="${startdate}"/>至
							<input id="enddate" name="enddate" type="text" size="16" class='{required:true} Wdate' onFocus="WdatePicker()" value="${enddate}"/>
							<s:text name="myTrain.my_reg_list.search_title"></s:text>:
							<input id="title" name="title" type="text" size="16" value="${title}"/>
							<input name="Submit" type="submit" class="btr_search" value="查 询" />
						</td>
					</tr>
				</table>
			</form>
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
				<thead>
					<tr>
						<th>
							<s:text name="myTrain.my_reg_list.head_title"></s:text>
						</th>
						<th>
							<s:text name="myTrain.my_reg_list.head_doDate"></s:text>
						</th>
						<th>
							<s:text name="myTrain.my_reg_list.head_reg_t"></s:text>
						</th>
						<th>
							<s:text name="myTrain.my_reg_list.head_score"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="myTrainRegList" status="role">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="title" />
							</td>
							<td>
								<s:property value="doDate" />
							</td>
							<td>
								<s:property value="reg_t" />
							</td>
							<td>
								<s:property value="score" />
							</td>
						</tr>
					</s:iterator>
					<tr class='tr_odd'>
							<td colspan="3">
								<s:text name="myTrain.my_reg_list.head_score_sum"></s:text>
							</td>
							<td>
								${score_sum}
							</td>
						</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>