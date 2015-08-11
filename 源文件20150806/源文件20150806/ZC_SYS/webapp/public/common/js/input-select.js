/** 
MODIFY BEGIN HAOHAIYANG,ADD,      
PICC201304-IMS-010,新增一个可编辑下拉框控件，支持模糊带出功能
*/
var whichText;
/**
 * 模糊带出的下拉框中选择某个选项后给输入框赋值并关闭下拉框
 * @param obj 下拉框对象
 * @param selName 下拉框名称或id
 * @author haohaiyang
 * */
function selectStation(obj,selName) {
   var objSelStation = obj;
        if (obj.selectedIndex != -1) {
            var stationName = obj.options[obj.selectedIndex].text;
            whichText.value = stationName;
        }
        showDivStation(this, false,selName)//鼠标单击某一选项选定后关闭下拉框
    }
	/**
	 * 带回调函数的selectStation方法
	 * 模糊带出的下拉框中选择某个选项后给输入框赋值并关闭下拉框
 	 * @param obj 下拉框对象
 	 * @param selName 下拉框名称或id
 	 * @author haohaiyang
	 * */
    function selectStationNew(obj,selName,callBack) {
   		var objSelStation = obj;
        if (obj.selectedIndex != -1) {
            var stationName = obj.options[obj.selectedIndex].text;
            whichText.value = stationName;
        }
        showDivStation(this, false,selName)//鼠标单击某一选项选定后关闭下拉框
         callBack;
    }
    
//响应text的事件
var pageD =0, pageU;
function similarFind(txtObj,seledName) {
        var curStationName = txtObj.value;
        var objSelStation = eval("document.fm."+seledName);//根据实际的form name修改
	    var stationLength = objSelStation.options.length;
		pageU = pageD;
		//匹配用text中的数据跟下拉框中的数据
//	    for (var i=0; i<stationLength; i++) {
//	        var stationName = objSelStation.options[i].text;
//	        var re = new RegExp("^" + curStationName);
//	   if (stationName.match(re)) {
//	            if (i<stationLength - 10) {
//	                objSelStation.selectedIndex = i + 10;
//	            }
//	            objSelStation.selectedIndex = i;
//			   pageD = i;
//			   pageU = i;
//	            break;
//	        }
//	    }
	//    alert(event.keyCode);
		//响应下移键
	   if(event != null && event.keyCode==40) {
	     pageD++;
	     if(pageD==objSelStation.options.length) {
	     	pageD=0;
	     }
	//     txtObj.value=objSelStation.options[pageD].text ;
	     objSelStation.selectedIndex = pageD;
	   }
	//响应上移键
	   if(event != null && event.keyCode==38) {
	     --pageU;
	     if(pageU<0) pageU=objSelStation.options.length-1;
	//     txtObj.value = objSelStation.options[pageU].text;
	     objSelStation.selectedIndex = pageU;
	    }
}
//下拉框显示位置
/**
 * @param obj 需要模糊带出查询结果的输入框对象
 * @param b 布尔类型数据，如果为true则展示下拉框，false则不展示下拉框
 * @param selName 下拉框的name或者id
 * */
function showDivStation(obj, b,selName) {
	if((obj.type == "text" || obj.type == "textarea") && (obj.value == null || obj.value == "")){
		return;
	}
    var divStation = eval("document.fm."+selName);//根据实际的form name修改
    if (b) {
        whichText = obj;
        divStation.style.top = 20;
        divStation.style.left = 0;
        divStation.style.display="block";
        similarFind(obj,selName);
    } else {
        divStation.style.display="none";
    }
}
/**
 * 展示模糊带出的下拉框
 * @param obj 需要模糊带出查询结果的输入框对象
 * @param b 布尔类型数据，如果为true则展示下拉框，false则不展示下拉框
 * @param selName 下拉框的name或者id
 * @param codeType 代码类型，用来后台查询时判断走哪个逻辑
 * @param codeCondition 暂时无意义，备用字段
 * @author haohaiyang
 * */
function showDivStationNew(obj, b,selName,codeType,codeCondition){
	var key = obj.value;
	if(key != null && key != ""){
	url="${ctx}/utiICompareGrade/queryCodeList.do?codeType="
		    	 	+ escape(codeType)+"&codeCondition="+escape(key);
		var handleSuccess = function(o){
			var result = YAHOO.lang.JSON.parse(o.responseText).data;
			DWRUtil.removeAllOptions(selName);
			/** 
			    MODIFY BEGIN GUOYONGGANG,UPDATE,      
			    PICC201304-IMS-010,功能改造，下拉框不增加页面录入的字段
			*/
			/**
               var option=document.createElement("option");
			   option.text = key;
			   document.getElementById(selName).add(option);
			**/
			var len = 0;
			if(result != null){
				len = result.length;
			}
			if(len == 0){
//			    document.getElementById('dutyNameAc').style.display = "none";
			    return;
			}
			for(var i=0;i<len;i++){ 
		        var option=document.createElement("option");
				option.text = result[i].parentValue;
				option.value = result[i].parentValue;
				document.getElementById(selName).add(option);		
			}
//			document.getElementById('dutyNameAc').style.display = "";
			if((obj.type == "text" || obj.type == "textarea") && (obj.value == null || obj.value == "")){
					return;
			}
		    var divStation = eval("document.fm."+selName);//根据实际的form name修改
		    if (b) {
		        whichText = obj;
		        divStation.style.top = 20;
		        divStation.style.left = 0;
		        divStation.style.display="block";
		        similarFind(obj,selName);
		    } else {
		        divStation.style.display="none";
		    }
		};
		var handleFailure = function(o){
			if(o.responseText !== undefined){
				var msg = i18n.errors.deletefail+"!\n"+ o.status +" " + o.statusText;
				alert("操作失败！");
			}
		};
		var callback =
		{
		  success:handleSuccess,
		  failure:handleFailure
		};
		var req = YAHOO.util.Connect.asyncRequest('POST', url, callback, "");
	}else{
		//需求编号：PICC201303-IMS-003 模糊带出时，如果清空输入框的数据则自动隐藏带出的下拉框
		//MODIFY BEGIN HAOHAIYANG,UPD（新增是ADD,修改是UPD,删除是DEL）,2013-05-20
		var divStation = eval("document.fm."+selName);
		divStation.style.display="none";
	}
}
/**
 * 联动输入框如果名称输入框清空的话则代码输入框也要清空
 * @param fieldName 名称输入框
 * @param filedCode 代码输入框
 * @author haohaiyang
 * */
function clearCorrelationData(fieldName,filedCode){
	var name =  document.getElementById(fieldName);
	if(name.value == null || name.value == ""){
		document.getElementById(filedCode).value = "";
	}
}