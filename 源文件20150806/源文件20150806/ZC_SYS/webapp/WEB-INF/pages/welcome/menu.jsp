<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0064)http://www.aakashweb.com/resources/pages/demos/jquery-collapser/ -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>menu_left ${browser}</TITLE>
<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<SCRIPT type=text/javascript src="${ctx}/public/javascripts/menu_left/jquery.js"></SCRIPT>
<SCRIPT type=text/javascript src="${ctx}/public/javascripts/menu_left/jquery.collapser.js"></SCRIPT>
<SCRIPT type=text/javascript>
//展开菜单
function menu_expend() {
    for(i=0; i<$(".menu_li").length; i++)
    {
    	$(".menu_li").eq(i).show();
    }
}
$(document).ready(function(){
	<s:if test="browser!='IE6' && browser!='IE7'">
		$('.menu').collapser({
			target: 'siblings',
			effect: 'slide',
			expandHtml: 'Expand List',
			collapseHtml: 'Collapse List',
			expandClass: 'expArrow',
			collapseClass: 'collArrow',
		});
	</s:if>
	menu_expend();
});
</SCRIPT>
<STYLE>
.boxes {
 width:210px; line-height:26px; font-size:14px;
}
.clearer {
	CLEAR: both
}
.boxes ul{ margin:0px; padding:0px; }
.boxes li{ list-style:none; display:none;}
.boxes ul a{ padding-left:10px;border-top:#303030 solid 1px;}
</STYLE>
</HEAD>
<BODY>
<table width="210px" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td height="2px" bgcolor="#999999"></td>
	</tr>
</table>
<!-- 二级页层展开合并三级效果START -->
<DIV class="menu_head_bj" width="210px" >
		<A  href="#" style="text-decoration:none; font-weight:bold;  color:#FFF; line-height:30px; width:200px; display:block; " onFocus="this.blur()"  >
 			<s:text name="welcome.menu.title"></s:text>
		</A>
</DIV>
<DIV class="boxes"> 
		${menu_html}
</DIV>
</BODY>
</HTML>
