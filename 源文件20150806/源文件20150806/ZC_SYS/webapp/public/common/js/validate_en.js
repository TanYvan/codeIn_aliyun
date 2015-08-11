jQuery.extend(jQuery.validator.messages, {
  required: "Required",
  remote: "Please correct these",
  email: "Please enter the correct email format",
  url: "Please enter the correct url",
  date: "Please enter the correct date",
  dateISO: "Please enter  the correct date(ISO)",
  number: "Please enter the correct digital",
  digits: "Please input integer",
  creditcard: "Please enter the correct credit card number",
  equalTo: "Please enter the same value again",
  accept: "Please enter a string with a correct suffix",
  maxlength: jQuery.validator.format("The string length must less then {0} "),
  minlength: jQuery.validator.format("The string length must more thens {0} "),
  rangelength: jQuery.validator.format("The string length must between {0} and {1} string"),
  range: jQuery.validator.format("Please enter a number between {0} and {1}"),
  max: jQuery.validator.format("please enter a number less than {0}"),
  min: jQuery.validator.format("please enter a number more than  {0}")
});
jQuery.validator.addMethod("mobile", function(value, element) {
    var length = value.length;
    var regax =  /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/
    return this.optional(element) || (length == 11 && regax.test(value));
}, "Mobile phone number is not in a correct format");
jQuery.validator.addMethod("tel", function(value, element) {
    var length = value.length;
    var regax =  /^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$/
    return this.optional(element) || (regax.test(value));
}, "The phone number is not in a correct format");
jQuery.validator.addMethod("postcode", function(value, element) {
    var length = value.length;
    var regax =  /^([1-9]\d{5})$/
    return this.optional(element) || (length == 6 && regax.test(value));
}, "Zip number is not in a correct format");   
jQuery.validator.addMethod("phone", function(value, element) {
    var length = value.length;
    var regax =  /^(\+?\d{2}-)?((\d{3}-)(\d{8})|(\d{4}-)(\d{7})|(\d{4}-)(\d{8}))$|^(\+?\d{2}-?)?(\d{11})$/
    return this.optional(element) || (length == 6 && regax.test(value));
}, "Zip number is not in a correct format"); 
jQuery.validator.addMethod("orgcode", function(value, element) {
    var length = value.length;
    var regax =  /^([0-9A-Z]){8}-[0-9|X]$/
    return this.optional(element) || (length == 6 && regax.test(value));
}, "Organization code is not in a correct format");  
jQuery.validator.addMethod("fax", function(value, element) {
	var length = value.length;
	var regax =  /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/
	return this.optional(element) || (length == 6 && regax.test(value));
}, "Fax number  is not in a correct format");