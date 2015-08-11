<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>top</title>
<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#137ABD">
	  <tr>
		<td height="522" align="left" valign="top"  bgcolor="#137ABD">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
							<tr>
								<td height="55"  width=75% align="left" valign="top" class="work_top_1">&nbsp;</td>
								<td height="55"  width=25% align="right" valign="top" class="work_top_2">&nbsp;</td>
							</tr>
							<!--  
							<tr>
								<td colspan="2"  align="left" valign="top" class="work_top_3" >
								<img src="../../public/images/top_3.png"  width="100%"/>
								</td>
							</tr>
							-->
							<tr>
								<td colspan="2"  align="center">
                                    <table width="100%" border="0" align="left" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td width="10">
												</td>
												<td align="right">
												<a href="javascript:return fasle;"><s:text name="welcome.top.userName"></s:text>：${userName}</a>
												<s:if test="cpwDisplay==1">
												<a href="${ctx}/welcome/toChangePassword.do" target="_blank"><s:text name="welcome.top.toChangePassword"></s:text></a>
												</s:if>
												<a href="${ctx}/welcome/logout.do" target="_parent"><s:text name="welcome.top.logout"></s:text></a>
												</td>
												<td width="40">
												</td>
											</tr>
										</tbody>
									</table>
                                </td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>
