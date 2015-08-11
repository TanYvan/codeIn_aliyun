<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="wuser.myInfo.title"></s:text>.</title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet"
			type="text/css" />
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
			<table class="edit_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="edit_title_span"><s:text name="wuser.myInfo.title"></s:text>.</span>
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
			<form id="fm" action="${ctx}/wuser/updateMyInfoSub.do" method="post" enctype="multipart/form-data" >
				<table class="edit_data_table" cellspacing="0" cellpadding="0">
					<tr>
						<th width="30%">
							<s:text name="wuser.myInfo.user_code"></s:text>:
						</th>
						<td width="70%">
						    <input name="wuserSub.id" type="hidden" size="15" value="${wuserSub.id}"/>
							${wuserSub.code}
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span><s:text name="wuser.myInfo.nameIdcard"></s:text>：
						</th>
						<td>
							<input name="wuserSub.name_idcard" type="text" size="15"  value="${wuserSub.name_idcard}" class='{required:true,maxlength:20}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span><s:text name="wuser.myInfo.idCard"></s:text>：
						</th>
						<td>
							<input name="wuserSub.id_card" type="text" size="30"  value="${wuserSub.id_card}" class='{required:true,minlength:18,maxlength:50}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span><s:text name="wuser.myInfo.telephone"></s:text>：
						</th>
						<td>
							<input name="wuserSub.telephone" type="text" size="15"  value="${wuserSub.telephone}" class='{required:true,minlength:11,maxlength:15}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<span style="color: red">*</span>email：
						</th>
						<td>
							<input name="wuserSub.email" type="text" size="50"  value="${wuserSub.email}" class='{required:true,maxlength:40,email:true}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="wuser.myInfo.identity"></s:text>：
						</th>
						<td>
							<s:select name="wuserSub.identity"  list="baseDicList['9912']" listKey="dataVal" listValue="dataText"  value="wuserSub.identity"></s:select>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="wuser.myInfo.postCode"></s:text>：
						</th>
						<td>
							<input name="wuserSub.postcode" type="text" size="50"  value="${wuserSub.postcode}" class='{maxlength:6}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="wuser.myInfo.company"></s:text>：
						</th>
						<td>
							<input name="wuserSub.company" type="text" size="50"  value="${wuserSub.company}" class='{maxlength:100}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="wuser.myInfo.addr"></s:text>：
						</th>
						<td>
							<input name="wuserSub.addr" type="text" size="50"  value="${wuserSub.addr}" class='{maxlength:100}'/>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="wuser.myInfo.fax"></s:text>：
						</th>
						<td>
							<input name="wuserSub.fax" type="text" size="50"  value="${wuserSub.fax}" class='{maxlength:15}'/>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="wuser.myInfo.otherContact"></s:text>：
						</th>
						<td>
							<input name="wuserSub.other_contact" type="text" size="50"  value="${wuserSub.other_contact}" class='{maxlength:100}'/>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="wuser.myInfo.remark"></s:text>：
						</th>
						<td>
							<textarea name="wuserSub.remark" rows="5" cols="50" >${wuserSub.remark}</textarea>
							<div style="color: red"></div>
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="wuser.myInfo.attCategory"></s:text>：
						</th>
						<td>
							<s:select list="baseDicList['9102']" listKey="dataVal" listValue="dataText" name="attCategory" />
						</td>
					</tr>
					<tr>
						<th>
							<s:text name="wuser.myInfo.upload"></s:text>：
						</th>
						<td>
							<s:if test="attPath!=''">
							<a class="a3" href="${ctx}/${attPath}" target="_blank"><s:text name="wuser.myInfo.down"></s:text></a>
							</s:if>
							<input name="upload" type="file" />
						</td>
					</tr>
					<tr>
						<th>
						</th>
						<td>
							<input id="SubmitOk" name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="common.submit"></s:text>" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>