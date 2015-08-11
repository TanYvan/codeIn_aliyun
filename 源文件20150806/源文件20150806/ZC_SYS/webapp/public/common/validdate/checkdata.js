/**
 * @author user
 */
		YAHOO.namespace("quote.data");

		//�������е�У�����
		YAHOO.quote.data.zhsPar=/[\u4e00-\u9fa5]{2,}/;
		YAHOO.quote.data.idnoPar=/^\d{15}(\d{2}[A-Za-z0-9])?$|^\d{9}([A-Za-z0-9])?$|^\d{11}([A-Za-z0-9])?$/;
		YAHOO.quote.data.forbidPar=/\*|\@/;
		YAHOO.quote.data.numPar= /^(([+])?(0|([1-9][0-9]*))([.][0-9]+)?)?$/;
		YAHOO.quote.data.moneyPar=/\d{1,10}/;
		YAHOO.quote.data.plusMoneyPar = /^((0|[1-9][0-9]*)([.][0-9]{1,2})?)?$/;
		YAHOO.quote.data.moneyPointPar=/^(\-?(0|[1-9][0-9]*)([.][0-9]{1,2})?)?$/;
		YAHOO.quote.data.ratePar=/\d{1,4}\.\d{0,4}$|\d{1,4}$/;
		YAHOO.quote.data.money1Par = /^\-?[1-9]\d{0,2},(\d{3},)*\d{3}(\.\d+)?$|^\-?[1-9]\d{0,2}(\.\d+)?$|^\-0?(\.\d+)$|^\-0(\.\d+)?$|^0?(\.\d+)?/;
		YAHOO.quote.data.numSpacePar=/\d{1,}\ |\d{1,}$/g;
		YAHOO.quote.data.vinPar=/[A-Za-z0-9]{17}/;
		YAHOO.quote.data.agePar=/[0-9]{1,3}/;
		YAHOO.quote.data.newDicPar=/^@/;
		YAHOO.quote.data.errTipPar = /\[错误\:/;
		//YAHOO.quote.data.datePar =/[\d]{4}[-][\d]{1,2}[-][\d]{1,2}/;
		//YAHOO.quote.data.datetimePar =/[\d]{4}[-][\d]{1,2}[-][\d]{1,2}/;   
		
		YAHOO.quote.data.nzhsPar=/^[a-zA-Z]\w*$/;//add by hualimin 2009-8-8 数字，字母，或者下划线 /\w+$/ 
		YAHOO.quote.data.dtnzhsPar=/dt-nzhs/;//add by hualimin 2009-8-8
		      
		//YAHOO.quote.data.englishStrPar=/^(([a-z0-9]+\s+)|(\s+[a-z0-9]+))[a-z0-9\s]*$/i;//add by guoqingwei
		//需求编号：PICC201202-IMS-007 modify by guoyonggang --start
		YAHOO.quote.data.englishStrPar=/^[A-Za-z\s]+$/;//modify by guoyonggang
		//modify by guoyonggang --end
		YAHOO.quote.data.dtenglishStrPar=/dt-englishStr/;
		
		YAHOO.quote.data.integersPar=/^[0-9]*[1-9][0-9]*$/;
		YAHOO.quote.data.dtintegersPar=/dt-integers/;
		YAHOO.quote.data.phonePar=/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
		YAHOO.quote.data.dtphonePar=/dt-phone/;
		YAHOO.quote.data.faxPar=/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
		YAHOO.quote.data.dtfaxPar=/dt-fax/;
		YAHOO.quote.data.emailPar=/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
		YAHOO.quote.data.dtemailPar=/dt-email/;
		YAHOO.quote.data.postPar=/^[0-9]{6}$/;
		YAHOO.quote.data.dtpostPar=/dt-post/;
		//需求编号：PICC201303-IMS-004 modify by haohaiyang 支持18号段，15号段以及14号段手机号 --start
//		YAHOO.quote.data.mobilePar=/^(?:13\d|15[123456789])-?\d{5}(\d{3}|\*{3})$/;
		YAHOO.quote.data.mobilePar=/^(?:13\d|15\d|18\d|14\d)-?\d{5}(\d{3}|\*{3})$/;
		// modify by haohaiyang --end
		YAHOO.quote.data.dtmobilePar=/dt-mobile/;
		YAHOO.quote.data.id15Par=/^(\d{6})()?(\d{2})(\d{2})(\d{2})(\d{3})$/; 
		YAHOO.quote.data.id18Par=/^(\d{6})()?(\d{4})(\d{2})(\d{2})(\d{3})(\d)$/; 
		YAHOO.quote.data.dtidPar=/dt-id/;
		//�������е�У�����ͣ���Ӧinput���class��
		YAHOO.quote.data.dcchkPar=/dc-chk/;
		YAHOO.quote.data.dttextPar=/dt-text/;
		YAHOO.quote.data.dtnumPar=/dt-num/;
		YAHOO.quote.data.dtmoneyPar=/dt-money/;
		YAHOO.quote.data.dtplusMoneyPar=/dt-plusMoney/;
		YAHOO.quote.data.dtratePar=/dt-rate/;
		YAHOO.quote.data.dtdatePar=/dt-date/;
		YAHOO.quote.data.dtzhsPar=/dt-zhs/;
		YAHOO.quote.data.dtvinPar=/dt-vin/;
		YAHOO.quote.data.dtagePar=/dt-age/;
		
		YAHOO.quote.data.lenPar=/[^\x00-\xff]/g;

		YAHOO.quote.data.strLen=function(){return this.replace(YAHOO.quote.data.lenPar,"aa").length;}
		YAHOO.quote.data.isDate=function(str){
			var r = str.match(/^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/);
			if(r==null)return false;
			var d = new Date(r[1], r[3]-1, r[4]);
			return(d.getFullYear()==r[1]&&(d.getMonth()+1)==r[3]&&d.getDate()==r[4]);
		}
		YAHOO.quote.data.isTime=function(str){
			var r = str.match(/^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/);
			if(r==null)return false;
			var d = new Date(r[1], r[3]-1,r[4],r[5],r[6],r[7]);
			return (d.getFullYear()==r[1]&&(d.getMonth()+1)==r[3]&&d.getDate()==r[4]&&d.getHours()==r[5]&&d.getMinutes()==r[6]&&d.getSeconds()==r[7]);
		}

		//У�����
		YAHOO.quote.data.datacheck=function(root){
			YAHOO.quote.data.datacheck.clearTips();
			var vFlag = true;
			var arrEl = YAHOO.util.Dom.getElementsBy(YAHOO.quote.data.datacheck.isElement,"input",root);
			for(var i=0;i<arrEl.length;i++){
				var el = arrEl[i];
				//�Ƿ񳬳�

				//�Ƿ�Ϊ��:���Ҫ��Ϊ�ն�Ϊ�գ���ֱ���״?
				if(YAHOO.quote.data.dcchkPar.test(el.className)){
					if(trim(el.value)==""){
						YAHOO.quote.data.datacheck.adderror(el,"这里是必输项，必须填写信息！");
						vFlag = false;
					}
				}
				//��������
				if(YAHOO.quote.data.dtnumPar.test(el.className)){
					if(trim(el.value)!=""&&!YAHOO.quote.data.numPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"这里必须填写正确的数字！请认真确认！");
						vFlag = false;
					}
				}
				//��������
				if(YAHOO.quote.data.dtdatePar.test(el.className)){
					if(trim(el.value)!=""&&!YAHOO.quote.data.isDate(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"这里必须填写正确的日期(YYYY-MM-DD)！请认真确认！");
						vFlag = false;
					}
				}
				//��������
				if(YAHOO.quote.data.dtmoneyPar.test(el.className)){
					if(trim(el.value)!="" && !YAHOO.quote.data.moneyPointPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"这里必须填写正确的数量！请仔细确认");
						vFlag = false;
					}
				}
				//���������
				if(YAHOO.quote.data.dtplusMoneyPar.test(el.className)){
					if(trim(el.value)!="" && !YAHOO.quote.data.plusMoneyPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"该处金额必须填写正金额且保留小数点后两位！请仔细确认！");
						vFlag = false;
					}
				}
				//��������
				if(YAHOO.quote.data.dtratePar.test(el.className)){
					if(trim(el.value)!=""&&!YAHOO.quote.data.ratePar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"这里必须填写正确的数值！例如0.1234。请仔细确认！");
						vFlag = false;
					}
				}
				//����������
				if(YAHOO.quote.data.dtzhsPar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.zhsPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"这里必须填写正确的文字！请仔细确认！");
						vFlag = false;
					}
				}
				//add by hualimin 2009-8-8 check not zhs
				if(YAHOO.quote.data.dtnzhsPar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.nzhsPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"这里只能是字母数字或下划线，且只能以字母开头！");
						vFlag = false;
					}
				}
				
				if(YAHOO.quote.data.dtenglishStrPar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.englishStrPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"请填写正确英文字符！");
						vFlag = false;
					}
				}
				
				//У��VIN��
				if(YAHOO.quote.data.dtvinPar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.vinPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"这里必须填写17位VIN码！请仔细确认VIN码是否为17位！");
						vFlag = false;
					}
				}

				//У������
				if(YAHOO.quote.data.dtagePar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.agePar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"请填写正确的年龄！");
						vFlag = false;
					}
				}
				if(YAHOO.quote.data.dtintegersPar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.integersPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"请填写正确的整型数字！");
						vFlag = false;
					}
				}
				if(YAHOO.quote.data.dtphonePar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.phonePar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"请填写正确的电话号码，号码格式为区号(2到3位)-电话号码(7到8位)-分机号(3位)");
						vFlag = false;
					}
				}
				if(YAHOO.quote.data.dtfaxPar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.faxPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"请填写正确的传真号码，号码格式为区号(2到3位)-传真号码(7到8位)");
						vFlag = false;
					}
				}
				if(YAHOO.quote.data.dtemailPar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.emailPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"请填写正确的电子邮件地址！");
						vFlag = false;
					}
				}
				if(YAHOO.quote.data.dtpostPar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.postPar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"请填写正确的邮政编码！");
						vFlag = false;
					}
				}
				if(YAHOO.quote.data.dtmobilePar.test(el.className)){
					if(trim(el.value)!=""&&! YAHOO.quote.data.mobilePar.test(el.value)){
						YAHOO.quote.data.datacheck.adderror(el,"请填写正确的手机号码！");
						vFlag = false;
					}
				}
				/* MODIFY BEGIN GUOYONGGANG ADD（新增是ADD,修改是UPD,删除是DEL）
                   2013-4-2
                   需求编号：PICC201303-IMS-001 功能：身份证校验完善
                */
				if(YAHOO.quote.data.dtidPar.test(el.className)){
					var Flag = true;
					var cardId = trim(el.value);
					if(cardId != ""){
						var cities={11:"北京",12:"天津",13:"河北",14:"山西",
						15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",31:"上海",
						32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",
						41:"河南",42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",
						50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",
						62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",
						82:"澳门",91:"国外"};
						if(cities[parseInt(cardId.substr(0,2))] == null) {
							Flag = false;
						}
						var sBirthday = "";
						//增加15位身份证的校验
						if(cardId.length == 15){
						    if(!YAHOO.quote.data.integersPar.test(cardId)){
							    Flag = false;
						    }
						    sBirthday = "19" + cardId.substr(6,2) + "-" + Number(cardId.substr(8,2)) + "-" + Number(cardId.substr(10,2));
						}else if(cardId.length == 18){
							if(!/^\d{17}(\d|x)$/i.test(cardId) ) {
							    Flag = false;
							} 
							sBirthday = cardId.substr(6,4) + "-" + Number(cardId.substr(10,2)) + "-" + Number(cardId.substr(12,2)); 
						}
						var d = new Date(sBirthday.replace(/-/g,"/")) ;
						if(sBirthday != (d.getFullYear() + "-" + (d.getMonth()+1) + "-" + d.getDate())) {
							Flag = false; 
						}
						//增加18位身份证的校验
						if(cardId.length == 18){
							var lastStr = cardId.substr(cardId.length-1);
							if(lastStr == 'x' ){
							    Flag = false;
							}
						}
						if(!Flag){
							YAHOO.quote.data.datacheck.adderror(el,"请填写正确的身份证号码！");
							vFlag=Flag;
						}
				    }else{
				    	YAHOO.quote.data.datacheck.adderror(el,"请填写正确的身份证号码！");
					    vFlag=false;
				    }	
				}
			}
			return vFlag;
		}
		YAHOO.quote.data.datacheck.errTips=[];
