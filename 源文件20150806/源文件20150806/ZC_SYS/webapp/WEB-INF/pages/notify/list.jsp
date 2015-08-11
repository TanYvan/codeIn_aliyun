<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>公告信息管理</title>
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
						<span class="list_title_span">公告信息管理</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/notify/findNotifyList.do" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							类型:
							<s:select id="category" name="category"
								list="baseDicAllList['9029']" listKey="dataVal" listValue="dataText"  ></s:select>
							发布范围:
							<s:select id="range" name="range"
								list="#{'':'全部','1':'仲裁人','2':'助理','3':'当事人'}" listKey="key"
								listValue="value" ></s:select>
							标题:
							<input id="title" name="title" type="text" size="16" value="${title}"/>
							<input name="Submit" type="submit" class="btr_search" value="查 询" />
						</td>
					</tr>
				</table>
			</form>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/notify/toInsertNotify.do" method="post">
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
							标题
						</th>
						<th>
							类型
						</th>
						<th>
							发布范围
						</th>
						<th>
							地点
						</th>
						<th>
							发布日期
						</th>
						<th>
							状态
						</th>
						<th>
							发布人
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="notifyList" status="role">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="title" />
							</td>
							<td>
								<s:property value="baseDicMap['9029'][category]" />
							</td>
							<td>
								<s:property value="ranges" />
							</td>
							<td>
								<s:property value="place" />
							</td>
							<td>
								<s:property value="putDate" />
							</td>
							<td>
								<s:property value="typ[status]" />
							</td>
							<td>
								<s:property value="editUser" />
							</td>
							<td>
								<form
									action="${ctx}/notify/toUpdateNotify.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitShow" value="修改" />
								</form>
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
								href='${ctx}/notify/findNotifyList.do?pageNo=1${page_str}${page_str}'>首页</a>
						</s:if>
						<s:if test="pageNo > 1">
							<a class="list_page_bar_link"
								href='${ctx}/notify/findNotifyList.do?pageNo=${pageNo-1}${page_str}'>上一页</a>
						</s:if>
						<s:if test="pageNo < pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/notify/findNotifyList.do?pageNo=${pageNo+1}${page_str}'>下一页</a>
						</s:if>
						<s:if test="pageNo!=pageCount">
							<a class="list_page_bar_link"
								href='${ctx}/notify/findNotifyList.do?pageNo=${pageCount}${page_str}'>末页</a>
						</s:if>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>