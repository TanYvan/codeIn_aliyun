<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="wuser.register.title"></s:text></title>
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
			document.getElementById("very").value="";
			var reg=new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/);
			var regex=/^[0-9A-Za-z_]{8,20}$/;
		    var password=document.getElementById("wuser.password").value;
		    if (regex.exec(password) == null || reg.exec(password) == null){
		    	alert('<s:text name="wuser.register.mes_5"></s:text>');
		    	return false;
		    }
		    
			if(document.getElementById("wuser.password").value!=document.getElementById("confirm").value){
		      alert('<s:text name="wuser.register.mes_6"></s:text>');
		      document.getElementById("wuser.password").value="";
		      document.getElementById("confirm").value=="";
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
						alert('<s:text name="wuser.register.mes_7"></s:text>');
						document.getElementById("very").value="0"
					}
				}
			});
			if (document.getElementById("very").value=="1" ){
				
			}else{
				return false;
			}
			
			code = $("#code").val();
			$.ajax( {
				async: false,
				type : "POST",
				url : "${ctx}/wuser/check_3.do",
				data : "code=" + code,
				success : function(data) {
					if (data.replace(/^\s\s*/, '' ).replace(/\s\s*$/, '' )=="1") {
						document.getElementById("very").value=document.getElementById("very").value + "1"
					}else{
						alert('<s:text name="wuser.register.mes_8"></s:text>');
						document.getElementById("very").value=document.getElementById("very").value + "0"
					}
				}
			});
			if (document.getElementById("very").value=="11" ){
				$("#fm").submit();
			}else{
			}
			
		}
		function ccc() {
			var code = $("#code").val();
			$.ajax( {
				type : "POST",
				url : "${ctx}/wuser/check_3.do",
				data : "code=" + code,
				success : function(data) {
					if (data.replace(/^\s\s*/, '' ).replace(/\s\s*$/, '' )=="1") {
						alert('<s:text name="wuser.register.mes_9"></s:text>');
					}else{
						alert('<s:text name="wuser.register.mes_10"></s:text>');
					}
				}
			});
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
                      <td width="20"></td>
                      <td width="30%" class="font2"><s:text name="wuser.register.title"></s:text> &nbsp;<a href="#">（</a><a href="${ctx}/welcome/login_1.do" class="a5"><s:text name="common.return"></s:text></a><a href="#">）</a></td>
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
	        <form id="fm" action="${ctx}/wuser/registerDo.do" method="post" enctype="multipart/form-data" >
				<table width="800" border="0" cellspacing="0" cellpadding="0">
				  <tr>
		            <td align="right" class="font" width="220" height="15" ></td>
		            <td align="left"></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="wuser.myInfo.userName"></s:text>：</td>
		            <td align="left">
		            	<input id="code" name="wuser.code" type="text" size="25" class='{required:true,maxlength:20}'/>
		            	<input id="check_3" name="check_3" type="button" value="<s:text name="wuser.register.check"></s:text>" onclick="ccc();"/>
		            	（<s:text name="wuser.register.mes_3"></s:text>）
		            </td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="wuser.myInfo.password"></s:text>：</td>
		            <td align="left"><input id="wuser.password" name="wuser.password" type="password" size="25" class='{required:true,maxlength:20}'/>（<s:text name="wuser.register.mes_4"></s:text>）</td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="wuser.myInfo.password_confirm"></s:text>：</td>
		            <td align="left"><input id="confirm" type="password" size="25" class='{required:true,maxlength:100}'/></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="wuser.myInfo.nameIdcard"></s:text>：</td>
		            <td align="left"><input id="wuser.nameIdcard" name="wuser.nameIdcard" type="text" size="25" class='{required:true,maxlength:20}'/></td>
		          </tr>
		          <tr>
		            <td align="right"><span style="color: red">*</span><s:text name="wuser.myInfo.idCard"></s:text>：</td>
		            <td align="left"><input id="wuser.idCard" name="wuser.idCard" type="text" size="25" class='{required:true,minlength:18,maxlength:50}'/></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><span style="color: red">*</span><s:text name="wuser.myInfo.telephone"></s:text>：</td>
		            <td align="left"><input id="wuser.telephone" name="wuser.telephone" type="text" size="25" class='{required:true,minlength:11,maxlength:15}'/></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><span style="color: red">*</span>email：</td>
		            <td align="left"><input id="wuser.email" name="wuser.email" type="text" size="25" class='{required:true,maxlength:40,email:true}'/></td>
		          </tr>
		          <tr>
		            <td align="right"><s:text name="wuser.myInfo.identity"></s:text>：</td>
		            <td align="left"><s:select name="wuser.identity"  list="baseDicList['9912']" listKey="dataVal" listValue="dataText"  value="wuser.identity"></s:select></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><s:text name="wuser.myInfo.postCode"></s:text>：</td>
		            <td align="left"><input id="wuser.postCode" name="wuser.postCode" type="text" size="60" class='{maxlength:6}'/></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><s:text name="wuser.myInfo.company"></s:text>：</td>
		            <td align="left"><input id="wuser.company" name="wuser.company" type="text" size="60" class='{maxlength:100}'/></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><s:text name="wuser.myInfo.addr"></s:text>：</td>
		            <td align="left"><input ud="wuser.addr" name="wuser.addr" type="text" size="60" class='{maxlength:100}'/></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><s:text name="wuser.myInfo.fax"></s:text>：</td>
		            <td align="left"><input id="wuser.fax" name="wuser.fax" type="text" size="60" class='{maxlength:15}'/></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><s:text name="wuser.myInfo.otherContact"></s:text>：</td>
		            <td align="left"><input id="wuser.otherContact" name="wuser.otherContact" type="text" size="60" class='{maxlength:100}'/></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><s:text name="wuser.myInfo.remark"></s:text>：</td>
		            <td align="left"><textarea id="wuser.remark" name="wuser.remark" rows="5" cols="60"></textarea></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><s:text name="wuser.myInfo.attCategory"></s:text>：</td>
		            <td align="left"><s:select list="baseDicList['9102']" listKey="dataVal" listValue="dataText" name="attCategory" /></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><s:text name="wuser.myInfo.upload"></s:text>：</td>
		            <td align="left"><input name="upload" type="file" /></td>
		          </tr>
		          <tr>
		            <td align="right" class="font" width="220"><s:text name="wuser.register.mes_1"></s:text>：</td>
		            <td align="left">
		            	<input type="hidden" id="very" name="very" />
		            	<input type="text" id="veryCode" name="veryCode" />
		            	<img id="veryCode" title="<s:text name="wuser.register.mes_2"></s:text>" onclick="javascript:refresh(this);" src="${ctx}/imageServlet">
		            </td>
		          </tr>
		          <tr>
		            <td align="right"></td>
		            <td align="left"><input name="SubmitOk" type="button" onclick="check();" class="btr_ok" value="<s:text name="common.submit"></s:text>" /></td>
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
