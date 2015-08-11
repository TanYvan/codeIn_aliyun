<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>教育经历</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<div class="tabs" align="center">
		      <ul>
		        <li><a href="${ctx}/showArbitmanIn/showArbitmanIn.do?arbitman_code=${arbitman_code}" ><span>仲裁员基本信息</span></a></li>
		        <li><a href="${ctx}/showArbitmanIn/showEducateInList.do?arbitman_code=${arbitman_code}" class="selected"><span>教育情况</span></a></li>
				<li><a href="${ctx}/showArbitmanIn/showIndustryInList.do?arbitman_code=${arbitman_code}" ><span>行业</span></a></li>
				<li><a href="${ctx}/showArbitmanIn/showResumeInList.do?arbitman_code=${arbitman_code}" ><span>简历</span></a></li>
				<li><a href="${ctx}/showArbitmanIn/showLanguageInList.do?arbitman_code=${arbitman_code}" ><span>语种</span></a></li>
		      </ul>
		    </div>
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span">&nbsp;</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_search_table" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						....
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
							毕业或结业时间
						</th>
						<th>
							所学专业
						</th>
						<th>
							毕业院校
						</th>
						<th>
							学历
						</th>
						<th>
							学位
						</th>
						<th>
							证书编号
						</th>
						<th>
							是否法学
						</th>
						<th>
							是否国外
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="educateInList" status="user">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="graduatedate" />
							</td>
							<td>
								<s:property value="specialty" />
							</td>
							<td>
								<s:property value="school" />
							</td>
							<td>
								<s:property value="baseDicMap['9006'][studycalendar]" />
							</td>
							<td>
								<s:property value="baseDicMap['9007'][degree]" />
							</td>
							<td>
								<s:property value="degreeletter" />
							</td>
							<td>
								<s:property value="lawyercalendar " />
							</td>
							<td>
								<s:property value="foreignlearn" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>