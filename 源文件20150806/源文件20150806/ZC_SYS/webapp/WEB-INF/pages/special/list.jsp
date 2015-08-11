<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>专业</title>
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
		        <li><a href="${ctx}/arbitman/toUpdateArbitman.do"><span>仲裁员个人信息</span></a></li>
		        <li><a href="${ctx}/educate/findEducateList.do" ><span>教育情况</span></a></li>
				<li><a href="${ctx}/special/findSpecialList.do" class="selected"><span>专长</span></a></li>
				<li><a href="${ctx}/industry/findIndustryList.do" ><span>行业</span></a></li>
				<li><a href="${ctx}/resume/findResumeList.do" ><span>简历</span></a></li>
				<li><a href="${ctx}/language/findLanguageList.do" ><span>语种</span></a></li>
				<li><a href="${ctx}/arbitmanAtt/findArbitmanAttList.do" ><span>个人附件</span></a></li>
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
						<form action="${ctx}/dictionary/select_1.do" method="post">
							<input type="hidden" name="returnUrl" value="/special/findSpecialList.do" />
							<input type="hidden" name="typCode" value="9012" />
							<input type="hidden" name="typName" value="专业" />
							<input type="hidden" name="space" value="special" />
							<input type="hidden" name="action" value="insertSpecial.do" />
							<input type="submit" name="SubmitNew" value="新建" />
						</form>
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
							专业名称
						</th>
						<th>
							删除
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="specialList" status="user">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="baseDicMap['9012'][specialityNum]" />
							</td>
							<td>
								<form
									action="${ctx}/special/deleteSpecial.do?id=<s:property value='id'/>" method="post">
									<input type="submit" name="SubmitEdit" value="删除" />
								</form>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>