<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<title>案件信息</title>
	</head>
	<body>
		<div align="center">
			<table class="edit_blank_line" cellspacing="0" cellpadding="0">
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
							<input type="hidden" name="returnUrl" value="/assistantCaseIn/showAssistantCaseIn.do" />
							<input type="submit" name="SubmitEdit" value="     选择案件     " />
						</form>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span">案件信息..</span>
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
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			
			<table class="edit_data_table" cellspacing="0" cellpadding="0">
				<tr>
					<td style="width:20%;text-align:right">
						立案号：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.case_code}
						<input type="hidden" name="id" value="${arbitman.id}" />
						
					</td>
					<td style="width:20%;text-align:right">
						办案助理：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.clerk_name}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						案件分类(代码)：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0043'][caseIn.t_casetype_num]}
					</td>
					<td style="width:20%;text-align:right">
						争议类别：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.dispute_type}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						仲裁类型：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0001'][caseIn.aribitprog_num]}
					</td>
					<td style="width:20%;text-align:right">
						仲裁条款达成日期：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.acceptt}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						仲裁协议类型：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0006'][caseIn.aribittype]}
					</td>
					<td style="width:20%;text-align:right">
						主体类型：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['8140'][caseIn.case_type1]}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						审理方式：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0046'][caseIn.trial_typ]}
					</td>
					<td style="width:20%;text-align:right">
						案件类型大分类：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0002'][caseIn.casetype_num]}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						案件类型小分类：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0002'][caseIn.casetype_num2]}
					</td>
					<td style="width:20%;text-align:right">
						受理日期：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.accepttime}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						选定的仲裁机构：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0004'][caseIn.agent]}
					</td>
					<td style="width:20%;text-align:right">
						案由：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.casereason}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						咨询接待：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.clerk_2_name}
					</td>
					<td style="width:20%;text-align:right">
						仲裁协议备注：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.arbitprot}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						案件备注：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.special}
					</td>
					<td style="width:20%;text-align:right">
					</td>
					<td style="width:30%;text-align:left">
					</td>
				</tr>
			</table>
			
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span">程序处理中的重要事项</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							类型
						</th>
						<th>
							时间
						</th>
						<th>
							提出人
						</th>
						<th>
							内容
						</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="jurisdictionInList" status="party">
						<tr class='tr_odd'>
							<td>
								管辖权异议
							</td>
							<td>
								<s:property value="request_date" />
							</td>
							<td>
								<s:property value="request_man" />
							</td>
							<td>
								详情请见【案件文档】
							</td>
						</tr>
					</s:iterator>
					<s:iterator value="partyanswerInList" status="party">
						<tr class='tr_odd'>
							<td>
								反请求申请时间
							</td>
							<td>
								<s:property value="receivedate" />
							</td>
							<td>
								<s:property value="partyMap[party_id]" />
							</td>
							<td>
								<s:property value="answerbook" />
							</td>
						</tr>
					</s:iterator>
					<s:iterator value="saveInList" status="party">
						<tr class='tr_odd'>
							<td>
								保全申请时间
							</td>
							<td>
								<s:property value="send_time" />
							</td>
							<td>
								<s:property value="request_man" />
							</td>
							<td>
								保全法院裁定内容:<s:property value="yard_arbitcon" />
							</td>
						</tr>
					</s:iterator>
					<s:iterator value="eviteInList" status="party">
						<tr class='tr_odd'>
							<td>
								仲裁员回避
							</td>
							<td>
								<s:property value="requestdate" />
							</td>
							<td>
								<s:property value="requestman" />
							</td>
							<td>
								详情请见【案件文档】
							</td>
						</tr>
					</s:iterator>
					<s:iterator value="changeInList" status="party">
						<tr class='tr_odd'>
							<td>
								仲裁员替换
							</td>
							<td>
								<s:property value="changedate" />
							</td>
							<td>
								<s:property value="baseDicMap['0020'][changeman]"/>	
							</td>
							<td>
								原仲裁员：<s:property value="changeArbMap[arbitman_1]" /> 替换为   现仲裁员：<s:property value="changeArbMap[arbitman]" />
								是否更换：<s:property value="baseDicMap['9901'][ifchangce]"/>	 
							</td>
						</tr>
					</s:iterator>
					<s:iterator value="adjudgebrikeInList" status="party">
						<tr class='tr_odd'>
							<td>
								程序中止
							</td>
							<td>
								<s:property value="end_date" />
							</td>
							<td>
								<s:property value="linkman_name" />
							</td>
							<td>
								中止时间：<s:property value="end_date" />  恢复时间： <s:property value="start_date" /> 中止原因：<s:property value="baseDicMap['8107'][reason]"/>
							</td>
						</tr>
					</s:iterator>
					<s:iterator value="caseMatterInList" status="party">
						<tr class='tr_odd'>
							<td>
								<s:property value="baseDicMap['0100'][category]"/>
							</td>
							<td>
								<s:property value="propose_t" />
							</td>
							<td>
								<s:property value="baseDicMap['0101'][proposer_typ]"/>:<s:property value="proposer" />
							</td>
							<td>
								<s:property value="content" />
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
						<span class="list_title_span">当事人信息</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							类型
						</th>
						<th>
							当事人姓名
						</th>
						<th>
							法定代表人/负责人
						</th>
						<th>
							短信手机
						</th>
						<th>
							email
						</th>
						<th>
							是否个人
						</th>
						<th>
							地区
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="partyInList" status="party">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="baseDicMap['9801'][partytype]"/>
							</td>
							<td>
								<s:property value="partyname" />
							</td>
							<td>
								<s:property value="commissary" />
							</td>
							<td>
								<s:property value="mobiletel" />
							</td>
							<td>
								<s:property value="email" />
							</td>
							<td>
								<s:property value="baseDicMap['9905'][isperson]"/>
							</td>
							<td>
								<s:property value="regionMap[area]" />
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
						<span class="list_title_span">代理人信息</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							当事人
						</th>
						<th>
							代理人姓名
						</th>
						<th>
							身份
						</th>
						<th>
							短信手机
						</th>
						<th>
							email 
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						i_tr = 0;
					%>
					<s:iterator value="agentInList" status="agent">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="partyMap[party_id]" />
							</td>
							<td>
								<s:property value="name" />
							</td>
							<td>
							    <s:property value="baseDicMap['0007'][status]"/>
							</td>
							<td>
								<s:property value="mobiletel" />
							</td>
							<td>
								<s:property value="email" />
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
						<span class="list_title_span">组庭信息</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							组庭日期
						</th>
						<th>
							仲裁员组成
						</th>
						<th>
							（原）审限日期
						</th>
						<th>
							最终审限 
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						i_tr = 0;
					%>
					<s:iterator value="caseorgInList" status="caseorg">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="orgdate" />
							</td>
							<td>
								<s:iterator value="casearbitmanInList" status="arb">
								【${baseDicMap['0014'][arbitmantype]}：${name}】&nbsp;&nbsp;
								</s:iterator>
								
							</td>
							<td>
								<s:property value="limitdate" />
							</td>
							<td>
								${caseIn.finally_limit_dat}
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
						<span class="list_title_span">开庭信息</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							开庭日期
						</th>
						<th>
							仲裁厅 
						</th>
						<th>
							开庭时间
						</th>
						<th>
							庭审笔录 
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						i_tr = 0;
					%>
					<s:iterator value="sittingInList" status="sitting">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="sittingdate" />
							</td>
							<td>
								<s:property value="baseDicMap['0023'][sittingplace]"/>
							</td>
							<td>
								<s:property value="open_t" />
							</td>
							<td>
								详情请见【案件文档】
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
						<span class="list_title_span">结案信息</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							结案号
						</th>
						<th>
							结案方式
						</th>
						<th>
							结案日期
						</th>
						<th>
							裁决书
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						i_tr = 0;
					%>
					<s:iterator value="caseendbookInList" status="caseendbook">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="arbitBookNum" />
							</td>
							<td>
								<s:property value="baseDicMap['8117'][endStyle]"/>
							</td>
							<td>
								<s:property value="decideDate" />
							</td>
							<td>
								详情请见【案件文档】
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
						<span class="list_title_span">执行情况</span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
					<td align="center">
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							执行情况
						</th>
						<th>
							备注说明
						</th>
					</tr>
				</thead>
				<tbody>
					<tr class='tr_even'>
						<td>
							${baseDicMap['9014'][caseIn.runstyle]}
						</td>
						<td>
							${caseIn.runremark}
						</td>
					</tr>
				</tbody>
			</table>
			
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
		</div>
	</body>
</html>
