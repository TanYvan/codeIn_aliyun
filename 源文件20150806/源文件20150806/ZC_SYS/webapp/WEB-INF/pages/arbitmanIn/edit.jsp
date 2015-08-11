<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet"type="text/css" />
		<script type="text/javascript" src="${ctx}/public/common/DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="${ctx}/public/javascripts/jQuery.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/jquery.metadata.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/${validateJs}" charset="utf-8"></script>
		<script type="text/javascript">	$().ready(function() { $("#fm").validate();	});</script>
	</head>
	<body>
		<div align="center">
			<table class="edit_blank_line" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td></td>
					</tr>
				</tbody>
			</table>
			<div class="tabs" align="center">
		      <ul>
		        <li><a href="${ctx}/arbitmanIn/toUpdateArbitmanIn.do" class="selected"><span><s:text name="arbitman.title_2"></s:text></span></a></li>
		        <li><a href="${ctx}/educateIn/findEducateInList.do" ><span><s:text name="arbitman.educate.title"></s:text></span></a></li>
				<li><a href="${ctx}/industryIn/findIndustryInList.do" ><span><s:text name="arbitman.industry.title"></s:text></span></a></li>
				<li><a href="${ctx}/resumeIn/findResumeInList.do" ><span><s:text name="arbitman.resume.title"></s:text></span></a></li>
				<li><a href="${ctx}/languageIn/findLanguageInList.do" ><span><s:text name="arbitman.language.title"></s:text></span></a></li>
				<li><a href="${ctx}/arbitmanAttIn/findArbitmanAttInList.do" ><span><s:text name="arbitman.arbitmanAtt.title"></s:text></span></a></li>
		      </ul>
		    </div>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span">&nbsp;</span>
					</td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
			</table>
			<table class="edit_toolbar" cellspacing="0"cellpadding="0">
				<tr>
					<td align="left">
					.
					</td>
					<td align="center">
						<div class="message">${error}</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/arbitmanIn/updateArbitmanIn.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.code"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.code}
							<input type="hidden" name="id" value="${arbitmanIn.id}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.name"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.name}
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.identity"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${ientity[arbitmanIn.identity]}
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.name_idcard"></s:text>:
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.name_idcard" type="text" size="30" value="${arbitmanIn.name_idcard}" />
							<div style="color: red"></div>
						</td>
						
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.sex"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanIn.sex" list="baseDicList['9907']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.birthday"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.birthday" type="text" size="30" class='Wdate' onFocus="WdatePicker()" value="${arbitmanIn.birthday}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.name_idcard_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.name_idcard_en"  type="text" size="30" value="${arbitmanIn.name_idcard_en}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.first_name_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.first_name_en"  type="text" size="30" value="${arbitmanIn.first_name_en}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.surname_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.surname_en"  type="text" size="30" value="${arbitmanIn.surname_en}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
						</td>
						<td style="width:30%;text-align:left">
						</td>
						
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.polityvisage"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.polityvisage"  type="text" size="30" value="${arbitmanIn.polityvisage}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.nation"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanIn.nation"  list="baseDicList['9003']" listKey="dataVal" listValue="dataText"  value="arbitmanIn.nation"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.salutation"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.salutation"  type="text" size="30" value="${arbitmanIn.salutation}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.company"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.company"  type="text" size="30" value="${arbitmanIn.company}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.country"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.country"  type="text" size="30" value="${arbitmanIn.country}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.city"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.city"  type="text" size="30" value="${arbitmanIn.city}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.country_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.country_en"  type="text" size="30" value="${arbitmanIn.country_en}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.city_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.city_en"  type="text" size="30" value="${arbitmanIn.city_en}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.work1"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanIn.work1" list="baseDicList['9031']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.zy"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanIn.zy"  list="baseDicList['9002']" listKey="dataVal" listValue="dataText"  value="arbitmanIn.zy"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.telo"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.telo" type="text" size="30" value="${arbitmanIn.telo}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<span style="color: red">*</span><s:text name="arbitman.mobiletel"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.mobiletel" type="text" size="30" value="${arbitmanIn.mobiletel}" class='{required:true,minlength:11,maxlength:15}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.telh"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.telh" type="text" size="30" value="${arbitmanIn.telh}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.fax"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.fax" type="text" size="30" value="${arbitmanIn.fax}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<span style="color: red">*</span>E-mail：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.email" type="text" size="30" value="${arbitmanIn.email}" class='{required:true,maxlength:40,email:true}'/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.standing"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanIn.standing"  list="baseDicList['9004']" listKey="dataVal" listValue="dataText"  value="arbitmanIn.standing"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.comtype"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanIn.comtype" list="baseDicList['9005']" listKey="dataVal" listValue="dataText"  value="arbitmanIn.comtype"></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.hightitle"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanIn.hightitle" list="baseDicList['9033']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<span style="color: red">*</span><s:text name="arbitman.addr"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.addr" type="text" size="30" value="${arbitmanIn.addr}" class='{required:true}'/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.secjob"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanIn.secjob" list="baseDicList['9030']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.postcode"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.postcode" type="text" size="30" value="${arbitmanIn.postcode}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.lawyerdate"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.lawyerdate" type="text" size="30" value="${arbitmanIn.lawyerdate}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.lawyernum"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.lawyernum" type="text" size="30" value="${arbitmanIn.lawyernum}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.title"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.title" type="text" size="30" value="${arbitmanIn.title}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.jobstart"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.jobstart" type="text" size="30" value="${arbitmanIn.jobstart}" class='Wdate' onFocus="WdatePicker()"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.jobwant"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.jobwant" type="text" size="30" value="${arbitmanIn.jobwant}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.doforeign"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanIn.doforeign"  list="baseDicList['9904']" listKey="dataVal" listValue="dataText"  value="arbitmanIn.doforeign"></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.advisorycompany"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.advisorycompany" type="text" size="30" value="${arbitmanIn.advisorycompany}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.outstanding"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.outstanding" type="text" size="30" value="${arbitmanIn.outstanding}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.fruit"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.fruit" type="text" size="30" value="${arbitmanIn.fruit}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.workhistory"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.workhistory" type="text" size="30" value="${arbitmanIn.workhistory}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.parttime"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.parttime" type="text" size="30" value="${arbitmanIn.parttime}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.other_org_handling"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.other_org_handling" type="text" size="30" value="${arbitmanIn.other_org_handling}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.special"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.special" type="text" size="30" value="${arbitmanIn.special}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.special_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.special_en" type="text" size="30" value="${arbitmanIn.special_en}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.remark"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.remark" type="text" size="30" value="${arbitmanIn.remark}" />
							<div style="color: red"></div>
						</td>
					</tr>
					
					<tr>
						<td colspan='4'>
						<hr/>
						</td>
					</tr>
					
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.bank_username"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.bank_username" type="text" size="30" value="${arbitmanIn.bank_username}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.bankaccount"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.bankaccount" type="text" size="30" value="${arbitmanIn.bankaccount}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.bankname"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.bankname" type="text" size="30" value="${arbitmanIn.bankname}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.id_card"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanIn.id_card" type="text" size="30" value="${arbitmanIn.id_card}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
						</td>
						<td style="width:30%;text-align:left">
						</td>
						<td style="width:20%;text-align:right">
						</td>
						<td style="width:30%;text-align:left">
							<input name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>