<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="roleCode" value="${roleCode}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>快捷菜单维护</title>
		<link href="/stylesheets/style.css" rel="stylesheet" type="text/css">
		<SCRIPT language='JavaScript'>
      function checkall() {
        var a='';
        if (document.getElementsByName("cheall").value=='t')
        {
          document.getElementsByName("cheall").value='f';
        }
        else
        {
          a='true';
          document.getElementsByName("cheall").value='t';
        }
        var chec = document.getElementsByName("che");
        for(i=0; i<chec.length; i++)
        {
          chec[i].checked = a;
        }
      }
      function getcondi(){
        var chec = document.getElementsByName("che");
        var a='';
        for(i=0; i<chec.length; i++)
        {
          if (chec[i].checked == true)
            a=a+chec[i].value+',';

        }
        aa=a.substr(0, a.length -1 )
        var c = document.getElementById("condi_dissent");
        c.value="("+aa+")";
        var d= document.getElementById("condi_agree");
        d.value="("+aa+")";
        //alert(c.value);
      }
      function aa(){
        //var b =document.getElementById("institute");
        a=window.showModalDialog('/reviewed_c/institute_select');
        if (a!=null)
          document.getElementById("institute").value=a
      }
    </SCRIPT>
	</head>
	<body>
		<div class="title">
			<span class="cBlue">快捷菜单维护</span> 角色:
		</div>
		<br>
		<a href="${ctx}/quickmenu/back.do">返回</a>
		<a href="${ctx}/quickmenu/toInsertMenu.do?roleCode=${roleCode}">创建</a>
		<form action="${ctx}/quickmenu/findMenuList.do" method="post">
			<input type="hidden" name="roleCode" value="${roleCode}" />
			<s:select name="searchType" list="#{'code':'编码','name':'名称'}"
				listKey="key" listValue="value">
			</s:select>
			<s:select name="condition" list="#{'and':'等于','or':'包含'}"
				listKey="key" listValue="value">
			</s:select>
			<input type="text" name="searchValue" />
			<input type="submit" value="查询" />
		</form>
		<div style="color: red"></div>
		<table cellspacing="1" class="adminlist">
			<thead>
				<tr>
					<th nowrap="nowrap">
						快捷菜单编码
					</th>
					<th nowrap="nowrap">
						快捷菜单名称
					</th>
					<th nowrap="nowrap">
						对应的树形菜单名称
					</th>
					<th nowrap="nowrap">
						页面url
					</th>
					<th nowrap="nowrap">
						修改
					</th>
					<th nowrap="nowrap">
						删除
					</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="menuList" status="menu">
					<tr class="row">
						<td>
							<s:property value="code" />
						</td>
						<td>
							<s:property value="name" />
						</td>
						<td>
							<s:property value="menuName" />
						</td>
						<td>
							<s:property value="url" />
						</td>
						<td>
							<a
								href="${ctx}/quickmenu/toUpdateMenu.do?id=${id}&roleCode=${roleCode}">修改</a>
						</td>

						<td>
							<a
								href="${ctx}/quickmenu/deleteMenu.do?id=${id}&roleCode=${roleCode}">删除</a>
						</td>
				</s:iterator>
			</tbody>
		</table>
		<ul>
			<li>
				<s:if test="pageNo>1">
					<a href='${ctx}/quickmenu/findMenuList.do?pageNo=1'>首页</a>
				</s:if>
				<s:if test="pageNo>1">
					<a href='${ctx}/quickmenu/findMenuList.do?pageNo=${pageNo-1}'>
						上一页</a>
				</s:if>
				<s:if test="pageNo<pageCount">
					<a href='${ctx}/quickmenu/findMenuList.do?pageNo=${pageNo+1}'>下一页</a>
				</s:if>
				<s:if test="pageNo>1">
					<a href='${ctx}/quickmenu/findMenuList.do?pageNo=${pageCount}'>末页</a>
				</s:if>
			</li>
			<li>
				<span class="pageinfo">第<strong>${pageNo} </strong>页</span>
				<span class="pageinfo">共<strong>${pageCount} </strong>页</span>
			</li>
		</ul>
	</body>
</html>