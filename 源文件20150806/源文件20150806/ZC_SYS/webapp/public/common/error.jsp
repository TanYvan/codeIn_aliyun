<%@ page contentType="text/html;charset=utf-8" isErrorPage="true"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>

<%
	String isOpen = (String)request.getAttribute("isOpen");
	String title = ""; //信息
	String content = ""; //详细信息
	StringWriter stringWriter = new StringWriter();
	String uri = (String)request.getAttribute("javax.servlet.forward.request_uri");
	String flag = null;
	
	if(exception==null){
		try{
			exception = (Throwable)request.getAttribute("javax.servlet.error.exception");
			Object obj = request.getAttribute("struts.valueStack");
			if(obj!=null){
				title = "服务器异常或者功能暂不可用,请联系管理员";
				String msg = (String)request.getAttribute("javax.servlet.error.message");
				java.util.Date date = Calendar.getInstance().getTime();
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	}
	
	if(exception!=null){
		exception.printStackTrace();
		Throwable throwable = null;
		if(exception instanceof ServletException){
			throwable = ((ServletException)exception).getRootCause();
		}else {
			throwable = exception;
		}
	//	ApplicationContext context=WebApplicationContextUtils.getWebApplicationContext(application); 
		title = throwable.getMessage();
		PrintWriter p = new PrintWriter(stringWriter);
		throwable.printStackTrace(p);
		Object errorMsg = request.getAttribute("javax.servlet.error.exception");
		java.util.Date date = Calendar.getInstance().getTime();
		if((stringWriter.toString()).indexOf("ORA")>0){
			String[] errors = (stringWriter.toString()).split("ORA-");
			String[] ers = errors[1].split("at");
		}else{
		}

		if(title.equalsIgnoreCase("员工代码或密码不正确!")||title.equalsIgnoreCase("该账户已注销,无法登陆")||title.equalsIgnoreCase("该账户已过期,无法登陆")){
			
		}else{
			
		}
	}
%>
<%@ include file="meta_css.jsp"%>
<%@ include file="meta_js.jsp"%>

<html>
<head>
<title>Error Page</title>
<style>
	td{font-size:9pt;}
td.formtitle{font-size:9pt;
	color: #01465a; 
	font-weight: bold;
	text-align:left;
	text-indent: 20px;
	height:30px;
	padding-top: 5px;
	margin-top: 10px;
	background-color:#ffffff;
	background:url("${ctx}/pages/image/bgtitle_n.gif");
	background-repeat: no-repeat;
	background-position: 5px center;
	border-bottom-width: 2px;
	border-bottom-style: solid;
	border-bottom-color: #6ec5d5;}
.button_ty,.button_ty_over{color:#000;border:1px solid #94D8E4;padding:1px 5px 1px 5px;height:20px;}
.button_ty{background: #fff url(${ctx}/pages/image/btbg_blue.gif) repeat-x }
.button_ty_over{background: #fff url(${ctx}/pages/image/btbg_orange.gif) repeat-x }
</style>
<%@ include file="meta_js.jsp"%>
<script language="javascript" src="${ctx}/common/dwr/engine.js"></script>
<script language="javascript" src="${ctx}/common/dwr/util.js"></script>
<script type='text/javascript' src='/ims/dwr/interface/Ims.js'></script>
<script type="text/javascript">
	function shContent() {
		if (content.style.display == '')
			content.style.display = 'none';
		else
			content.style.display = '';
	}
</script>
</head>
<body>

<table class="common" align="center">
	<tr>
		<td class="formtitle" colspan="2" >系统提示</td>
	</tr>
	<tr>
		<td align='center'><img src='${pageContext.request.contextPath}/pages/image/failure.gif'
			style='cursor: hand' alt='详细信息' onclick="shContent()"></td>
		<td class="common"><%=title%></td>
	</tr>
</table>
<% if("1".equals(isOpen)){ %>
<div align="center"><input type="button" value="关 闭"  class="button_ty" onclick="window.close()"></div>
<%}else { %>
<div align="center"><input type="button" value="返 回"   class="button_ty" onclick="window.history.back(-1)"></div>
<%} %>
<div id="content" style="display: none"><pre><%=stringWriter%></pre>
<!--<div align="center"><input type="button" value="确定" align="center" onclick="window.history.back(-1)" ></div>-->
<table border="1" align="center" >
	<tr>
		<th>request.getAttributeName</th>
		<th>request.getAttribute</th>
	</tr>
	<%
		Enumeration enums =  request.getAttributeNames();
		while(enums.hasMoreElements()){
			String key = (String)enums.nextElement();
			out.println( "<tr><td>");
			out.println( key );
			out.println( " </td><td>");
			out.println( request.getAttribute(key) );
			out.println( " </td></tr>");
		}
%>

</table>

</div>
</body>
</html>