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
		<title><s:text name="caseIn.show.title"></s:text></title>
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
						<form action="${ctx}/partyCaseIn/findPartyCaseInList.do" method="post">
							<input type="hidden" name="returnUrl" value="/partyCaseIn/showPartyCaseIn.do" />
							<input type="submit" name="SubmitEdit" value="     <s:text name="caseIn.show.select_case"></s:text>     " />
						</form>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span"><s:text name="caseIn.show.title"></s:text>.</span>
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
						<s:text name="case.case_code"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.case_code}
						<input type="hidden" name="id" value="${arbitman.id}" />
						
					</td>
					<td style="width:20%;text-align:right">
						<s:text name="case.clerk_name"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.clerk_name}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						<s:text name="case.t_casetype_num"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0043'][caseIn.t_casetype_num]}
					</td>
					<td style="width:20%;text-align:right">
						<s:text name="case.dispute_type"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.dispute_type}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						<s:text name="case.aribitprog_num"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0001'][caseIn.aribitprog_num]}
					</td>
					<td style="width:20%;text-align:right">
						<s:text name="case.acceptt"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.acceptt}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						<s:text name="case.aribittype"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0006'][caseIn.aribittype]}
					</td>
					<td style="width:20%;text-align:right">
						<s:text name="case.case_type1"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['8140'][caseIn.case_type1]}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						<s:text name="case.trial_typ"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0046'][caseIn.trial_typ]}
					</td>
					<td style="width:20%;text-align:right">
						<s:text name="case.casetype_num"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0002'][caseIn.casetype_num]}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						<s:text name="case.casetype_num2"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0002'][caseIn.casetype_num2]}
					</td>
					<td style="width:20%;text-align:right">
						<s:text name="case.accepttime"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.accepttime}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						<s:text name="case.agent"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${baseDicMap['0004'][caseIn.agent]}
					</td>
					<td style="width:20%;text-align:right">
						<s:text name="case.casereason"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.casereason}
					</td>
				</tr>
				<tr>
					<td style="width:20%;text-align:right">
						<s:text name="case.clerk_2_name"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.clerk_2_name}
					</td>
					<td style="width:20%;text-align:right">
						<s:text name="case.arbitprot"></s:text>：
					</td>
					<td style="width:30%;text-align:left">
						${caseIn.arbitprot}
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
						<span class="list_title_span"><s:text name="caseIn.show.imp.title"></s:text></span>
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
							<s:text name="caseIn.show.imp.head_category"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.imp.head_time"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.imp.head_people"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.imp.head_content"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="jurisdictionInList" status="party">
						<tr class='tr_odd'>
							<td>
								<s:text name="caseIn.show.imp.jurisdiction"></s:text>
							</td>
							<td>
								<s:property value="request_date" />
							</td>
							<td>
								<s:property value="request_man" />
							</td>
							<td>
								<s:text name="caseIn.show.imp.jurisdiction_mes_1"></s:text>
							</td>
						</tr>
					</s:iterator>
					<s:iterator value="partyanswerInList" status="party">
						<tr class='tr_odd'>
							<td>
								<s:text name="caseIn.show.imp.partyanswer"></s:text>
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
								<s:text name="caseIn.show.imp.save"></s:text>
							</td>
							<td>
								<s:property value="send_time" />
							</td>
							<td>
								<s:property value="request_man" />
							</td>
							<td>
								<s:text name="caseIn.show.imp.save_mes_1"></s:text>:<s:property value="yard_arbitcon" />
							</td>
						</tr>
					</s:iterator>
					<s:iterator value="eviteInList" status="party">
						<tr class='tr_odd'>
							<td>
								<s:text name="caseIn.show.imp.evite"></s:text>
							</td>
							<td>
								<s:property value="requestdate" />
							</td>
							<td>
								<s:property value="requestman" />
							</td>
							<td>
								<s:text name="caseIn.show.imp.evite_mes_1"></s:text>
							</td>
						</tr>
					</s:iterator>
					<s:iterator value="changeInList" status="party">
						<tr class='tr_odd'>
							<td>
								<s:text name="caseIn.show.imp.change"></s:text>
							</td>
							<td>
								<s:property value="changedate" />
							</td>
							<td>
								<s:property value="baseDicMap['0020'][changeman]"/>	
							</td>
							<td>
								<s:text name="caseIn.show.imp.change_mes_1"></s:text>：<s:property value="changeArbMap[arbitman_1]" /> <s:text name="caseIn.show.imp.change_mes_2"></s:text>：<s:property value="changeArbMap[arbitman]" />
								<s:text name="caseIn.show.imp.change_mes_3"></s:text>：<s:property value="baseDicMap['9901'][ifchangce]"/>	 
							</td>
						</tr>
					</s:iterator>
					<s:iterator value="adjudgebrikeInList" status="party">
						<tr class='tr_odd'>
							<td>
								<s:text name="caseIn.show.imp.adjudgebrike"></s:text>
							</td>
							<td>
								<s:property value="end_date" />
							</td>
							<td>
								<s:property value="linkman_name" />
							</td>
							<td>
								<s:text name="caseIn.show.imp.adjudgebrike_mes_1"></s:text>：<s:property value="end_date" />  <s:text name="caseIn.show.imp.adjudgebrike_mes_2"></s:text>： <s:property value="start_date" /> <s:text name="caseIn.show.imp.adjudgebrike_mes_3"></s:text>：<s:property value="baseDicMap[8107'][reason]"/>
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
						<span class="list_title_span"><s:text name="caseIn.show.party"></s:text></span>
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
							<s:text name="caseIn.show.party.category"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.party.partyName"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.party.commissary"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.party.mobileTel"></s:text>
						</th>
						<th>
							email
						</th>
						<th>
							<s:text name="caseIn.show.party.isPerson"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.party.area"></s:text>
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
						<span class="list_title_span"><s:text name="caseIn.show.agent.title"></s:text></span>
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
							<s:text name="caseIn.show.agent.partyId"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.agent.name"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.agent.status"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.agent.mobiletel"></s:text>
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
						<span class="list_title_span"><s:text name="caseIn.show.caseorg.title"></s:text></span>
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
							<s:text name="caseIn.show.caseorg.orgdate"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.caseorg.casearbitman"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.caseorg.limitdate"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.caseorg.finally_limit_dat"></s:text>
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
						<span class="list_title_span"><s:text name="caseIn.show.sitting.title"></s:text></span>
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
							<s:text name="caseIn.show.sitting.sittingdate"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.sitting.sittingplace"></s:text> 
						</th>
						<th>
							<s:text name="caseIn.show.sitting.open_t"></s:text>
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
						<span class="list_title_span"><s:text name="caseIn.show.caseendbook.title"></s:text></span>
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
							<s:text name="caseIn.show.caseendbook.arbitBookNum"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.caseendbook.endStyle"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.caseendbook.decideDate"></s:text>
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
						<span class="list_title_span"><s:text name="caseIn.show.run.title"></s:text></span>
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
							<s:text name="caseIn.show.run.runstyle"></s:text>
						</th>
						<th>
							<s:text name="caseIn.show.run.runremark"></s:text>
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
