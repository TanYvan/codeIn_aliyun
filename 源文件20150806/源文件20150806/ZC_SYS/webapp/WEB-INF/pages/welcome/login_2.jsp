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
<title><s:text name="welcome.login_2.title"></s:text></title>
	<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="${ctx}/public/javascripts/jQuery.js"></script>
	<script>
	function refresh(obj) {
		obj.src = "${ctx}/imageServlet?" + Math.random();
	}
	function check() {
		if(document.getElementById("code").value==""){
	      alert('<s:text name="welcome.login_2.mes_1"></s:text>');
	      return false;
	    }
	    if(document.getElementById("password").value==""){
	      alert('<s:text name="welcome.login_2.mes_2"></s:text>');
	      return false;
	    }
		var code = $("#veryCode").val();
		$.ajax( {
			async: false,
			type : "POST",
			url : "${ctx}/resultServlet",
			data : "veryCode=" + code,
			success : function(data) {
				if (data=="ok") {
					document.getElementById("very").value="1"
				}else{
					alert('<s:text name="welcome.login_2.mes_3"></s:text>');
					document.getElementById("very").value="0"
				}
			}
		});
		if (document.getElementById("very").value=="1"){
			return true;
		}else{
			return false;
		}
	}
	</script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#0E3F6A">
  <tr>
    <td height="522" align="center" valign="top" class="bj">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center">
		<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td  align="center" valign="top" class="bj_tu">
			<table width="99%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="200" height="10"></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td width="200" align="right">
				<table width="200" border="0" cellpadding="0" cellspacing="0" >
                    <tr>
                      <td align="center"></td>
                    </tr>
                </table>
				</td>
              </tr>
              <tr>
                <td height="230"></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="35">&nbsp;</td>
                <td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="20">&nbsp;</td>
                      <td width="30%">
                        <input type="image" name="imageField2" src="../public/images/btn_11.png" />  
                        <a href="${ctx}/welcome/login_1.do" class="a2"><s:text name="welcome.login_2.login_1_title"></s:text></a> </td>
                      <td width="20"></td>
                      <td width="30%">
                        <input type="image" name="imageField" src="../public/images/btn_2.png" />
                        <a href="${ctx}/welcome/login_2.do" class="a4"><s:text name="welcome.login_2.login_2_title"></s:text></a> </td>
                      <td width="20">&nbsp;</td>
                    </tr>
                </table>
				</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5"></td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF">
        <form id="fm" method="post" action="${ctx}/welcome/loginDo_2.do" onsubmit="return check();">
			<table width="500" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td width="130">&nbsp;</td>
	            <td width="428" align="left">
	            	<div class="message">${error}</div>
				</td>
	          </tr>
	          <tr>
	            <td class="font"><s:text name="welcome.login_1.user_name"></s:text>：<br/><br/><br/></td>
	            <td align="left">
	                <input type="text" name="code" id="code" size="25" /> 
	                <br/>               
	                <span class="font1"><s:text name="welcome.login_2.mes1"></s:text></span>
	                <br/>
	                <span class="font1"><s:text name="welcome.login_2.mes2"></s:text></span> </td>
	          </tr>
	          <tr>
	            <td height="15"></td>
	            <td align="left"></td>
	          </tr>
	          <tr>
	            <td class="font"><s:text name="welcome.login_1.password"></s:text>：</td>
	            <td align="left"><input type="password" id="password" name="password" size="25" /></td>
	          </tr>
	          <tr>
	            <td height="15"></td>
	            <td align="left"></td>
	          </tr>
	           <tr>
            <td height="10" align="left"><s:text name="welcome.login_2.veryCode"></s:text>：</td>
            <td align="left">
            	<input type="hidden" id="very" name="very" />
            	<input type="text" id="veryCode" name="veryCode" />
            	<img id="veryCode" title="<s:text name="welcome.login_2.veryCode_title"></s:text>" onclick="javascript:refresh(this);" src="${ctx}/imageServlet">
            </td>
          </tr>
	          <tr>
	            <td height="15"></td>
	            <td align="left"></td>
	          </tr>
	          <tr>
	            <td>&nbsp;</td>
	            <td align="left">
	                <input id="SubmitOk" name="SubmitOk" type="submit" class="btr_ok" value="<s:text name="welcome.login_2.submit"></s:text>" />
	                &nbsp;<a href="${ctx}/arbitman/register.do" class="a3"><s:text name="welcome.login_2.register"></s:text></a>
	            </td>
	          </tr>
	          <tr>
	            <td height="15"></td>
	            <td align="left"></td>
	          </tr>
	        </table>
	      </form>
		</td>
      </tr>
    </table>
	</td>
  </tr>
  <tr>
    <td height="500" bgcolor="#0E3F6A">&nbsp;</td>
  </tr>
</table>
</body>
</html>

