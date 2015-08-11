<script language="javascript">
function checkForm() {
	/*
	 * 验证身份证号码是否有效 var
	 * aCity={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"};
	 * var iSum = 0; var strIDno =
	 * document.getElementById("user_id_card").value; var idCardLength =
	 * strIDno.length;
	 * if(!/^\d{17}(\d|x)$/i.test(strIDno)&&!/^\d{15}$/i.test(strIDno)) {
	 * alert("非法身份证号"); return false; } //在后面的运算中x相当于数字10,所以转换成a strIDno =
	 * strIDno.replace(/x$/i,"a");
	 * 
	 * if(aCity[parseInt(strIDno.substr(0,2))]==null) { alert("非法地区"); return
	 * false; }
	 * 
	 * if (idCardLength==18) {
	 * sBirthday=strIDno.substr(6,4)+"-"+Number(strIDno.substr(10,2))+"-"+Number(strIDno.substr(12,2));
	 * var d = new Date(sBirthday.replace(/-/g,"/"))
	 * if(sBirthday!=(d.getFullYear()+"-"+ (d.getMonth()+1) + "-" +
	 * d.getDate())) { alert("非法生日"); return false; }
	 * 
	 * for(var i = 17;i>=0;i --) iSum += (Math.pow(2,i) % 11) *
	 * parseInt(strIDno.charAt(17 - i),11); if(iSum%11!=1) { alert("非法身份证号");
	 * return false; } } else if (idCardLength==15) { sBirthday = "19" +
	 * strIDno.substr(6,2) + "-" + Number(strIDno.substr(8,2)) + "-" +
	 * Number(strIDno.substr(10,2)); var d = new
	 * Date(sBirthday.replace(/-/g,"/")) var dd = d.getFullYear().toString() +
	 * "-" + (d.getMonth()+1) + "-" + d.getDate(); if(sBirthday != dd){
	 * alert("非法生日"); return false; } }
	 */
	/*
	 * 固定电话 var regu =/(^[1-9][0-9]{8}$)|(^[1-9][0-9]{8}$)/; var re = new
	 * RegExp(regu); if
	 * (!re.test(document.getElementById("user_telephone").value)){
	 * alert("请输入正确的固定电话号码"); return false; } 传真号码 if
	 * (!re.test(document.getElementById("user_fax").value)){
	 * alert("请输入正确的传真号码"); return false; }
	 */
	/*
	 * 校验email合法性 var myReg =
	 * /^([-_A-Za-z0-9\.]+)@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/; if
	 * (!myReg.test(document.getElementById("user_email").value)) {
	 * alert("请输入合法的电子邮件地址"); return false; }
	 */
}
</script>