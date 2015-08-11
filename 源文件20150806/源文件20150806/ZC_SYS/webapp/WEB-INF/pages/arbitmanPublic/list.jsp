<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>仲裁员信息</title>
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
			<form action="${ctx}/arbitmanPublic/list.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td align="left">
							姓名:
							<input id="name" name="name" type="text" size="16" value="${name}" />&nbsp;&nbsp;
							专长:
							<input id="special" name="special" type="text" size="16" value="${special}" />&nbsp;&nbsp;
							所在地:
							<input id="city"  name="city" type="text" size="16" value="${city}" />&nbsp;&nbsp;
							国籍:
							<input id="country" name="country" type="text" size="16" value="${country}" />&nbsp;&nbsp;
							<input name="Submit" type="submit" class="btr_search" value="查 询" />
						</td>
					</tr>
				</table>
			</form>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							姓名（中文）
						</th>
						<th>
							姓名（英文）
						</th>
						<th>
							专长中文
						</th>
						<th>
							专长英文
						</th>
						<th>
							所在地中文
						</th>
						<th>
							所在地英文
						</th>
						<th>
							国籍中文
						</th>
						<th>
							国籍英文
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="arbitmanPublicViewList" status="w">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="name_idcard" />
							</td>
							<td>
								<s:property value="name_idcard_en" />
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
						</tr>
					</s:iterator>
				</tbody>
			</table>
			<table class="list_page_bar">
				<tr>
					<td>
						<span class="list_page_bar_span">第${pageNo}页 共${pageCount}
							页</span>
						<s:if test="pageNo != 1">
							<a class="list_page_bar_link"
								href='${ctx}/arbitmanPublic/list.do?pageNo=1${page_str}'>首页</a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/arbitmanPublic/list.do?pageNo=${pageNo-1}${page_str}'>上一页</a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/arbitmanPublic/list.do?pageNo=${pageNo+1}${page_str}''>下一页</a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/arbitmanPublic/list.do?pageNo=${pageCount}${page_str}''>末页</a>
						</s:if>

					</td>
				</tr>
			</table>
		</div>
	</body>
</html>