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
		<title><s:text name="caseApply.show.title"></s:text></title>
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
						<span class="edit_title_span"><s:text name="caseApply.show.title"></s:text></span> &nbsp;
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
							<div class="message">${error}</div>
						</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
		
			<table class="edit_data_table" cellspacing="0" cellpadding="0">
				<tr>
					<th width="30%">
						<s:text name="caseApply.edit.head_casereason"></s:text>：
					</th>
					<td>
						${caseApplyBase.casereason}
					</td>
				</tr>
				<tr>
					<th width="30%">
						<s:text name="caseApply.edit.head_remark"></s:text>：
					</th>
					<td>
						${caseApplyBase.remark}
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
						<span class="list_title_span"><s:text name="caseApply.party1.title"></s:text></span>
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
						<div class="message">
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
							<s:text name="caseApply.party1.head_partyName"></s:text>
						</th>
						<th>
							<s:text name="caseApply.party1.head_commissary"></s:text>
						</th>
						<th>
							<s:text name="caseApply.party1.head_mobileTel"></s:text>
						</th>
						<th>
							email
						</th>
						<th>
							<s:text name="caseApply.party1.head_isPerson"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="partyList" status="party">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="partyName" />
							</td>
							<td>
								<s:property value="commissary" />
							</td>
							<td>
								<s:property value="mobileTel" />
							</td>
							<td>
								<s:property value="email" />
							</td>
							<td>
								<s:property value="baseDicMap['9905'][isPerson]"/>
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
						<span class="list_title_span"><s:text name="caseApply.agent.title"></s:text></span>
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
							<s:text name="caseApply.agent.partyId"></s:text>
						</th>
						<th>
							<s:text name="caseApply.agent.name"></s:text>
						</th>
						<th>
							<s:text name="caseApply.agent.status"></s:text>
						</th>
						<th>
							<s:text name="caseApply.agent.mobiletel"></s:text>
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
					<s:iterator value="agentList" status="agent">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="partyMap[partyId]" />
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
						<span class="list_title_span"><s:text name="caseApply.request.title"></s:text></span>
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
						<div class="message">
							
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
							<s:text name="caseApply.request.partyId"></s:text>
						</th>
						<th>
							<s:text name="caseApply.request.requestText"></s:text>
						</th>
						<th>
							<s:text name="caseApply.request.factreason"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						i_tr = 0;
					%>
					<s:iterator value="partyRequestList" status="partyRequest">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="partyMap[partyId]" />
							</td>
							<td>
								<s:property value="requestText" />
							</td>
							<td>
								<s:property value="factreason" />
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
						<span class="list_title_span"><s:text name="caseApply.contractsign.title"></s:text></span>
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
							<s:text name="caseApply.contractsign.contractdate"></s:text>
						</th>
						<th>
							<s:text name="caseApply.contractsign.pactname"></s:text>
						</th>
						<th>
							<s:text name="caseApply.contractsign.note"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						i_tr = 0;
					%>
					<s:iterator value="contractsignList" status="contractsign">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="contractdate" />
							</td>
							<td>
								<s:property value="pactname" />
							</td>
							<td>
								<s:property value="note" />
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
						<span class="list_title_span"><s:text name="caseApply.party2.title"></s:text></span>
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
						<div class="message">
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
							<s:text name="caseApply.party2.head_partyName"></s:text>
						</th>
						<th>
							<s:text name="caseApply.party2.head_commissary"></s:text>
						</th>
						<th>
							<s:text name="caseApply.party2.head_mobileTel"></s:text>
						</th>
						<th>
							email
						</th>
						<th>
							<s:text name="caseApply.party2.head_isPerson"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						i_tr = 0;
					%>
					<s:iterator value="party2List" status="party">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="partyName" />
							</td>
							<td>
								<s:property value="commissary" />
							</td>
							<td>
								<s:property value="mobileTel" />
							</td>
							<td>
								<s:property value="email" />
							</td>
							<td>
								<s:property value="baseDicMap['9905'][isPerson]"/>
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
						<span class="list_title_span"><s:text name="caseApply.attachment.title"></s:text></span>
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
							<s:text name="caseApply.attachment.category"></s:text>
						</th>
						<th>
							<s:text name="caseApply.attachment.upTime"></s:text>
						</th>
						<th>
							<s:text name="caseApply.attachment.fileName"></s:text>
						</th>
						<th>
							<s:text name="caseApply.attachment.remark"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						i_tr = 0;
					%>
					<s:iterator value="attachmentList" status="att">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td>
								<s:property value="baseDicMap['9104'][category]" />
							</td>
							<td>
								<s:property value="upTime" />
							</td>
							<td>
								<s:property value="fileName" />
								<a href="${ctx}/caseAtt/downFile.do?id=<s:property value="id" />" target="_blank" class="edit_return">下载</a>
							</td>
							<td>
								<s:property value="remark" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			
			
		</div>
	</body>
</html>
