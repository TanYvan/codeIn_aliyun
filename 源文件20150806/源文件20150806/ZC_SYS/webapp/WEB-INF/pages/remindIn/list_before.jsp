<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><s:text name="remindIn.list_before.title"></s:text></title>
		<link href="${ctx}/public/stylesheets/css.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/public/stylesheets/tab.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript">
          function checkall() {
            var a='';
            if (document.getElementById("cheall").value=='t' )
            {
              document.getElementById("cheall").value='f';
            }
            else
            {
              a='true';
              document.getElementById("cheall").value='t';
            }
            var chec = document.getElementsByName("che");
            for(i=0; i<chec.length; i++)
            { 
              chec[i].checked = a;
            }
         }
        
        function getcondi()
        {
            var chec = document.getElementsByName("che");
            var a='';
            for(i=0; i<chec.length; i++)
            {
                if (chec[i].checked == true)
                    a=a+chec[i].value+',';
            }
            aa=a.substr(0, a.length -1 )
            var cc = document.getElementById("confirm_s");
            cc.value=aa;
       }
    </script>
	</head>
	<body>
		<div align="center">
			<table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_title" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<span class="list_title_span"><s:text name="remindIn.list_before.title"></s:text></span>
					</td>
				</tr>
				<tr>
					<td class="list_title_hr"></td>
				</tr>
			</table>
			<div class="tabs" align="center">
		      <ul>
		        <li><a href="${ctx}/remindIn/findRemindBeforeInList.do" class="selected"><span><s:text name="remindIn.list_before.before"></s:text></span></a></li>
				<li><a href="${ctx}/remindIn/findRemindAfterInList.do" ><span><s:text name="remindIn.list_before.after"></s:text></span></a></li>
		      </ul>
		    </div>
		    <table class="list_blank_line" cellspacing="0" cellpadding="0">
				<tr>
					<td></td>
				</tr>
			</table>
			<table class="list_search_table" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
					</td>
				</tr>
			</table>
			<table class="list_toolbar" cellspacing="0" cellpadding="0">
				<tr>
					<td align="left">
						<form
									action="${ctx}/remindIn/confirm.do" onsubmit='getcondi()'
									method="post">
									<input type="hidden" id="confirm_s" name="confirm_s"  value="" />
									<input type="submit" name="SubmitEdit" value="<s:text name="remindIn.list_before.check"></s:text>" />
						</form>
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
			<table class="list_data_table" cellpadding="0" cellspacing="1">
				<thead>
					<tr>
						<th>
							<input type='checkbox' id='cheall' name='cheall' value='f' onclick = "checkall()"  />
						</th>
						<th>
							<s:text name="remindIn.list_before.content"></s:text>
						</th>
						<th>
							<s:text name="remindIn.list_before.remind_time"></s:text>
						</th>
					</tr>
				</thead>
				<tbody>
					<%
						int i_tr = 0;
					%>
					<s:iterator value="remindInList" status="case">
						<%
							i_tr++;
						%>
						<tr class='<%=(i_tr % 2 == 0) ? "tr_even" : "tr_odd"%>'>
							<td align='center'>
								<input type='checkbox' id='che' name='che' value=<s:property value="id" /> />
							</td>
							<td>
								<s:property value="content" />
							</td>
							<td>
								<s:property value="remind_time" />
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			${page_bar}
		</div>
	</body>
</html>