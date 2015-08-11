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
		<script>
		function check() {
			document.getElementById('SubmitOk').disabled='disabled';
			document.getElementById('SubmitOk').value='<s:text name="common.submit_wait"></s:text>';
			return true;
		}
		</script>
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
		        <li><a href="${ctx}/arbitman/toUpdateArbitman.do" class="selected"><span><s:text name="arbitman.title_2"></s:text></span></a></li>
		        <li><a href="${ctx}/educate/findEducateList.do" ><span><s:text name="arbitman.educate.title"></s:text></span></a></li>
				<li><a href="${ctx}/industry/findIndustryList.do" ><span><s:text name="arbitman.industry.title"></s:text></span></a></li>
				<li><a href="${ctx}/resume/findResumeList.do" ><span><s:text name="arbitman.resume.title"></s:text></span></a></li>
				<li><a href="${ctx}/language/findLanguageList.do" ><span><s:text name="arbitman.language.title"></s:text></span></a></li>
				<li><a href="${ctx}/arbitmanAtt/findArbitmanAttList.do" ><span><s:text name="arbitman.arbitmanAtt.title"></s:text></span></a></li>
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
					</td>
					<td align="center">
						<div class="message">${error}</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/arbitman/updateArbitman.do" method="post" enctype="multipart/form-data" onsubmit="return check();">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.code"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitman.code}
							<input type="hidden" name="id" value="${arbitman.id}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.name"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitman.name}
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.identity"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:checkboxlist list="baseDicMap['9908']"  name="arbitman.identity" value="%{identityList}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.name_idcard"></s:text>:
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.nameIdcard" type="text" size="30" value="${arbitman.nameIdcard}" />
							<div style="color: red"></div>
						</td>
						
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.sex"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitman.sex" list="baseDicList['9907']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.birthday"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.birthday" type="text" size="30" class='Wdate' onFocus="WdatePicker()" value="${arbitman.birthday}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.name_idcard_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.nameIdcardEn"  type="text" size="30" value="${arbitman.nameIdcardEn}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.first_name_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.firstNameEn"  type="text" size="30" value="${arbitman.firstNameEn}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.surname_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.surnameEn"  type="text" size="30" value="${arbitman.surnameEn}"/>
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
							<input name="arbitman.polityvisage"  type="text" size="30" value="${arbitman.polityvisage}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.nation"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitman.nation"  list="baseDicList['9003']" listKey="dataVal" listValue="dataText"  value="arbitman.nation"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.salutation"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.salutation"  type="text" size="30" value="${arbitman.salutation}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.company"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.company"  type="text" size="30" value="${arbitman.company}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.country"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.country"  type="text" size="30" value="${arbitman.country}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.city"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.city"  type="text" size="30" value="${arbitman.city}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.country_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.country_en"  type="text" size="30" value="${arbitman.countryEn}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.city_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.cityEn"  type="text" size="30" value="${arbitman.cityEn}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.work1"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitman.work1" list="baseDicList['9031']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.zy"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitman.zy"  list="baseDicList['9002']" listKey="dataVal" listValue="dataText"  value="arbitman.zy"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.telo"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.telo" type="text" size="30" value="${arbitman.telo}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<span style="color: red">*</span><s:text name="arbitman.mobiletel"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.mobiletel" type="text" size="30" value="${arbitman.mobiletel}" class='{required:true,minlength:11,maxlength:15}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.telh"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.telh" type="text" size="30" value="${arbitman.telh}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.fax"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.fax" type="text" size="30" value="${arbitman.fax}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<span style="color: red">*</span>E-mail：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.email" type="text" size="30" value="${arbitman.email}" class='{required:true,maxlength:40,email:true}'/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.standing"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitman.standing"  list="baseDicList['9004']" listKey="dataVal" listValue="dataText"  value="arbitman.standing"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.comtype"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitman.comtype" list="baseDicList['9005']" listKey="dataVal" listValue="dataText"  value="arbitman.comtype"></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.hightitle"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitman.hightitle" list="baseDicList['9033']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<span style="color: red">*</span><s:text name="arbitman.addr"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.addr" type="text" size="30" value="${arbitman.addr}" class='{required:true}'/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.secjob"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitman.secjob" list="baseDicList['9030']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.postcode"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.postcode" type="text" size="30" value="${arbitman.postcode}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.lawyerdate"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.lawyerdate" type="text" size="30" value="${arbitman.lawyerdate}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.lawyernum"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.lawyernum" type="text" size="30" value="${arbitman.lawyernum}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.title"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.title" type="text" size="30" value="${arbitman.title}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.jobstart"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.jobstart" type="text" size="30" value="${arbitman.jobstart}" class='Wdate' onFocus="WdatePicker()"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.jobwant"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.jobwant" type="text" size="30" value="${arbitman.jobwant}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.doforeign"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitman.doforeign"  list="baseDicList['9904']" listKey="dataVal" listValue="dataText"  value="arbitman.doforeign"></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.advisorycompany"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.advisorycompany" type="text" size="30" value="${arbitman.advisorycompany}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.outstanding"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.outstanding" type="text" size="30" value="${arbitman.outstanding}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.fruit"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.fruit" type="text" size="30" value="${arbitman.fruit}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.workhistory"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.workhistory" type="text" size="30" value="${arbitman.workhistory}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.parttime"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.parttime" type="text" size="30" value="${arbitman.parttime}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.other_org_handling"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.otherOrgHandling" type="text" size="30" value="${arbitman.otherOrgHandling}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.special"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.special" type="text" size="30" value="${arbitman.special}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.special_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.specialEn" type="text" size="30" value="${arbitman.specialEn}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.remark"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.remark" type="text" size="30" value="${arbitman.remark}" />
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
							<input name="arbitman.bankUsername" type="text" size="30" value="${arbitman.bankUsername}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.bankaccount"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.bankaccount" type="text" size="30" value="${arbitman.bankaccount}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.bankname"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.bankname" type="text" size="30" value="${arbitman.bankname}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.id_card"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitman.idCard" type="text" size="30" value="${arbitman.idCard}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.upload"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:if test="attPath!=''">
								<a class="a3" href="${ctx}/${attPath}" target="_blank"><s:text name="common.down"></s:text></a>
							</s:if>
							<input name="upload" type="file" />
						</td>
						<td style="width:20%;text-align:right">
							
						</td>
						<td style="width:30%;text-align:left">
							
						</td>
					</tr>			
					<tr>
						<td style="width:20%;text-align:right">
						</td>
						<td style="width:30%;text-align:left">
						</td>
						<td style="width:20%;text-align:right">
							<input id="SubmitOk" name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
						<td style="width:30%;text-align:left">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>