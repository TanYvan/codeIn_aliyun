<%@ page contentType="text/html; charset=UTF-8"%>
<script language="javascript">
// 从服务器端传过来的，以前配置的允许机构代码
	var oldComCodes = '${oldComCodes}';
	var arrOldComCodes = oldComCodes.split(',');
	function setNotShowCode(notSelectComCodes,strComCodes){
		var cancelComCodes = '';  // 原来勾选，现在取消的comCode
		var temp = '';
		// 取后台传过来的comCode的和未勾选的comCode的交集，就是原来勾选，现在取消的comCode
		for(var k=0;k<arrOldComCodes.length;k++){
			temp = arrOldComCodes[k];
			if(notSelectComCodes.indexOf(temp) > 0){
				cancelComCodes = cancelComCodes + ',';
				cancelComCodes = cancelComCodes + temp; 
			}
		}
		var notShowComCodes = '';  // 原来勾选，现在没有在页面上展示但需要保存的comCode
		// 取后台传过来的comCode减去已经勾选的comCode，再减去原来勾选现在去掉的comCode,就是原来勾选但现在没有展示的comCode
		for(var m=0;m<arrOldComCodes.length;m++){
			temp = arrOldComCodes[m];
			if(strComCodes.indexOf(temp) < 0){
				if(cancelComCodes.indexOf(temp) < 0){
					notShowComCodes = notShowComCodes + ',';
					notShowComCodes = notShowComCodes + temp;
				}
			}
		}
		if(document.getElementById('notShowComCodes') != null){
			document.getElementById('notShowComCodes').value = notShowComCodes;
		}
	}
</script>