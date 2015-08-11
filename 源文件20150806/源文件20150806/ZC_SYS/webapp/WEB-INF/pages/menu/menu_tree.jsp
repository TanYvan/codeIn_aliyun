<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>目录树</title>
		<link rel="stylesheet" type="text/css" href="${ctx}/public/common/easyui/themes/default/easyui.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/public/common/easyui/themes/icon.css" />
		<script type="text/javascript" src="${ctx}/public/common/easyui/jquery-1.8.0.min.js"></script>
		<script type="text/javascript" src="${ctx}/public/common/easyui/jquery.easyui.min.js"></script>
		<script type="text/javascript">
function loadMenu() {
	var roleCode = $('#roleCode').val();
	$.ajax( {
		url : '${ctx}/menu/makeTree.do',
		type : 'POST',
		data : "roleCode="+roleCode,
		dataType : 'json',
		timeout : 10000,
		error : function() {
			alert('Error!!');
		},
		success : function(result) {
		    //alert(result);
			var strjson = eval('(' + result + ')');
			$('#menu').tree( {
				checkbox : false,
				data : strjson
			});
		}
	});
}

function t1_clicked(url){
  if (url!=""){
  	document.form1.action="${ctx}" + url;
  	document.form1.submit();
  }
}

function t2_clicked(id){
  	document.form1.action="${ctx}/menu/menuEdit.do?id=" + id + "&roleCode=" + $('#roleCode').val();
  	document.form1.submit();
}

window.onload = loadMenu;
</script>
	</head>
	<body>
		<div align="left">
			角色：
			<br />
			<ul id="menu" class="easyui-tree"
				data-options="url:'',checkbox:false,
			onClick: function(node){t2_clicked(node.id);
			}"></ul>
		</div>
		<input type="hidden" id="roleCode" name="roleCode"
			value="<s:property value='roleCode'/>" />
		<form id="form1" name="form1"  action="${ctx}/menu/findMenuList.do" target="menu_edit" method="post">
		</form> 
	</body>
</html>