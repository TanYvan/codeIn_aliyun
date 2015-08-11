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
<title>管理员登录页</title>
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
			      alert("请输入用户名");
			      return false;
			    }
			    if(document.getElementById("password").value==""){
			      alert("请输入密码");
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
							alert("校验码错误");
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
        <form id="fm" method="post" action="${ctx}/welcome/loginDo.do" onsubmit="return check();">
			<table width="500" border="0" cellspacing="0" cellpadding="0">
		      <tr>
	            <td width="72">&nbsp;</td>
	            <td width="428" align="left">
	            	<div class="message">${error}</div>
	            </td>
	          </tr>
	          <tr>
	            <td width="72">&nbsp;</td>
	            <td width="428" align="left">&nbsp;</td>
	          </tr>
	          <tr>
	            <td class="font">用户名：</td>
	            <td align="left">
	                <input type="text" name="code" id="code" size="25" />                
	                <span class="font1"></span> </td>
	          </tr>
	          <tr>
	            <td height="15"></td>
	            <td align="left"></td>
	          </tr>
	          <tr>
	            <td class="font">密码：</td>
	            <td align="left"><input type="password" name="password" size="25" /></td>
	          </tr>
	          <tr>
	            <td height="15"></td>
	            <td align="left"></td>
	          </tr>
	           <tr>
            <td height="10" align="left">输入验证码：</td>
            <td align="left">
            	<input type="hidden" id="very" name="very" />
            	<input type="text" id="veryCode" name="veryCode" />
            	<img id="veryCode" title="点击更换" onclick="javascript:refresh(this);" src="${ctx}/imageServlet">
            </td>
          </tr>
	          <tr>
	            <td height="15"></td>
	            <td align="left"></td>
	          </tr>
	          <td>&nbsp;</td>
	            <td align="left">
	                <input type="image" name="imageField4" src="../public/images/btn_login.jpg" />
	            </td>
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

