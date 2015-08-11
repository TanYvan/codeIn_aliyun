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
		<title><s:text name="caseApply.edit.title"></s:text></title>
	</head>
	<body  <s:if test="anchor!=null && anchor!=''"> onLoad="window.location.hash='${anchor}';" </s:if>  >
		<div align="center">
			<table class="edit_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span"><s:text name="caseApply.edit.title"></s:text></span> &nbsp;
						<a href="${ctx}/caseApply/findCaseApplyList.do" class="edit_return">
							<s:text name="common.return"></s:text></a>
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
			<form id="fm" action="${ctx}/caseApply/updateCaseApply.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th width="30%">
							<s:text name="caseApply.edit.head_casereason"></s:text>：
						</th>
						<td>
							<input name="caseApplyBase.id" type="hidden" value="${caseApplyBase.id}"/>
							<textarea id="caseApplyBase.casereason" name="caseApplyBase.casereason" rows="5" cols="60">${caseApplyBase.casereason}</textarea>
							<s:text name="caseApply.edit.mes_1"></s:text>
						</td>
					</tr>
					<tr>
						<th width="30%">
							<s:text name="caseApply.edit.head_remark"></s:text>：
						</th>
						<td>
							<textarea id="caseApplyBase.remark" name="caseApplyBase.remark" rows="5" cols="60">${caseApplyBase.remark}</textarea>
						</td>
					</tr>
					<tr>
						<th width="30%">
						</th>
						<td>
							<input name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
					</tr>
				</table>
			</form>
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span" id="sqrxx"><s:text name="caseApply.party1.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<table>
							<tr>
								<td align="left" >
									<form action="${ctx}/party/toInsertParty.do" method="post">
										<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
									</form>
								</td>
								<td align="left" >
									<form action="${ctx}/party/select.do" method="post">
										<input type="submit" name="SubmitNew" value="<s:text name="common.button_copy_new"></s:text>" />
									</form>
								</td>
							</tr>
						</table>
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
						<th>
							<s:text name="common.head_update"></s:text>
						</th>
						<th>
							<s:text name="common.head_delete"></s:text>
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
							<td>
								<form
									action="${ctx}/party/toUpdateParty.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitShow" value="<s:text name="common.button_update"></s:text>" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/party/deleteParty.do?id=<s:property value='id'/>"
									method="post" onsubmit="return confirm('<s:text name="common.button_delete_confirm"></s:text>');">
									<input type="submit" name="SubmitShow" value="<s:text name="common.button_delete"></s:text>" />
								</form>
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
						<span class="list_title_span" id="dlrxx"><s:text name="caseApply.agent.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						
						<table>
							<tr>
								<td align="left" >
									<form action="${ctx}/agent/toInsertAgent.do" method="post">
										<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
									</form>
								</td>
								<td align="left" >
								    <s:if test="partyList.size!=0">
										<form action="${ctx}/agent/select.do" method="post">
											<input type="submit" name="SubmitNew" value="<s:text name="common.button_copy_new"></s:text>" />
										</form>
									</s:if>
								</td>
							</tr>
						</table>
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
						<th>
							<s:text name="common.head_update"></s:text>
						</th>
						<th>
							<s:text name="common.head_delete"></s:text>
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
							<td>
								<form
									action="${ctx}/agent/toUpdateAgent.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitShow" value="<s:text name="common.button_update"></s:text>" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/agent/deleteAgent.do?id=<s:property value='id'/>"
									method="post" onsubmit="return confirm('<s:text name="common.button_delete_confirm"></s:text>');">
									<input type="submit" name="SubmitShow" value="<s:text name="common.button_delete"></s:text>" />
								</form>
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
						<span class="list_title_span" id="qqxx"><s:text name="caseApply.request.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/partyRequest/toInsertPartyRequest.do"
							method="post">
							<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
						</form>
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
						<th>
							<s:text name="common.head_update"></s:text>
						</th>
						<th>
							<s:text name="common.head_delete"></s:text>
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
							<td>
								<form
									action="${ctx}/partyRequest/toUpdatePartyRequest.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitShow" value="<s:text name="common.button_update"></s:text>" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/partyRequest/deletePartyRequest.do?id=<s:property value='id'/>"
									method="post" onsubmit="return confirm('<s:text name="common.button_delete_confirm"></s:text>');">
									<input type="submit" name="SubmitShow" value="<s:text name="common.button_delete"></s:text>" />
								</form>
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
						<span class="list_title_span" id="htxx"><s:text name="caseApply.contractsign.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/contractsign/toInsertContractsign.do" method="post">
							<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
						</form>
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
							<s:text name="caseApply.contractsign.contractdate"></s:text>
						</th>
						<th>
							<s:text name="caseApply.contractsign.pactname"></s:text>
						</th>
						<th>
							<s:text name="caseApply.contractsign.note"></s:text>
						</th>
						<th>
							<s:text name="common.head_update"></s:text>
						</th>
						<th>
							<s:text name="common.head_delete"></s:text>
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
							<td>
								<form
									action="${ctx}/contractsign/toUpdateContractsign.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitShow" value="<s:text name="common.button_update"></s:text>" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/contractsign/deleteContractsign.do?id=<s:property value='id'/>"
									method="post" onsubmit="return confirm('<s:text name="common.button_delete_confirm"></s:text>');">
									<input type="submit" name="SubmitShow" value="<s:text name="common.button_delete"></s:text>" />
								</form>
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
						<span class="list_title_span" id="bsqrxx"><s:text name="caseApply.party2.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						
						<table>
							<tr>
								<td align="left" >
									<form action="${ctx}/party2/toInsertParty.do" method="post">
										<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
									</form>
								</td>
								<td align="left" >
									<form action="${ctx}/party2/select.do" method="post">
										<input type="submit" name="SubmitNew" value="<s:text name="common.button_copy_new"></s:text>" />
									</form>
								</td>
							</tr>
						</table>
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
						<th>
							<s:text name="common.head_update"></s:text>
						</th>
						<th>
							<s:text name="common.head_delete"></s:text>
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
							<td>
								<form
									action="${ctx}/party2/toUpdateParty.do?id=<s:property value='id'/>"
									method="post">
									<input type="submit" name="SubmitShow" value="<s:text name="common.button_update"></s:text>" />
								</form>
							</td>
							<td>
								<form
									action="${ctx}/party2/deleteParty.do?id=<s:property value='id'/>"
									method="post" onsubmit="return confirm('<s:text name="common.button_delete_confirm"></s:text>');">
									<input type="submit" name="SubmitShow" value="<s:text name="common.button_delete"></s:text>" />
								</form>
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
						<span class="list_title_span" id="ajfj"><s:text name="caseApply.attachment.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form action="${ctx}/caseAtt/toInsertCaseAtt.do" method="post">
							<input type="submit" name="SubmitNew" value="<s:text name="common.button_new"></s:text>" />
						</form>
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
								<a href="${ctx}/caseAtt/downFile.do?id=<s:property value="id" />" target="_blank" class="edit_return"><s:text name="common.down"></s:text></a>
							</td>
							<td>
								<s:property value="remark" />
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
		</div>
	</body>
</html>
