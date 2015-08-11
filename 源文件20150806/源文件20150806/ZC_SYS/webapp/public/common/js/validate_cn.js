jQuery.extend(jQuery.validator.messages, {
  required: "必填项",
  remote: "请修正该项",
  email: "请输入正确格式的电子邮件",
  url: "请输入合法的网址",
  date: "请输入合法的日期",
  dateISO: "请输入合法的日期 (ISO).",
  number: "请输入合法的数字",
  digits: "只能输入整数",
  creditcard: "请输入合法的信用卡号",
  equalTo: "请再次输入相同的值",
  accept: "请输入拥有合法后缀名的字符串",
  maxlength: jQuery.validator.format("请输入一个 长度最多是 {0}的字符串"),
  minlength: jQuery.validator.format("请输入一个 长度最少是 {0}的字符串"),
  rangelength: jQuery.validator.format("请输入 一个长度介于 {0}和 {1}之间的字符串"),
  range: jQuery.validator.format("请输入一个介于 {0}和 {1}之间的值"),
  max: jQuery.validator.format("请输入一个最大为{0}的值"),
  min: jQuery.validator.format("请输入一个最小为{0}的值")
});
jQuery.validator.addMethod("mobile", function(value, element) {
    var length = value.length;
    var regax =  /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/
    return this.optional(element) || (length == 11 && regax.test(value));
}, "手机号码格式错误");
jQuery.validator.addMethod("tel", function(value, element) {
    var length = value.length;
    var regax =  /^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$/
    return this.optional(element) || (regax.test(value));
}, "电话格式错误");
jQuery.validator.addMethod("postcode", function(value, element) {
    var length = value.length;
    var regax =  /^([1-9]\d{5})$/
    return this.optional(element) || (length == 6 && regax.test(value));
}, "邮编格式错误");   
jQuery.validator.addMethod("phone", function(value, element) {
    var length = value.length;
    var regax =  /^(\+?\d{2}-)?((\d{3}-)(\d{8})|(\d{4}-)(\d{7})|(\d{4}-)(\d{8}))$|^(\+?\d{2}-?)?(\d{11})$/
    return this.optional(element) || (length == 6 && regax.test(value));
}, "邮编格式错误"); 
jQuery.validator.addMethod("orgcode", function(value, element) {
    var length = value.length;
    var regax =  /^([0-9A-Z]){8}-[0-9|X]$/
    return this.optional(element) || (length == 6 && regax.test(value));
}, "机构代码格式错误");  
jQuery.validator.addMethod("fax", function(value, element) {
	var length = value.length;
	var regax =  /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/
	return this.optional(element) || (length == 6 && regax.test(value));
}, "传真格式错误");