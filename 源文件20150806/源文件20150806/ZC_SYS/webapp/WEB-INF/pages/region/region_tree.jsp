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
				$.ajax( {
					url : '${ctx}/region/makeTree.do',
					type : 'POST',
					data : "",
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
			
			function t1_clicked(code){
			  if (code!=""){
			   window.returnValue= code;
			   window.close();
			  }
			}
			
			window.onload = loadMenu;	
		</script>
	</head>
	<body>
		<div align="left">
			地区：
			<br />
			<ul id="menu" class="easyui-tree"
				data-options="url:'',checkbox:false,
			onClick: function(node){t1_clicked(node.id);
			}"></ul>
		</div>
	</body>
</html>