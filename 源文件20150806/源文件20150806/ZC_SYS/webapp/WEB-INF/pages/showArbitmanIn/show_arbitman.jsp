<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>仲裁员基本信息</title>
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
			<div class="tabs" align="center">
		      <ul>
		        <li><a href="${ctx}/showArbitmanIn/showArbitmanIn.do?arbitman_code=${arbitman_code}" class="selected"><span>仲裁员基本信息</span></a></li>
		        <li><a href="${ctx}/showArbitmanIn/showEducateInList.do?arbitman_code=${arbitman_code}" ><span>教育情况</span></a></li>
				<li><a href="${ctx}/showArbitmanIn/showIndustryInList.do?arbitman_code=${arbitman_code}" ><span>行业</span></a></li>
				<li><a href="${ctx}/showArbitmanIn/showResumeInList.do?arbitman_code=${arbitman_code}" ><span>简历</span></a></li>
				<li><a href="${ctx}/showArbitmanIn/showLanguageInList.do?arbitman_code=${arbitman_code}" ><span>语种</span></a></li>
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
					....
					</td>
					<td align="center">
						<div class="message">${error}</div>
					</td>
					<td align="right">
					</td>
				</tr>
			</table>
			<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<td style="width:20%;text-align:right">
							仲裁员编号：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.code}
						</td>
						<td style="width:20%;text-align:right">
							仲裁员登录名：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.name}
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							身份：
						</td>
						<td style="width:30%;text-align:left">
							${ientity[arbitmanIn.identity]}
						</td>
						<td style="width:20%;text-align:right">
							仲裁员姓名（身份证）:
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.name_idcard}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							性别：
						</td>
						<td style="width:30%;text-align:left">
							${ baseDicMap['9907'][arbitmanIn.sex]}
						</td>
						<td style="width:20%;text-align:right">
							出生日期：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.birthday}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							英文姓名(身份证)：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.name_idcard_en}
						</td>
						<td style="width:20%;text-align:right">
							英文名字(身份证)：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.first_name_en}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							英文姓氏(身份证)：
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
							政治面貌：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.polityvisage}
						</td>
						<td style="width:20%;text-align:right">
							民族：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9003'][arbitmanIn.nation]}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							称呼：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.salutation}
						</td>
						<td style="width:20%;text-align:right">
							单位：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.company}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							国籍(中文)：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.country}
						</td>
						<td style="width:20%;text-align:right">
							所在地(中文)：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.city}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							国籍(英文)：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.country_en}
						</td>
						<td style="width:20%;text-align:right">
							所在地(英文)：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.city_en}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							工作状况：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9031'][arbitmanIn.work1]}
							<div style="color: red"></div>
						</td>
						<td style="width:20%;text-align:right">
							职业分类：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9002'][arbitmanIn.zy]}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							单位电话：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.telo}
						</td>
						<td style="width:20%;text-align:right">
							手机：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.mobiletel}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							家庭电话：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.telh}
						</td>
						<td style="width:20%;text-align:right">
							传真：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.fax}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							E-mail：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.email}
						</td>
						<td style="width:20%;text-align:right">
							身份类型：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9004'][arbitmanIn.standing]}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							单位类型：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9005'][arbitmanIn.comtype]}
						</td>
						<td style="width:20%;text-align:right">
							有无高职：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9033'][arbitmanIn.hightitle]}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							通讯地址：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.addr}
						</td>
						<td style="width:20%;text-align:right">
							兼职情况：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9030'][arbitmanIn.secjob]}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							邮政编码：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.postcode}
						</td>
						<td style="width:20%;text-align:right">
							职称：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.lawyerdate}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							推荐人：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.lawyernum}
						</td>
						<td style="width:20%;text-align:right">
							职务：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.title}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							参加工作时间：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.jobstart}
						</td>
						<td style="width:20%;text-align:right">
							工作意愿：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.jobwant}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							能否处理涉外案件：
						</td>
						<td style="width:30%;text-align:left">
							${baseDicMap['9904'][arbitmanIn.doforeign]}
						</td>
						<td style="width:20%;text-align:right">
							两年内担任法律顾问的企业名称：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.advisorycompany}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							主要业务成果：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.outstanding}
						</td>
						<td style="width:20%;text-align:right">
							发表的学术成果：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.fruit}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							工作经历：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.workhistory}
						</td>
						<td style="width:20%;text-align:right">
							社会团体兼职情况：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.parttime}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							在其它机构办案情况：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.other_org_handling}
						</td>
						<td style="width:20%;text-align:right">
							专长(中文)：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.special}
						</td>
					</tr>
					<tr>
						<td style="width:20%;text-align:right">
							专长(英文)：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.special_en}
						</td>
						<td style="width:20%;text-align:right">
							备注：
						</td>
						<td style="width:30%;text-align:left">
							${arbitmanIn.remark}
						</td>
					</tr>
				</table>
		</div>
	</body>
</html>