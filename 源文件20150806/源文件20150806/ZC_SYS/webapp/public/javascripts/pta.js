/**
 * @Author Lion Shooray 2006-12-20 iTruschina. Co.,Ltd
 * @Version 1.0
 */

//global const 
var INPUT_BASE64 = 0x1;
var INPUT_HEX = 0x2;
var OUTPUT_BASE64 = 0x4;
var OUTPUT_HEX = 0x8;

/**
 * JSDateAdd Javascript 计算给定日期+天数
 * @param theDate: 给定日期，Date类型
 * @param days: 整型
 * @return 计算结果，Date类型
 */
function JSDateAdd(theDate, days) {
	var dateValue = theDate.valueOf()
	dateValue += days * 1000 * 60 * 60 * 24;
	var newDate = new Date(dateValue);
	return newDate;
}
/**
 * JSDateDiffByDays Javascript 计算两个日期之间的间隔天数
 * @param date1: 给定日期1，Date类型
 * @param date2: 给定日期2，Date类型
 * @return 天数，整型
 */
function JSDateDiffByDays(date1, date2) {
	var mill = date1.valueOf() - date2.valueOf();
	var millStr = new String(mill / 1000 / 60 /60 / 24)
	return parseInt(millStr);
}

/**
 * ListAllCerts 列出所有证书
 * @param issuerDN: 用户证书的颁发者主题（微软格式）
 * @param serialNumber: 证书序列号（微软格式）
 * @param certList 证书列表<select>对象
 * @return Certificates()集合
 */
function ListAllCerts(issuerDN, serialNumber, certList) {
	var CertFilter = iTrusPTA.Filter;
	CertFilter.Clear();
	CertFilter.Issuer = issuerDN;
	CertFilter.SerialNumber = serialNumber;
	var Certs = iTrusPTA.MyCertificates;
	
	for(var i=certList.length;i>=0;i--)
		certList.options[i] = null;
	for(var i = 1; i <= parseInt(Certs.Count) ; i++) {
		var el = document.createElement("option");
		el.text = Certs(i).CommonName;
		el.value = i;
		certList.add(el);
	}
	if(certList.length == 0){
		var el = document.createElement("option");
		el.text = "没有找到数字证书";
		el.value = -1;
		certList.add(el);
	}
	return Certs;
}

/**
 * ListWillOverdueCerts 列出需要更新的证书
 * @param issuerDN: 用户证书的颁发者主题（微软格式）
 * @param serialNumber: 证书序列号（微软格式）
 * @param certList 证书列表<select>对象
 * @return Certificates()集合
 */
function ListWillOverdueCerts(issuerDN, serialNumber, certList) {
	var CertFilter = iTrusPTA.Filter;
	CertFilter.Clear();
	CertFilter.Issuer = issuerDN;
	CertFilter.SerialNumber = serialNumber;
	var Certs = iTrusPTA.MyCertificates;
	
	for(var i = certList.length ; i >= 0 ; i--)
		certList.options[i] = null;
	
	var now = new Date();
	for(var i = 1; i <= parseInt(Certs.Count) ; i++) {
		if( Certs(i).validTo > now && Certs(i).validTo < JSDateAdd(now, 30) ) {
			var el = document.createElement("option");
			el.text = Certs(i).CommonName;
			el.value = i;
			certList.add(el);
		}
	} 
	if(certList.length == 0){
		var el = document.createElement("option");
		el.text = "没有找到数字证书";
		el.value = -1;
		certList.add(el);
	}
	return Certs;
}

/**
 * ListValidCerts 列出未过期的证书
 * @param issuerDN: 用户证书的颁发者主题（微软格式）
 * @param serialNumber: 证书序列号（微软格式）
 * @param certList 证书列表<select>对象
 * @return Certificates()集合
 */
function ListValidCerts(issuerDN, serialNumber, certList) {
	var CertFilter = iTrusPTA.Filter;

	CertFilter.Clear();
	CertFilter.Issuer = issuerDN;
	CertFilter.SerialNumber = serialNumber;
	var Certs = iTrusPTA.MyCertificates;
	var e1 = document.createElement("option");
			e1.text = "请选择数字证书";
			e1.value = 0;
			e1.checked="checked"
			certList.add(e1);
	for(var i = certList.length ; i >= 1 ; i--)
		certList.options[i] = null;
	
	var now = new Date();
	for(var i = 1; i <= parseInt(Certs.Count) ; i++) {
		if( Certs(i).ValidFrom < now && Certs(i).validTo > now ) {
			el = document.createElement("option");
			el.text = Certs(i).CommonName;
			el.value = i;
			certList.add(el);
		}
	}
	if(certList.length == 0){
		var el = document.createElement("option");
		el.text = "没有找到数字证书";
		el.value = -1;
		certList.add(el);
	}
	return Certs;
}

/**
 * DoLogonSign 登陆签名
 * @param certList 证书列表<select>对象
 * @param inputToSign: 用于签名登陆的被签名<input>对象 
 * @return 成功返回签名值，失败返回""
 */
