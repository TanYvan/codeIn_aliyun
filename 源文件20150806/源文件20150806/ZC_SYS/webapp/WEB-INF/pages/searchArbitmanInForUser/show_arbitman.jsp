<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="searchArbitmanInForUser.show.title"></s:text></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet"type="text/css" />
		<script type="text/javascript" src="${ctx}/public/javascripts/jQuery.js"></script>
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
			<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.name_idcard"></s:text>:
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.name_idcard}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.identity"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${ientity[arbitmanIn.identity]}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.sex"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${ baseDicMap['9907'][arbitmanIn.sex]}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.birthday"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.birthday}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.name_idcard_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.name_idcard_en}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.first_name_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.first_name_en}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.surname_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.surname_en}
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
							${arbitmanIn.polityvisage}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.nation"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9003'][arbitmanIn.nation]}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.salutation"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.salutation}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.company"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.company}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.country"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.country}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.city"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.city}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.country_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.country_en}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.city_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.city_en}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.work1"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9031'][arbitmanIn.work1]}
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.zy"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9002'][arbitmanIn.zy]}
						</td>
					</tr>

					<tr>
						<td style="width:20%;text-align:right">
						</td>
						<td style="width:30%;text-align:left">
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.standing"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9004'][arbitmanIn.standing]}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.comtype"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9005'][arbitmanIn.comtype]}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.hightitle"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9033'][arbitmanIn.hightitle]}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.addr"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.addr}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.secjob"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9030'][arbitmanIn.secjob]}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.postcode"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.postcode}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.lawyerdate"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.lawyerdate}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.lawyernum"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.lawyernum}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.title"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.title}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.jobstart"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.jobstart}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.jobwant"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.jobwant}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.doforeign"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9904'][arbitmanIn.doforeign]}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.advisorycompany"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.advisorycompany}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.outstanding"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.outstanding}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.fruit"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.fruit}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.workhistory"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.workhistory}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.parttime"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.parttime}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.other_org_handling"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.other_org_handling}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.special"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.special}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.special_en"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.special_en}
						</td>
						<td style="width:20%;text-align:right">
							<s:text name="arbitman.remark"></s:text>：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.remark}
						</td>
					</tr>
				</table>
		</div>
	</body>
</html>