<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>培训报名信息</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<script>
			function check() {
			    if  (confirm('您确认要删除吗？')==true){
					var regex=/^[0-9]$/;
				    var a=document.getElementById("score").value;
				    if (regex.exec(a) == null ){
				    	alert("请输入数字");
				    	return false;
				    }
			    }else{
			    	return false;
			    }
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
						<span class="list_title_span">培训报名信息[${train.title}]</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<form action="${ctx}/train/regList.do?id=${id}" method="post">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							名称:
							<input id="name" name="name" type="text" size="16" value="${name}"/>
							<input name="Submit" type="submit" class="btr_search" value="查 询" />
						</td>
					</tr>
				</table>
			</form>
			<form action="${ctx}/train/regScore.do?id=${id}" method="post" onsubmit="return check();">
				<table class="list_search_table" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							分数:
							<input id="score" name="score" type="text" size="16"/>
							<input name="Submit" type="submit" class="btr_search" value="批量设置分数" />
						</td>
					</tr>
				</table>
			</form>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/train/toRegInsert.do?id=${id}" method="post">
							<input type="submit" name="SubmitNew" value="添加仲裁员报名信息" />
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
							人员类型
						</th>
						<th>
							人员编号
						</th>
						<th>
							人员姓名
						</th>
						<th>
							报名时间
						</th>
						<th>
							电话
						</th>
						<th>
							email
						</th>
						<th>
							备注
						</th>
						<th>
							分数
						</th>
						<th>
							编辑
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="trainRegList" status="role">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="user_category" />
							</td>
							<td>
								<s:property value="user" />
							</td>
							<td>
								<s:property value="user_name" />
							</td>
							<td>
								<s:property value="reg_t" />
							</td>
							<td>
								<s:property value="user_tel" />
							</td>
							<td>
								<s:property value="user_email" />
							</td>
							<td>
								<s:property value="remark" />
							</td>
							<td>
								<s:property value="score" />
							</td>
							<td>
								<a href="${ctx}/train/toRegUpdate.do?id=<s:property value='id'/>" class="list_data" target="_self">编辑</a>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</body>
</html>