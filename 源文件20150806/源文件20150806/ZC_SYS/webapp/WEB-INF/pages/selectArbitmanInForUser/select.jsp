<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="selectArbitmanInForUser.list.title"></s:text></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${ctx}/public/common/DatePicker/WdatePicker.js"></script>
		<script type="text/javascript">
        	window.name = "curWindow";
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
						<span class="list_title_span"><s:text name="selectArbitmanInForUser.list.title"></s:text></span>
						<a href="${ctx}/partyAppointArbitman/list.do" class="edit_return"> <s:text name="common.return"></s:text></a>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/selectArbitmanInForUser/select.do" method="post" target="curWindow">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left" width="230">
							<s:text name="searchArbitmanInForUser.list.name_idcard"></s:text>:
							<input id="name_idcard" name="name_idcard" type="text" size="16" value='${name_idcard}'/>
						</td>
						<td align="left" width="230">
							<s:text name="searchArbitmanInForUser.list.special"></s:text>:
							<input id="special" name="special" type="text" size="16" value='${special}'/>
						</td>
						<td align="left">
						</td>
					</tr>
					<tr>
						<td align="left">
							<s:text name="searchArbitmanInForUser.list.city"></s:text>:
							<input id="city" name="city" type="text" size="16" value='${city}'/>
						</td>
						<td align="left">
							<s:text name="searchArbitmanInForUser.list.country"></s:text>:
							<input id="country" name="country" type="text" size="16" value='${country}'/>
						</td>
						<td align="left">
						</td>
					</tr>
					<tr>
						<td align="left">
							<input name="Submit" type="submit" class="btr_search" value="<s:text name="common.button_search"></s:text>" />
						</td>
						<td align="left">
						</td>
						<td align="left">
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
							<s:text name="common.head_select"></s:text>
						</th>
						<th>
							<s:text name="searchArbitmanInForUser.list.head_name_idcard"></s:text>
						</th>
						<th>
							<s:text name="searchArbitmanInForUser.list.head_name_idcard_en"></s:text>
						</th>
						<th>
							<s:text name="searchArbitmanInForUser.list.head_special"></s:text>
						</th>
						<th>
							<s:text name="searchArbitmanInForUser.list.head_special_en"></s:text>
						</th>
						<th>
							<s:text name="searchArbitmanInForUser.list.head_city"></s:text>
						</th>
						<th>
							<s:text name="searchArbitmanInForUser.list.head_city_en"></s:text>
						</th>
						<th>
							<s:text name="searchArbitmanInForUser.list.head_country"></s:text>
						</th>
						<th>
							<s:text name="searchArbitmanInForUser.list.head_country_en"></s:text>
						</th>
						<th>
							<s:text name="searchArbitmanInForUser.list.head_language"></s:text> 
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="arbitmanInList" status="case">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							
							<td>
								<form action="${ctx}/partyAppointArbitman/insert.do" method="post">
									<input type='hidden' name="arbitman_code" value="<s:property value="code"/>" />
							 		<input name="Submit" type="submit" value="选择"/>
						 		</form>
						 	</td>
							<td>
								<a href="${ctx}/selectArbitmanInForUser/showArbitman.do?arbitman_code=<s:property value="code" />" target="_blank" class="list_data"><s:property value="name_idcard" /></a>
							</td>
							<td>
								<a href="${ctx}/selectArbitmanInForUser/showArbitman.do?arbitman_code=<s:property value="code" />" target="_blank" class="list_data"><s:property value="name_idcard_en" /></a>
							</td>
							<td>
								<s:property value="special" />	
							</td>
							<td>
								<s:property value="special_en" />	
							</td>
							<td>
								<s:property value="city" />	
							</td>
							<td>
								<s:property value="city_en" />	
							</td>
							<td>
								<s:property value="country" />
							</td>
							<td>
								<s:property value="country_en" />	
							</td>
							<td>
								<s:property value="language" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			${page_bar}
		</div>
	</body>
</html>