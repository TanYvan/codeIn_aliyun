<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="welcome.toChangePassword.title"></s:text></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${ctx}/public/javascripts/jQuery.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/jquery.metadata.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/js/${validateJs}" charset="utf-8"></script>
		<script type="text/javascript">	$().ready(function() { $("#fm").validate();	});</script>
		<script>
		function refresh(obj) {
			obj.src = "${ctx}/imageServlet?" + Math.random();
		}
		function check() {
			var reg=new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/);
			var regex=/^[0-9A-Za-z_]{8,20}$/;
		    var password=document.getElementById("password").value;
		    if (regex.exec(password) == null || reg.exec(password) == null){
		    	alert('<s:text name="welcome.toChangePassword.mes_2"></s:text>');
		    }else{
				if (document.getElementById("confirm").value==document.getElementById("password").value){
					$("#fm").submit();
				}else{
					alert('<s:text name="welcome.toChangePassword.mes_3"></s:text>');
				}
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
        <td align="center"><table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td  align="center" valign="top" class="bj_tu"><table width="99%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="200" height="10"></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td width="200" align="right"><table width="200" border="0" cellpadding="0" cellspacing="0" >
                    <tr>
                      <td align="center"></td>
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
                      <td width="30%"><h3>&nbsp;</h3></td>
                      <td width="15"></td>
                      <td width="40%" class="font2"><s:text name="welcome.toChangePassword.title"></s:text></td>
                      <td width="15">&nbsp;</td>
                      <td width="30%">&nbsp; <a href="#" class="a2"></a></td>
                      <td width="20">&nbsp;</td>
                    </tr>
                </table></td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table>
		</td>
      </tr>
      <tr>
        <td height="5"></td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF">
	        <form id="fm" action="${ctx}/welcome/changePassword.do"  method="post" >
				<table width="560" border="0" cellspacing="0" cellpadding="0">
				  <tr>
		            <td align="right" class="font" width="150" height="15" ></td>
		            <td align="left"></td>
		          </tr>
		          <tr>
					<td align="right" class="font">
						<s:text name="welcome.toChangePassword.user_code"></s:text> :
					</td>
					<td align="left">
						${userCode}
					</td>
				  </tr>
				  <tr>
					<td align="right" class="font"><s:text name="welcome.toChangePassword.user_name"></s:text> :
					</td>
					<td align="left">
						${userName}
					</td>
				  </tr>
		          <tr>
		            <td align="right" class="font"><s:text name="welcome.toChangePassword.password_old"></s:text>：</td>
		            <td align="left"><input id="old_password" name="old_password" type="password" size="25" class='{required:true}'/></td>
		          </tr>
		          <tr>
		            <td align="right" class="font"><s:text name="welcome.toChangePassword.password_new"></s:text>：</td>
		            <td align="left"><input id="password" name="password" type="password" size="25" class='{required:true}'/>(<s:text name="welcome.toChangePassword.mes_1"></s:text>)</td>
		          </tr>
		          <tr>
		            <td align="right" class="font"><s:text name="welcome.toChangePassword.password_confirm"></s:text>：</td>
		            <td align="left"><input id="confirm" type="password" size="25" class='{required:true}'/></td>
		          </tr>
		          <tr>
		            <td align="right"></td>
		            <td align="left"><input id="SubmitOk" name="SubmitOk" type="button" onclick="check();" class="btr_ok" value="<s:text name="welcome.toChangePassword.submit"></s:text>" /></td>
		          </tr>  
		        </table>
	        </form>
		</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
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