//		YAHOO.quote.data.datacheck.errObjs=[];
		YAHOO.quote.data.datacheck.clearTips=function(){
			for(var i=0;i<YAHOO.quote.data.datacheck.errTips.length;i++){
				var errtip = YAHOO.quote.data.datacheck.errTips[i];
				var el = errtip._context;
				if(false){
					el.title="";
					YAHOO.util.Dom.removeClass(el,"dc-err");
				}else{
					el[0].title="";
					YAHOO.util.Dom.removeClass(el[0],"dc-err");
				}
				errtip.destroy();;
			}
			YAHOO.quote.data.datacheck.errTips=[];
		}
		//���el��id����ȡ��Ӧ��tip��id��
		YAHOO.quote.data.datacheck.getTipNameByEl=function(el,tname){
			if(el.id!=""){
				tname = "errtip_"+el.id;
			}else{
				tname = "errtip_"+el.name;
			}
//			alert("name is "+tname);
			return tname;
		}

		/**
		 * ���Ӵ�����Ϣ
		 * @param {String|HTMLElement} el
		 * @param {String} msg
		 */
		YAHOO.quote.data.datacheck.adderror=function(el,msg){
			el.title = el.title + "[错误: "+msg+" ]";
			var tipname = new YAHOO.quote.data.datacheck.getTipNameByEl(el,tipname);
			tipname = ""+tipname;
			var errtip = new YAHOO.widget.Tooltip( tipname.toString(),{context:el,zIndex:300});
			YAHOO.quote.data.datacheck.errTips[ YAHOO.quote.data.datacheck.errTips.length ] = errtip;
			//YAHOO.quote.data.datacheck.errObjs[ YAHOO.quote.data.datacheck.errObjs.length ] = el;
			YAHOO.util.Dom.addClass(el,"dc-err");
		}
		//�ж��Ƿ�Ϊָ�������У�����
		YAHOO.quote.data.datacheck.isElement=function(el){
			return true;
		}
