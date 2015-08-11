<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><s:text name="welcome.index.title"></s:text> ${userAgent}</title>
<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#0E3F6A">
  <tr>
    <td height="522" align="center" valign="top" class="bj"><table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="522" align="center" valign="top" class="bj_tu"><table width="99%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="200" height="10"></td>
            <td></td>
            <td></td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td width="200" align="right"><table width="200" border="0" cellpadding="0" cellspacing="0" class="top_Loginbar">
              <tr>
                <td align="center"><a href="${ctx}/welcome/locale.do?language=zh_CN">中文简体 &nbsp;</a><a href="${ctx}/welcome/locale.do?language=zh_TW">|&nbsp;中文繁体</a> <a href="${ctx}/welcome/locale.do?language=en_US">|&nbsp; English</a></td>
              </tr>
            </table></td>
            </tr>
          <tr>
            <td height="230"></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
          <tr>
            <td height="35">&nbsp;</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="20">&nbsp;</td>
                <td width="31%">
                	<input type="image" name="imageField" src="../public/images/btn_11.png" />
                	<a href="${ctx}/welcome/login_1.do" class="a2"><s:text name="welcome.index.login_1_title"></s:text></a> </td>
                <td width="20"></td>
                <td width="31%"><input type="image" name="imageField2" src="../public/images/btn_22.png" />
                	<a href="${ctx}/welcome/login_2.do" class="a2"><s:text name="welcome.index.login_2_title"></s:text></a> </td>
                <td width="20">&nbsp;</td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
            </tr>
          <tr>
            <td height="162">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
		</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="500" bgcolor="#0E3F6A">&nbsp;</td>
  </tr>
</table>
</body>
</html>
