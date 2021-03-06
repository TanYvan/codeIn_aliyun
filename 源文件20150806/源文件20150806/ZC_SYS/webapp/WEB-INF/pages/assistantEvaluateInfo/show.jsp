<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>评价信息</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div align="center">
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="edit_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
						<form action="${ctx}/assistantCaseIn/findAssistantCaseInList.do" method="post">
							<input type="hidden" name="returnUrl" value="/assistantEvaluateInfo/show.do" />
							<input type="submit" name="SubmitEdit" value="     选择案件     " />
						</form>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							立案日期
						</th>
						<th>
							案件号
						</th>
						<th>
							仲裁程序
						</th>
						<th>
							办案助理
						</th>
						<th>
							案件阶段
						</th>
						<th>
							审限或最终延期日期 
						</th>
						<th>
							申请人 
						</th>
						<th>
							被申请人 
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="caseInList" status="case">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="accepttime" />
							</td>
							<td>
								<s:property value="case_code" />
							</td>
							<td>
								<s:property value="baseDicMap['0001'][aribitprog_num]" />
							</td>
							<td>
								<s:property value="clerk_name" />
							</td>
							<td>
								<s:property value="case_state" />
							</td>
							<td>
								<s:property value="finally_limit_dat" />
							</td>
							<td>
								<s:property value="partyinfo_1" />
							</td>
							<td>
								<s:property value="partyinfo_2" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span">评价信息</span>
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
					<td align="left" width='30px'>
					<table class="list_toolbar" cellspacing="0" cellpadding="0">
						<tr>
							<td align="left" width='30px'>
							</td>
							<td>
							</td>
						</tr>
					</table>
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
			<s:iterator value="arbitmanNameList" status="arb">
				<table class="list_data_table" cellpadding="0" cellspacing="1">
					<thead>
						<tr>
							<th>
								评价内容
							</th>
							
							<th>
								分数
							</th>
							<th>
								备注
							</th>
							
						</tr>
					</thead>
					<tbody>
						<%
							i_tr = 0;
						%>
						
						<s:iterator value="arbitmanEvaluateHash[arbitmanNameList.get(#arb.index)]" status="eval">
							<%
								i_tr++;
							%>
							
							<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
								<td>
									<s:property value="data_text" />
								</td>
								<s:if test="data_val.length()>4">
										<td>
											<s:property value="arbitmanEvaluateHash[arbitmanNameList.get(#arb.index)].get(#eval.index).getScore()" />
										</td>
										<td>
											<s:property value="arbitmanEvaluateHash[arbitmanNameList.get(#arb.index)].get(#eval.index).getRemark()" />
										</td>
								</s:if>
								<s:else>
									<td>	 
									</td>
									<td>	 
									</td>
								</s:else>
							</tr>	
						</s:iterator>
					</tbody>
				</table>
				<table class="list_blank_line" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<hr/>
				<table class="list_blank_line" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
					</tr>
				</table>
			</s:iterator>
			
			
			
			<s:iterator value="partyNameList" status="par">
				<table class="list_data_table" cellpadding="0" cellspacing="1">
					<thead>
						<tr>
							<th>
								评价内容
							</th>
							
							<th>
								分数
							</th>
							<th>
								备注
							</th>
							
						</tr>
					</thead>
					<tbody>
						<%
							i_tr = 0;
						%>
						
						<s:iterator value="partyEvaluateHash[partyNameList.get(#par.index)]" status="eval">
							<%
								i_tr++;
							%>
							
							<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
								<td>
									<s:property value="data_text" />
								</td>
								<s:if test="data_val.length()>4">
										<td>
											<s:property value="partyEvaluateHash[partyNameList.get(#par.index)].get(#eval.index).getScore()" />
										</td>
										<td>
											<s:property value="partyEvaluateHash[partyNameList.get(#par.index)].get(#eval.index).getRemark()" />
										</td>
								</s:if>
								<s:else>
									<td>	 
									</td>
									<td>	 
									</td>
								</s:else>
							</tr>	
						</s:iterator>
					</tbody>
				</table>
				<table class="list_blank_line" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<hr/>
				<table class="list_blank_line" cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
					</tr>
				</table>
			</s:iterator>		
		</div>
	</body>
</html>