<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base target="_self"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>仲裁员信息</title>
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
						<span class="list_title_span">仲裁员信息</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/searchArbitmanInForUser/select.do" method="post" target="curWindow">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left" width="230">
							姓名:
							<input id="name_idcard" name="name_idcard" type="text" size="16" value='${name_idcard}'/>
						</td>
						<td align="left" width="230">
							专业:
							<input id="special" name="special" type="text" size="16" value='${special}'/>
						</td>
						<td align="left">
						</td>
					</tr>
					<tr>
						<td align="left">
							城市:
							<input id="city" name="city" type="text" size="16" value='${city}'/>
						</td>
						<td align="left">
							国家:
							<input id="country" name="country" type="text" size="16" value='${country}'/>
						</td>
						<td align="left">
						</td>
					</tr>
					<tr>
						<td align="left">
							<input name="Submit" type="submit" class="btr_search" value="查 询" />
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
							选择
						</th>
						<th>
							编码
						</th>
						<th>
							姓名（中文）
						</th>
						<th>
							姓名（英文）
						</th>
						<th>
							专长（中文）
						</th>
						<th>
							专长（英文—）
						</th>
						<th>
							所在地（中文）
						</th>
						<th>
							所在地（英文）
						</th>
						<th>
							国籍（中文 ）
						</th>
						<th>
							国籍(英文 )
						</th>
						<th>
							工作语种 
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
						 		<input type='button' value="选择" onclick="window.returnValue='<s:property value="code"/>+<s:property value="name_idcard"/>';window.close();">
						 	</td>
							<td>
								<s:property value="code" />
								</td>
							<td>
								<s:property value="name_idcard" />
							</td>
							<td>
								<a href="${ctx}/searchArbitmanInForUser/showArbitman.do?arbitman_code=<s:property value="code" />" target="_blank" class="list_data"><s:property value="name_idcard_en" /></a>
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