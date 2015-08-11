<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="professions" value="${party.profession}" />
<c:set var="subprofessions" value="${party.subprofession}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
		<title><s:text name="party.edit.title"></s:text></title>
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
			  	var s1="<select name='party.profession' id='party_profession' onchange=\"pro2(this.value);\">";
			  	s1 = s1 + "${pro1}";
			  	s1 = s1 + "</select>";
			    $("#pro1").html(s1);
			}
			function pro2(code){
				var p="";
			  	${pro2}
			  	var s1="<select name='party.subprofession' id='party_subprofession'>";
			  	s1 = s1 + p;
			  	s1 = s1 + "</select>";
			    $("#pro2").html(s1);
			}
			function pro_init(){
				$("#party_profession").val("${party.profession}");
				pro2($("#party_profession").val());
				$("#party_subprofession").val("${party.subprofession}");
			}
			
			function aa(){
		        //var b =document.getElementById("institute");
		        a=window.showModalDialog('${ctx}/region/regionTree.do',"","dialogWidth=350px;dialogHeight=600px;resizable=1");
		        if (a!=null){
		          document.getElementById("party_area").value=a
		        }
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
						<span class="edit_title_span"><s:text name="party.edit.title"></s:text></span> &nbsp;
						<a href="${ctx}/caseApply/toUpdateCaseApply.do#sqrxx" class="edit_return">
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
			<form id="fm" action="${ctx}/party/updateParty.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th>
							<span style="color: red">*</span> <s:text name="party.new.partyName"></s:text>:
						</th>
						<td>
						<input name="party.id" type="hidden" size="15"
								value="${party.id}" />
							<input name="party.partyName" type="text" size="15" class='{required:true,maxlength:100}' 
								value="${party.partyName}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="party.new.isPerson"></s:text>:
						</th>
						<td>
							<s:select name="party.isPerson" list="baseDicList['9905']"
								listKey="dataVal" listValue="dataText"></s:select>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="party.new.commissary"></s:text>：
						</th>
						<td>
							<input name="party.commissary" type="text" size="15" class='{maxlength:30}' 
								value="${party.commissary}" />
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="party.new.dutyName"></s:text>:
						</th>
						<td>
							<s:select name="party.dutyName" list="baseDicList['8141']" listKey="dataVal" listValue="dataText" ></s:select>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="party.new.postTelCode"></s:text>：
						</th>
						<td>
							<input name="party.postTelCode" type="text" size="25" value="${party.postTelCode}"
								class='{maxlength:40}' />
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="party.new.postcode"></s:text>：
						</th>
						<td>
							<input name="party.postcode" type="text" size="10"
								value="${party.postcode}" class='{maxlength:6}'/>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="party.new.profession"></s:text>：
						</th>
						<td>
							<div id="pro1">
								<select name="party.profession" id='party_profession'>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="party.new.subprofession"></s:text>：
						</th>
						<td>
							<div id="pro2">
								<select name="party.subprofession" id="party_subprofession">
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span><s:text name="party.new.addr"></s:text>：
						</th>
						<td>
							<input name="party.addr" type="text" size="40"
								value="${party.addr}" class='{required:true,maxlength:100}'/>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="party.new.area"></s:text>：
						</th>
						<td>
							<s:select name="party.area" list="regionList"
								listKey="code" listValue="name"></s:select>
							<input type="button" value="选择" onclick="aa()"/>
						</td>
					</tr>
					<tr>
						<th>
							email：
						</th>
						<td>
							<input name="party.email" type="text" size="25"
								value="${party.email}" class='{maxlength:40,email:true}'/>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span><s:text name="party.new.mobileTel"></s:text>：
						</th>
						<td>
							<input name="party.mobileTel" type="text" size="25"
								value="${party.mobileTel}" class='{required:true,maxlength:40}'/>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="party.new.tel"></s:text>：
						</th>
						<td>
							<input name="party.tel" type="text" size="25"
								value="${party.tel}" class='{maxlength:40}'/>
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
