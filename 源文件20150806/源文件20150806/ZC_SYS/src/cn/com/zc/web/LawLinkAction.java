package cn.com.zc.web;

import cn.com.zc.common.App;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.Param;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanIn;
import cn.com.zc.jrdbModel.ArbitmanSub;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.WUser;
import cn.com.zc.util.MD5;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.namespace.QName;
import javax.xml.rpc.ParameterMode;
import javax.xml.rpc.ServiceException;

import org.apache.axis.client.Call;
import org.apache.axis.client.Service;
import org.apache.axis.encoding.XMLType;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.methods.InputStreamRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;

public class LawLinkAction extends BaseAction {
	private String isShow="0";
	private String link;
	
	public String getIsShow() {
		return isShow;
	}

	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}
	
	public String getLink() {
		return link;
	}

	public void Link(String link) {
		this.link = link;
	}
	
	public String list() throws Exception {
		LawUrl lawUrl= catchShow("1");
		isShow = lawUrl.getIsShow();
		return SUCCESS;
	}
	
	public String link_do() throws Exception {
		LawUrl lawUrl= catchShow("2");
		isShow = lawUrl.getIsShow();
		if (isShow.equals("0")){
			return "fail";
		}else{
			link = lawUrl.getLink();
			return SUCCESS;
		}
	}
	
	private LawUrl catchShow(String typ) throws Exception{
		LawUrl lawUrl = new LawUrl();
		//typ为1  判断否显示链接，typ为2判断是否传递登录跳转
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String r = "0";
		String r_2 = "";
		if (session.get("userType").toString().equals("assistant")){
			r = "1";
			if (r.equals("1") && typ.equals("2")){
				r_2 = catchLink();
			}
		}else if(session.get("userType").toString().equals("arbitman") && session.get("userCategory").toString().equals("01")){
			
			//判断是否10分钟内登录过///////////////////////
			ReqPacket req_a1= new ReqPacket();
			req_a1.setFrom("tb_arbitmen");
			req_a1.setSelect("id,link_time,link_url");
			List<String> conditions_a1 =  new ArrayList<String>();
			conditions_a1.add(" code=? ");
			conditions_a1.add(session.get("userCode").toString());
			req_a1.setConditions(conditions_a1);
			JrDbHelp jr_a1 = new JrDbHelp();
			ResPacket  rp_a1=jr_a1.find_all(req_a1);
			List<ArbitmanIn> arbitmanInList = new ArbitmanIn().getObjects(rp_a1);
			ArbitmanIn arbitmanIn = arbitmanInList.get(0);
			String t = arbitmanIn.getLink_time();
			
			if (t.equals("")){
				r = "1";
			}else{
				Date t1 = new Date();
				Date t2 = dateFormat1.parse(t);
				long d1 = t1.getTime();
				long d2 = t2.getTime();
				long diff = (d1 - d2) /1000;
				long num = diff / 60;
				if (num>=10){
					r = "1";
				}else{
					r = "2";
					r_2 = arbitmanIn.getLink_url();
				}
			}	
			
			if (r.equals("1") && typ.equals("2")){
				r_2 = catchLink();
				String id= arbitmanIn.getId();
				arbitmanIn.setLink_time(dateFormat1.format(new Date()));
				arbitmanIn.setLink_url(r_2);
				ReqPacket req_a2= new ReqPacket();
				req_a2= new ReqPacket();
				req_a2= arbitmanIn.toReqPacketForUpdate();
				req_a2.setId(id);
				req_a2.setFrom("tb_arbitmen");
				JrDbHelp jr_a2 = new JrDbHelp();
				jr_a2.update(req_a2);
			}
			
			//////////////////////////////////////////////////////
			
		}else if(session.get("userType").toString().equals("party")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_cases,case_w_user");
			req.setSelect("tb_cases.recevice_code as recevice_code");
			ArrayList<Param> params = new ArrayList<Param>();
			List<String> conditions =  new ArrayList<String>();
			conditions.add("case_w_user.user_code=? and case_w_user.used='Y' and tb_cases.recevice_code=case_w_user.recevice_code and tb_cases.used='Y' and tb_cases.state>=4 and tb_cases.state>=4 and tb_cases.caseendbook_id_first is null");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder("tb_cases.case_code desc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			
			ReqPacket req_2= new ReqPacket();
			req_2.setFrom("tb_cases,case_w_user,tb_caseendbooks");
			req_2.setSelect("tb_cases.recevice_code as recevice_code");
			List<String> conditions_2 =  new ArrayList<String>();
			conditions_2.add("case_w_user.user_code=? and case_w_user.used='Y' and tb_cases.recevice_code=case_w_user.recevice_code and tb_cases.used='Y' and tb_cases.state>=4 and tb_cases.state>=4 and tb_cases.caseendbook_id_first=tb_caseendbooks.id and date_add(tb_caseendbooks.decideDate, INTERVAL 7 day)>=curdate() and tb_caseendbooks.used='Y' ");
			conditions_2.add(session.get("userCode").toString());
			req_2.setConditions(conditions_2);
			req_2.setOrder("tb_cases.case_code desc");
			JrDbHelp jr_2 = new JrDbHelp();
			ResPacket  rp_2=jr_2.find_all(req_2);
			if (rp.getStatus().equals("1") && rp.getStatus().equals("1")){
				CaseIn caseIn= new CaseIn();
				if (caseIn.getObjects(rp).size()>0 || caseIn.getObjects(rp_2).size()>0){
					
					//判断是否10分钟内登录过///////////////////////
					ReqPacket req_b1= new ReqPacket();
					req_b1.setFrom("w_user");
					req_b1.setSelect("id,link_time,link_url");
					List<String> conditions_b1 =  new ArrayList<String>();
					conditions_b1.add(" code=? ");
					conditions_b1.add(session.get("userCode").toString());
					req_b1.setConditions(conditions_b1);
					JrDbHelp jr_b1 = new JrDbHelp();
					ResPacket  rp_b1=jr_b1.find_all(req_b1);
					List<WUser> wUserList = new WUser().getObjects(rp_b1);
					WUser wUser = wUserList.get(0);
					String t = wUser.getLink_time();
					
					if (t.equals("")){
						r = "1";
					}else{
						Date t1 = new Date();
						Date t2 = dateFormat1.parse(t);
						long d1 = t1.getTime();
						long d2 = t2.getTime();
						long diff = (d1 - d2) /1000;
						long num = diff / 60;
						if (num>=10){
							r = "1";
						}else{
							r = "2";
							r_2 = wUser.getLink_url();
						}
					}	
					
					if (r.equals("1") && typ.equals("2")){
						r_2 = catchLink();
						String id= wUser.getId();
						wUser.setLink_time(dateFormat1.format(new Date()));
						wUser.setLink_url(r_2);
						ReqPacket req_b2= new ReqPacket();
						req_b2= new ReqPacket();
						req_b2= wUser.toReqPacketForUpdate();
						req_b2.setId(id);
						req_b2.setFrom("w_user");
						JrDbHelp jr_b2 = new JrDbHelp();
						jr_b2.update(req_b2);
					}
					/////////////////////////////////////////////
					
				}else{
					r = "0";
				}
			}else{
				r = "0";
			}
		}
		lawUrl.setIsShow(r);
		lawUrl.setLink(r_2);
		return lawUrl;
	}
	
	private String catchLink() throws ServiceException, HttpException, IOException{
		if (App.lawLinkNum.equals(500)){
			App.lawLinkNum = 1;
		}else{
			App.lawLinkNum = App.lawLinkNum + 1; 
		}
		
		String userCode = "scia_user_" + App.lawLinkNum.toString();
		//机构代码
		String org_code = "31";
		//axis方式
		//服务地址
		//String serviceEpr = "http://124.192.33.50:6069/CheckUser.asmx?wsdl";
		String serviceEpr = "http://webservice.pkulaw.cn/projectswebservice/checkuser.asmx?wsdl";

		Service service = new Service();
        Call call = (Call)service.createCall();
        call.setTargetEndpointAddress(new java.net.URL(serviceEpr));
        //服务名
        call.setOperationName(new QName("http://tempuri.org/", "CheckUserIsCreated"));   
        //定义入口参数和参数类型
        call.addParameter(new QName("http://tempuri.org/", "groupid"),XMLType.XSD_INT, ParameterMode.IN);
        call.addParameter(new QName("http://tempuri.org/", "usr"),XMLType.XSD_STRING, ParameterMode.IN);
        call.addParameter(new QName("http://tempuri.org/", "pwd"),XMLType.XSD_STRING, ParameterMode.OUT);
        call.setUseSOAPAction(true);
        //Action地址
        call.setSOAPActionURI("http://tempuri.org/CheckUserIsCreated");
        //定义返回值类型
        call.setReturnType(XMLType.XSD_BOOLEAN);
        
        //调用服务获取返回值    
        Boolean result =  (Boolean) call.invoke(new Object[]{org_code,userCode});
        //密码获取不到，但是这密码也没什么用
        String a = String.valueOf(call.getProperty("pwd"));
        //System.out.println("返回值1 ： " + result);
        //System.out.println("返回值1_1 ： " + a);
        //System.out.println("-----------------------------------------------------------");
        if  (result==true){
        	//System.out.println("去跳转吧" );
        }else{
        	//System.out.println("注册一下先" );
        	//由于axis提交对象参数不方便，所以这里采用httpclient方式
            String soapRequestData = "<?xml version=\"1.0\" encoding=\"utf-8\"?>"
                + "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">"
                + "<soap:Body>"
                + "<UserLoginAndOpenRight xmlns=\"http://tempuri.org/\">"
                + "<Userinfo>"
                + "<Web_Id>" + org_code + "</Web_Id>"
                + "<User_Name>" +  userCode + "</User_Name>"
                + "<User_Phone>15322223333</User_Phone>"
                + "<User_Email>" +  userCode + "@126.com</User_Email>"
                + "<User_TrueName>" +  userCode + "</User_TrueName>"
                + "<User_Unit>scia</User_Unit>"
                + "<User_Address></User_Address>"
                + "<User_Sex>1</User_Sex>"
                + "<Lawyer_License></Lawyer_License>"
                + "</Userinfo>"
                + "</UserLoginAndOpenRight>"
                + "</soap:Body>"
                + "</soap:Envelope>";
           //System.out.println(soapRequestData);
           //PostMethod postMethod = new PostMethod("http://124.192.33.50:6069/CheckUser.asmx?wsdl");
           PostMethod postMethod = new PostMethod("http://webservice.pkulaw.cn/projectswebservice/checkuser.asmx?wsdl");

           // 然后把Soap请求数据添加到PostMethod中
           byte[] b = soapRequestData.getBytes("utf-8");
           InputStream is = new ByteArrayInputStream(b, 0, b.length);
           //RequestEntity re = new InputStreamRequestEntity(is, b.length,"application/soap+xml; charset=utf-8");
           RequestEntity re = new InputStreamRequestEntity(is, b.length,"text/xml; charset=utf-8");
           postMethod.setRequestEntity(re);
           //最后生成一个HttpClient对象，并发出postMethod请求
           HttpClient httpClient = new HttpClient();
           int statusCode = httpClient.executeMethod(postMethod);
           if(statusCode == 200) {
        	   System.out.println("调用成功！");
        	   String soapResponseData = postMethod.getResponseBodyAsString();
        	   System.out.println(soapResponseData);
           }
           else {
        	   System.out.println("调用失败！错误码：" + statusCode);
        	   String soapResponseData = postMethod.getResponseBodyAsString();
        	   System.out.println(soapResponseData);
           }
        	
        }
        MD5 getMD5 = new MD5();
        java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-M-d");
        String s = dateFormat1.format(new Date())+org_code;
        //System.out.println(s);
        String authid = getMD5.GetMD5Code(s);
        //return "http://124.192.33.50:6068/vip_login/vip_login_fromscia.aspx?authid=" + authid + "&userid=" + userCode;
        return "http://scia.pkulaw.cn/vip_login/vip_login_fromscia.aspx?authid=" + authid + "&userid=" + userCode;
	}

}
