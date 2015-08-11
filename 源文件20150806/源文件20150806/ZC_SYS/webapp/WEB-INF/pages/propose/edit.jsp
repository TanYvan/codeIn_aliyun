<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<title>建议回复</title>
	</head>
	<body>
		<div align="center">
			<table class="edit_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span">建议回复</span> &nbsp;
						<a href="${ctx}/propose/findProposeList.do" class="edit_return"> 返回</a>
					</td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
			</table>
			<table class="edit_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
						<div class="message">
							修改成功
						</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/propose/updatePropose.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th width="30%">

							提出时间：
						</th>
						<td width="70%">
						     ${propose.title}
						</td>
					</tr>
					<tr>
						<th>
							标题：
						</th>
						<td>
							 ${propose.title}
						</td>
					</tr>
					<tr>
						<th>
							内容：
						</th>
						<td>
							 ${propose.content}
						</td>
					</tr>
					<tr>
						<th>
							提出人类别：
						</th>
						<td>
							 ${propose.userType}
						</td>
					</tr>
					<tr>
						<th>
							提交人： 
						</th>
						<td>
							${propose.user}
						</td>
					</tr>
					<tr>
						<th>
							联系方式：
						</th>
						<td>
							 ${propose.contact}
						</td>
					</tr>
					<tr>
						<th>
							回复信息：
						</th>
						<td>
						   <hr/>
						   <s:iterator value="replayList" status="">
						   	<s:property value="content"/>
						   	<hr/>
						   </s:iterator>
						</td>
					</tr>
					<tr>
						<th>
							回复：
						</th>
						<td>
						<input type="hidden" name="id" value="${id}"/>
						<textarea name="content" rows="5" cols="60"></textarea>
						</td>
					</tr>
					<tr>
						<th>
						</th>
						<td>
							<input name="SubmitOk" type="submit" class="btr_ok" value="确 定" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
