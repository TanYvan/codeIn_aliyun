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
		<title><s:text name="agent.edit.title"></s:text></title>
		<script type="text/javascript"
			src="${ctx}/public/javascripts/jQuery.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/common/js/jquery.metadata.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/common/js/jquery.validate.min.js"></script>
		<script type="text/javascript"
			src="${ctx}/public/common/js/${validateJs}" charset="utf-8"></script>
		<script type="text/javascript">	$().ready(function() { $("#fm").validate();	});</script>
		<script language="javascript">
			function pro1(){
			  	var s1="<select name='agent.profession' id='agent_profession' onchange=\"pro2(this.value);\">";
			  	s1 = s1 + "${pro1}";
			  	s1 = s1 + "</select>";
			    $("#pro1").html(s1);
			}
			function pro2(code){
				var p="";
			  	${pro2}
			  	var s1="<select name='agent.subprofession' id='agent_subprofession'>";
			  	s1 = s1 + p;
			  	s1 = s1 + "</select>";
			    $("#pro2").html(s1);
			}
			function pro_init(){
				$("#agent_profession").val("${agent.profession}");
				pro2($("#agent_profession").val());
				$("#agent_subprofession").val("${agent.subprofession}");
			}
	    </script>
	</head>
	<body onload="pro1();pro_init();">
		<div align="center">
			<table class="edit_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span"><s:text name="agent.edit.title"></s:text></span> &nbsp;
						<a href="${ctx}/caseApply/toUpdateCaseApply.do#dlrxx"  class="edit_return">
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
							${error}
						</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/agent/updateAgent.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
							<span style="color: red">*</span> <s:text name="agent.new.partyId"></s:text>:
						</th>
						<td>
						<input name="agent.id" type="hidden" size="25"
								value="${agent.id}" />
							<s:select name="agent.partyId" list="partyList" listKey="id" listValue="partyName"  cssClass='{required:true}'></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span> <s:text name="agent.new.name"></s:text>:
						</th>
						<td>
							<input name="agent.name" type="text" size="25" class='{required:true,maxlength:100}' 
								value="${agent.name}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="agent.new.status"></s:text>:
						</th>
						<td>
							<s:select name="agent.status" list="baseDicList['0007']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="agent.new.duty"></s:text>：
						</th>
						<td>
							<input name="agent.duty" type="text" size="25"
								value="${agent.duty}" class='{maxlength:100}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="agent.new.postcode"></s:text>：
						</th>
						<td>
							<input name="agent.postcode" type="text" size="10" value="${agent.postcode}"  class='{maxlength:6}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span> <s:text name="agent.new.company"></s:text>：
						</th>
						<td>
							<input name="agent.company" type="text" size="25" class='{required:true}' value="${agent.company}" class='{maxlength:100}'/>
							<div style="color: red"></div>
						</td>
					</tr>

					<tr>
						<th>
							<s:text name="agent.new.addr"></s:text>：
						</th>
						<td>
							<input name="agent.addr" type="text" size="40" value="${agent.addr}" class='{maxlength:100}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span>email：
						</th>
						<td>
							<input name="agent.email" type="text" size="25" value="${agent.email}" class='{required:true,maxlength:40,email:true}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span><s:text name="agent.new.mobiletel"></s:text>：
						</th>
						<td>
							<input name="agent.mobiletel" type="text" size="25" value="${agent.mobiletel}" class='{required:true,minlength:11,maxlength:15}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="agent.new.tel"></s:text>：
						</th>
						<td>
							<input name="agent.tel" type="text" size="25" value="${agent.tel}" class='{maxlength:40}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="agent.new.postTelCode"></s:text>：
						</th>
						<td>
							<input name="agent.postTelCode" type="text" size="25"
								value="${agent.postTelCode}" class='{maxlength:40}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
						</th>
						<td>
							<input name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
