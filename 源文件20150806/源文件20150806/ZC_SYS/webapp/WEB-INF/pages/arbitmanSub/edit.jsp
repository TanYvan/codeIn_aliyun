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
		        <li><a href="${ctx}/arbitmanSub/toUpdateArbitmanSub.do" class="selected"><span><s:text name="arbitman.title_2"></s:text></span></a></li>
		        <li><a href="${ctx}/educateSub/findEducateSubList.do" ><span><s:text name="arbitman.educate.title"></s:text></span></a></li>
				<li><a href="${ctx}/industrySub/findIndustrySubList.do" ><span><s:text name="arbitman.industry.title"></s:text></span></a></li>
				<li><a href="${ctx}/resumeSub/findResumeSubList.do" ><span><s:text name="arbitman.resume.title"></s:text></span></a></li>
				<li><a href="${ctx}/languageSub/findLanguageSubList.do" ><span><s:text name="arbitman.language.title"></s:text></span></a></li>
			  </ul>
		    </div>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td>
						<span class="list_title_span"><s:text name="arbitman.title_2"></s:text></span>
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
					..
					</td>
					<td align="center">
						<div class="message">${error}</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<form id="fm" action="${ctx}/arbitmanSub/updateArbitmanSub.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.code"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanSub.code}
							<input type="hidden" name="id" value="${arbitmanSub.id}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.name"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanSub.name}
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.identity"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${ientity[arbitmanSub.identity]}
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<i>*</i><s:text name="arbitman.name_idcard"></s:text>:
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.name_idcard" type="text" size="30" value="${arbitmanSub.name_idcard}" />
							<div style="color: red"></div>
						</td>
						
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.sex"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanSub.sex" list="baseDicList['9907']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.birthday"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.birthday" type="text" size="30" class='Wdate' onFocus="WdatePicker()" value="${arbitmanSub.birthday}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.name_idcard_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.name_idcard_en"  type="text" size="30" value="${arbitmanSub.name_idcard_en}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.first_name_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.first_name_en"  type="text" size="30" value="${arbitmanSub.first_name_en}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.surname_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.surname_en"  type="text" size="30" value="${arbitmanSub.surname_en}"/>
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
							<input name="arbitmanSub.polityvisage"  type="text" size="30" value="${arbitmanSub.polityvisage}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.nation"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanSub.nation"  list="baseDicList['9003']" listKey="dataVal" listValue="dataText"  value="arbitmanSub.nation"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.salutation"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.salutation"  type="text" size="30" value="${arbitmanSub.salutation}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.company"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.company"  type="text" size="30" value="${arbitmanSub.company}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.country"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.country"  type="text" size="30" value="${arbitmanSub.country}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.city"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.city"  type="text" size="30" value="${arbitmanSub.city}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.country_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.country_en"  type="text" size="30" value="${arbitmanSub.country_en}"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.city_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.city_en"  type="text" size="30" value="${arbitmanSub.city_en}"/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.work1"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanSub.work1" list="baseDicList['9031']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.zy"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanSub.zy"  list="baseDicList['9002']" listKey="dataVal" listValue="dataText"  value="arbitmanSub.zy"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.telo"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.telo" type="text" size="30" value="${arbitmanSub.telo}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.mobiletel"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.mobiletel" type="text" size="30" value="${arbitmanSub.mobiletel}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.telh"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.telh" type="text" size="30" value="${arbitmanSub.telh}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.fax"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.fax" type="text" size="30" value="${arbitmanSub.fax}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							E-mail：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.email" type="text" size="30" value="${arbitmanSub.email}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.standing"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanSub.standing"  list="baseDicList['9004']" listKey="dataVal" listValue="dataText"  value="arbitmanSub.standing"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.comtype"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanSub.comtype" list="baseDicList['9005']" listKey="dataVal" listValue="dataText"  value="arbitmanSub.comtype"></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.hightitle"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanSub.hightitle" list="baseDicList['9033']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.addr"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.addr" type="text" size="30" value="${arbitmanSub.addr}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.secjob"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanSub.secjob" list="baseDicList['9030']" listKey="dataVal" listValue="dataText" ></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.postcode"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.postcode" type="text" size="30" value="${arbitmanSub.postcode}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.lawyerdate"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.lawyerdate" type="text" size="30" value="${arbitmanSub.lawyerdate}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.lawyernum"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.lawyernum" type="text" size="30" value="${arbitmanSub.lawyernum}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.title"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.title" type="text" size="30" value="${arbitmanSub.title}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.jobstart"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.jobstart" type="text" size="30" value="${arbitmanSub.jobstart}" class='Wdate' onFocus="WdatePicker()"/>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.jobwant"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.jobwant" type="text" size="30" value="${arbitmanSub.jobwant}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.doforeign"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<s:select name="arbitmanSub.doforeign"  list="baseDicList['9904']" listKey="dataVal" listValue="dataText"  value="arbitmanSub.doforeign"></s:select>
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.advisorycompany"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.advisorycompany" type="text" size="30" value="${arbitmanSub.advisorycompany}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.outstanding"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.outstanding" type="text" size="30" value="${arbitmanSub.outstanding}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.fruit"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.fruit" type="text" size="30" value="${arbitmanSub.fruit}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.workhistory"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.workhistory" type="text" size="30" value="${arbitmanSub.workhistory}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.parttime"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.parttime" type="text" size="30" value="${arbitmanSub.parttime}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.other_org_handling"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.other_org_handling" type="text" size="30" value="${arbitmanSub.other_org_handling}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.special"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.special" type="text" size="30" value="${arbitmanSub.special}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.special_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.special_en" type="text" size="30" value="${arbitmanSub.special_en}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.remark"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.remark" type="text" size="30" value="${arbitmanSub.remark}" />
							<div style="color: red"></div>
						</td>
					</tr>
					
					<tr>
						<td style="width:20%;text-align:right">
						</td>
						<td style="width:30%;text-align:left">
						</td>
						<td style="width:20%;text-align:right">
							<input name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
						<td style="width:30%;text-align:left">
						</td>
					</tr>
				</table>
			</form>
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td>
						<span class="list_title_span"><s:text name="arbitman.fin"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="edit_title_hr"></td>
				</tr>
				<tr>
					<td class="edit_title_blank_line"></td>
				</tr>
			</table>
			<form id="fm2" action="${ctx}/arbitmanSub/updateArbitmanFinanceSub.do" method="post">
				<table class="edit_data_table" cellspacing="0" cellpadding="0">

					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.bank_username"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.bank_username" type="text" size="30" value="${arbitmanSub.bank_username}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.bankaccount"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.bankaccount" type="text" size="30" value="${arbitmanSub.bankaccount}" />
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.bankname"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.bankname" type="text" size="30" value="${arbitmanSub.bankname}" />
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.id_card"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							<input name="arbitmanSub.id_card" type="text" size="30" value="${arbitmanSub.id_card}" />
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