function DoLogonSign (issuerDN, serialNumber, certList, inputToSign) {
	
	if(certList.value != 0) { 
		var CertFilter = iTrusPTA.Filter;
		CertFilter.Clear();
		CertFilter.Issuer = issuerDN;
		CertFilter.SerialNumber = serialNumber;

		var Certs = iTrusPTA.MyCertificates
		var CurCert = Certs(certList.value);
		try {
			var signature;
			var ptaVersion = iTrusPTA.Version;
			if(ptaVersion == null){ 
				//PTA Version = 1.0.0.3
				signature  = CurCert.SignMessage(inputToSign.value, OUTPUT_BASE64);
			} else {
				//PTA Version > 2
				
				inputToSign.value = "LOGONDATA:" + inputToSign.value;
				signature = CurCert.SignLogonData(inputToSign.value, OUTPUT_BASE64);
			}
			return signature;
		} catch (e) {
			if(-2147483135 == e.number) {
				//用户取消签名
			}	else if(e.number == -2146885621) {
				alert("您不拥有证书“" + CurCert.CommonName + "”的私钥，签名失败。");
			} else {
				alert("PTA签名时发生错误\n错误号: " + e.number + "\n错误描述: " + e.description);
				return "";
			}
		}
	} else {
		alert("没有找到可供操作的证书！");
		return "";
	}
}

/**
 * DoRenewCert 证书更新，与ListWillOverdueCerts函数匹配使用
 * @param certList 证书列表<select>对象
 * @param csrText: CSR证书注册请求（Base64格式字符串） 
 * @param pkcsInformation: 用待更新证书对CSR进行签名，<input>对象
 * @param origCertSerialNumber: 待更新证书序列号，<input>对象
 * @param origCert: 待更新Base64证书，<input>对象
 * @return 成功: true，失败: false
 */
function DoRenewCert(certList, csrText, pkcsInformation, origCertSerialNumber, origCert) {
	var Certs;
	try {
		if(certList.value == -1){
			alert("没有可以更新的证书！");
			return false;
		} else {
			Certs = iTrusPTA.MyCertificates;
			CurCert = Certs(certList.value);
			//对3个<input>对象pkcsInformation、origCertSerialNumber、origCert进行赋值
			pkcsInformation.value = CurCert.SignLogonData("LOGONDATA:" + csrText, OUTPUT_BASE64);
			origCertSerialNumber.value = CurCert.SerialNumber;
			origCert.value = CurCert.GetEncodedCert(2);
			return true;
		}
	} catch (e) {
		if(-2147483135 == e.number) {
			//用户取消签名
			alert("很抱歉，由于您拒绝使用证书对数据进行签名，我们无法确认您正在更新证书的有效性，操作已被取消！");
			return false;
		} else if(e.number == -2146885621) {
			alert("您不拥有证书“" + CurCert.CommonName + "”的私钥，签名失败。");
			return false;
		} else {
			alert("在更新证书过程中发生错误！错误原因：" + e.description + "，错误代码：" + e.number);
			return false;
		}
	}
}

/**
 * SelectSingleCertificate 从<select>中选择一张证书
 * @param certList 证书列表<select>对象
 * @return 成功: 返回PTA Certificate 对象，失败: null
 */
function SelectSingleCertificate(certList) {
	if(certList.value == -1){
		alert("没有找到任何证书！");
		return null;
	} else {
		var Certs;
		Certs = iTrusPTA.MyCertificates;
		CurCert = Certs(certList.value);
		return CurCert;
	}
}

/**
 * GetSingleCertificate 选择一张证书
 * @param issuerDN: 用户证书的颁发者主题（微软格式）
 * @param serialNumber: 证书序列号（微软格式）
 * @param certList 证书列表<select>对象
 * @return PTA Certificate 对象
 */
function GetSingleCertificate(issuer, serialNumber){
	var CertFilter = iTrusPTA.Filter;
	CertFilter.Clear();
	CertFilter.Issuer = issuerDN;
	CertFilter.SerialNumber = serialNumber;
	var Certs = iTrusPTA.MyCertificates;
	
	if(parseInt(iTrusPTA.MyCertificates.Count) > 0)
		return iTrusPTA.MyCertificates(0);
	else
		return null;
}


/**
 * verifySignature 验证签名
 * @param strToSign: 原文
 * @param base64StrSignature: 签名值
 * @return 成功: 返回签名证书对象，失败: 返回null
 */
function VerifySignature(strToSign, base64StrSignature){
	try{
		var signCert = iTrusPTA.VerifySignature(strToSign, base64StrSignature, INPUT_BASE64);
		alert("签名验证成功。签名者为“" + signCert.CommonName + "”。");
		return true;
	} catch(e) {
		if(e.number == -2146893818)
			alert("签名验证失败。\n签名值与原文不匹配，内容已遭篡改。");
		else
			alert("PTA模块发生错误\n错误号: " + e.number + "\n错误描述: " + e.description);
		return false;
	}
}

/**
 * signMessage 数字签名
 * @param plainText: 原文
 * @param signCert 用于签名的证书对象，可以使用GetSingleCertificate函数获得证书对象
 * 			，或者使用SelectSingleCertificate函数选择<select>中列出的证书
 * @return 成功: 返回签名值，失败: 返回""
 */
function SignMessage(plainText, signCert) {
	var signedStr;
	var signCert;
	try{
		signedStr = signCert.SignMessage(plainText, OUTPUT_BASE64);
	} catch(e) {
		if(e.number == -2147483135)
			return "";//User canceled
		else if(e.number == -2146885621)
			alert("您不拥有证书“" + signCert.CommonName + "”的私钥，签名失败。");
		else
			alert("PTA模块发生错误\n错误号: " + e.number + "\n错误描述: " + e.description);
		return "";
	}
	return signedStr;
}