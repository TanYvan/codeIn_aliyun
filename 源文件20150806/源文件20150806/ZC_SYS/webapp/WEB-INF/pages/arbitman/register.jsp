<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="arbitman.register.title"></s:text></title>
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
		    var password=document.getElementById("arbitman.password").value;
		    if (regex.exec(password) == null || reg.exec(password) == null){
		    	alert('<s:text name="arbitman.register.mes_5"></s:text>');
		    	return false;
		    }
		    
			if(document.getElementById("arbitman.password").value!=document.getElementById("confirm").value){
		      alert('<s:text name="arbitman.register.mes_6"></s:text>');
		      document.getElementById("arbitman.password").value="";
		      document.getElementById("confirm").value="";
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
						alert('<s:text name="arbitman.register.mes_7"></s:text>');
						document.getElementById("very").value="0"
					}
				}
			});
			if (document.getElementById("very").value=="1"){
				$("#fm").submit();
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
                <td width="200" align="right"><table width="200" border="0" cellpadding="0" cellspacing="0" class="top_Loginbar">
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
                      <td width="20"></td>
                      <td width="30%" class="font2"><s:text name="arbitman.register.title"></s:text>&nbsp;<a href="#">（</a><a href="${ctx}/welcome/login_2.do" class="a5"><s:text name="common.return"></s:text></a><a href="#">）</a></td>
                      <td width="20">&nbsp;</td>
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
        <form id="fm" action="${ctx}/arbitman/registerDo.do" method="post" >
			<table width="800" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td width="220" height="15"></td>
	            <td align="left"></td>
	          </tr>
	          <tr>
	            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="arbitman.register.name"></s:text>：</td>
	            <td align="left"><input id="arbitman.name" name="arbitman.name" type="text" size="25" class='{required:true}'/></td>
	          </tr>
	          <tr>
	            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="arbitman.register.password"></s:text>：</td>
	            <td align="left"><input id="arbitman.password" name="arbitman.password" type="password" size="25" class='{required:true}'/>（<s:text name="arbitman.register.mes_4"></s:text>）</td>
	          </tr>
	          <tr>
	            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="arbitman.register.password_confirm"></s:text>：</td>
	            <td align="left"><input id="confirm" type="password" size="25" class='{required:true}'/>
	              &nbsp;</td>
	          </tr>
	          <tr>
	            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="arbitman.id_card"></s:text>：</td>
	            <td width="481" align="left"><input id="arbitman.idCard" name="arbitman.idCard" type="text" size="25" class='{required:true,minlength:18,maxlength:50}'/></td>
	          </tr>
	          <tr>
	            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="arbitman.mobiletel"></s:text>：</td>
	            <td align="left"><input id="arbitman.mobiletel" name="arbitman.mobiletel" type="text" size="25" class='{required:true,minlength:11,maxlength:15}'/></td>
	          </tr>
	          <tr>
	            <td align="right" class="font" width="220"><span style="color: red">*</span>email：</td>
	            <td align="left"><input id="arbitman.email" name="arbitman.email" type="text" size="60" class='{required:true,maxlength:40,email:true}'/></td>
	          </tr>
	          <tr>
	            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="arbitman.addr"></s:text>：</td>
	            <td align="left"><input id="arbitman.addr" name="arbitman.addr" type="text" size="60" class='{required:true}'/></td>
	          </tr>
	          <tr>
	            <td align="right" class="font" width="220"><s:text name="arbitman.register.mes_1"></s:text>：</td>
	            <td align="left">
	            	<input type="hidden" id="very" name="very" />
	            	<input type="text" id="veryCode" name="veryCode" />
	            	<img id="veryCode" title="<s:text name="arbitman.register.mes_2"></s:text>" onclick="javascript:refresh(this);" src="${ctx}/imageServlet">
	            </td>
	          </tr>
	          <tr>
	            <td height="35" align="right"></td>
	            <td align="left"><input name="SubmitOk" type="button" onclick="check();"  class="btr_ok" value="确 定" /></td>
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
