jQuery.extend(jQuery.validator.messages, {
  required: "必填項",
  remote: "請修正該項",
  email: "請輸入正確格式的電子郵件",
  url: "請輸入合法的網址",
  date: "請輸入合法的日期",
  dateISO: "請輸入合法的日期 (ISO)",
  number: "請輸入合法的數字",
  digits: "只能輸入整數",
  creditcard: "請輸入合法的信用卡號",
  equalTo: "請再次輸入相同的值",
  accept: "請輸入擁有合法后綴名的字符串",
  maxlength: jQuery.validator.format("請輸入一個 長度最多是 {0}的字符串"),
  minlength: jQuery.validator.format("請輸入一個 長度最少是 {0}的字符串"),
  rangelength: jQuery.validator.format("請輸入一個長度介于 {0}和 {1}之間的字符串"),
  range: jQuery.validator.format("請輸入一個介于 {0}和 {1}之間的值"),
  max: jQuery.validator.format("請輸入一個最大為{0}的值"),
  min: jQuery.validator.format("請輸入一個最小為{0}的值")
});
jQuery.validator.addMethod("mobile", function(value, element) {
    var length = value.length;
    var regax =  /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/
    return this.optional(element) || (length == 11 && regax.test(value));
}, "手機號碼格式錯誤");
jQuery.validator.addMethod("tel", function(value, element) {
    var length = value.length;
    var regax =  /^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$/
    return this.optional(element) || (regax.test(value));
}, "電話格式錯誤");
jQuery.validator.addMethod("postcode", function(value, element) {
    var length = value.length;
    var regax =  /^([1-9]\d{5})$/
    return this.optional(element) || (length == 6 && regax.test(value));
}, "郵編格式錯誤");   
jQuery.validator.addMethod("phone", function(value, element) {
    var length = value.length;
    var regax =  /^(\+?\d{2}-)?((\d{3}-)(\d{8})|(\d{4}-)(\d{7})|(\d{4}-)(\d{8}))$|^(\+?\d{2}-?)?(\d{11})$/
    return this.optional(element) || (length == 6 && regax.test(value));
}, "郵編格式錯誤"); 
jQuery.validator.addMethod("orgcode", function(value, element) {
    var length = value.length;
    var regax =  /^([0-9A-Z]){8}-[0-9|X]$/
    return this.optional(element) || (length == 6 && regax.test(value));
}, "機構代碼格式錯誤");  
jQuery.validator.addMethod("fax", function(value, element) {
	var length = value.length;
	var regax =  /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/
	return this.optional(element) || (length == 6 && regax.test(value));
}, "傳真格式錯誤");