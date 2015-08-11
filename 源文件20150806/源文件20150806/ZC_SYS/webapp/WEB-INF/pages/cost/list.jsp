<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="cost.list.title"></s:text></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
			function check(){
			  if(! /^[0-9]*[1-9][0-9]*$/.test(document.getElementById("money_val").value)){
			    alert('<s:text name="cost.list.mes_1"></s:text>');
			    return false;
			  }
			  return true;
			}
		</script>
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
						<span class="list_title_span"><s:text name="cost.list.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/cost/list.do" method="post" onsubmit="return check();">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left" width="230" align="center">
							<s:text name="cost.list.money_val"></s:text>:
							<input id="money_val" name="money_val" type="text" size="16" value='${money_val}'/><s:text name="cost.list.mes_2"></s:text>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<s:text name="cost.list.category"></s:text>:
							<s:select name="category" list="baseDicList['9911']" listKey="dataVal" listValue="dataText" value="category"></s:select>
							<input name="Submit" type="submit" class="btr_search" value="<s:text name="cost.list.submit"></s:text>" />
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
						<th colspan="2">
							<s:text name="cost.list.head_party1"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr class="tr_odd">
						<td align="right">
							<s:text name="cost.list.head_money_val"></s:text>
						</td>
						<td>
							${money_val}<s:text name="cost.list.mes_2"></s:text>
						</td>
					</tr>
					<tr class="tr_even">
						<td>
							<s:text name="cost.list.head_slf"></s:text>
						</td>
						<td>
							${slf}<s:text name="cost.list.mes_2"></s:text>
						</td>
					</tr>
					<tr class="tr_odd">
						<td>
							<s:text name="cost.list.head_clf"></s:text>
						</td>
						<td>
							${zcf}<s:text name="cost.list.mes_2"></s:text>
						</td>
					</tr>
					<tr class="tr_even">
						<td>
							<s:text name="cost.list.head_sum"></s:text>
						</td>
						<td>
							${hj}<s:text name="cost.list.mes_2"></s:text>
						</td>
					</tr>
				</tbody>
			</table>
			<hr/>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th colspan="2">
							<s:text name="cost.list.head_party2"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr class="tr_odd">
						<td align="right">
							<s:text name="cost.list.head_money_val"></s:text>
						</td>
						<td>
							${money_val}<s:text name="cost.list.mes_2"></s:text>
						</td>
					</tr>
					<tr class="tr_even">
						<td>
							<s:text name="cost.list.head_slf"></s:text>
						</td>
						<td>
							${slf2}<s:text name="cost.list.mes_2"></s:text>
						</td>
					</tr>
					<tr class="tr_odd">
						<td>
							<s:text name="cost.list.head_clf"></s:text>
						</td>
						<td>
							${zcf2}<s:text name="cost.list.mes_2"></s:text>
						</td>
					</tr>
					<tr class="tr_even">
						<td>
							<s:text name="cost.list.head_sum"></s:text>
						</td>
						<td>
							${hj2}<s:text name="cost.list.mes_2"></s:text>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>