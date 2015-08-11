package cn.com.zc.web;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanSub;
import cn.com.zc.jrdbModel.ArbitmanSyn;
import cn.com.zc.jrdbModel.AttachmentIn;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.WUser;
import cn.com.zc.model.Attachment;
import cn.com.zc.model.User;
import cn.com.zc.model.Wuser;
import cn.com.zc.service.facade.ArbitmanAttService;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.AttachmentService;
import cn.com.zc.service.facade.WuserService;
import cn.com.zc.util.FileUpload;
import cn.com.zc.util.ListToJson;
import cn.com.zc.util.RandomValidateCode;

public class WuserAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private int count;
	private String rows;// 每页显示的记录数
	private File file;
	private String code;
	private String status;
	private String name;
	private String idCard;
	private String telephone;
	private String email;
	private String identity;
	private String attCategory;
	private int pageNo = 1;
	private int pageSize;
	private int pageCount;
	private String page_str;
	private cn.com.zc.model.Wuser wuser;
	private cn.com.zc.jrdbModel.WUser wuserSub;
	private List<Wuser> wuserList;
	private WuserService wuserService;
	private List<String> identityList;
	private String result;
	private String page;// 当前第几页
	private String veryCode;
	private String error;
	private HashMap<String, String> hs1;
	private HashMap<String, String> hs2;
	private File upload;
	private String uploadFileName;
	private String uploadContentType;
	private AttachmentConfigService  attachmentConfigService;
	private AttachmentService attachmentService;
	private Attachment attachment;
	private String attPath;
	private String check_3;
	
	
	public String getCheck_3() {
		return check_3;
	}

	public void setCheck_3(String check_3) {
		this.check_3 = check_3;
	}
	
	public String getAttPath() {
		return attPath;
	}

	public void setAttPath(String attPath) {
		this.attPath = attPath;
	}
	
	public Attachment getAttachment() {
		return attachment;
	}

	public void setAttachment(Attachment attachment) {
		this.attachment = attachment;
	}
	
	public AttachmentConfigService getAttachmentConfigService() {
		return attachmentConfigService;
	}

	public void setAttachmentConfigService(AttachmentConfigService attachmentConfigService) {
		this.attachmentConfigService = attachmentConfigService;
	}
	
	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}
	
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}	
	
	
	public HashMap<String, String>  getHs1() {
		HashMap<String, String> h =new HashMap<String, String>();
		h.put("0", "外网");
		h.put("1", "内网");
		return h;
	}

	public HashMap<String, String>  getHs2() {
		HashMap<String, String> h =new HashMap<String, String>();
//		h.put("1", "自然人");
//		h.put("2", "法人");
//		h.put("3", "非法人组织");
//		h.put("1,2", "自然人,法人");
//		h.put("1,3", "自然人,企业用户");
//		h.put("1,2,3", "律师,代理人,企业用户");
//		h.put("2,3", "代理人,企业用户");
		return h;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public String getVeryCode() {
		return veryCode;
	}

	public void setVeryCode(String veryCode) {
		this.veryCode = veryCode;
	}
	
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getRows() {
		return rows;
	}

	public void setRows(String rows) {
		this.rows = rows;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getPage_str() {
		return page_str;
	}

	public void setPage_str(String page_str) {
		this.page_str = page_str;
	}
	
	public List<String> getIdentityList() {
		return identityList;
	}

	public void setIdentityList(List<String> identityList) {
		this.identityList = identityList;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getAttCategory() {
		return attCategory;
	}

	public void setAttCategory(String attCategory) {
		this.attCategory = attCategory;
	}
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	private String WuserCode;

	public String getWuserCode() {
		return WuserCode;
	}

	public void setWuserCode(String WuserCode) {
		this.WuserCode = WuserCode;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Wuser getWuser() {
		return wuser;
	}

	public void setWuser(Wuser wuser) {
		this.wuser = wuser;
	}
	
	public WUser getWuserSub() {
		return wuserSub;
	}

	public void setWuserSub(WUser wuserSub) {
		this.wuserSub = wuserSub;
	}

	public List<Wuser> getWuserList() {
		return wuserList;
	}

	public void setWuserList(List<Wuser> wuserList) {
		this.wuserList = wuserList;
	}

	public WuserService getWuserService() {
		return wuserService;
	}

	public void setWuserService(WuserService wuserService) {
		this.wuserService = wuserService;
	}
	
	public AttachmentService getAttachmentService() {
		return attachmentService;
	}
	
	public void setAttachmentService(AttachmentService attachmentService) {
		this.attachmentService = attachmentService;
	}
	
	public String findWuserList() {
		page_str = "";
		StringBuffer condition = new StringBuffer();
		List c_list = new ArrayList();
		condition.append(" and active='1' and status=0 ");
//		if (status != null && !"".equals(status)) {
//			condition.append(" and status  like '?'");
//			c_list.add("%" + status.trim() + "%");
//			page_str = page_str + "&status=" + status.trim();
//		}
		if (code != null && !"".equals(code.trim())) {
			condition.append(" and code like ?");
			c_list.add("%" + code.trim() + "%");
			page_str = page_str + "&code=" + code.trim();
		}
		if (name != null && !"".equals(name.trim())) {
			condition.append(" and  name  like ?");
			c_list.add("%" + name.trim() + "%");
			page_str = page_str + "&name=" + name.trim();
		}
		if (idCard != null && !"".equals(idCard.trim())) {
			condition.append(" and  idCard  like ?");
			c_list.add("%" + idCard.trim() + "%");
			page_str = page_str + "&idCard=" + idCard.trim();
		}
		if (telephone != null && !"".equals(telephone.trim())) {
			condition.append(" and  telephone  like ?");
			c_list.add("%" + telephone.trim() + "%");
			page_str = page_str + "&telephone=" + telephone.trim();
		}
		if (email != null && !"".equals(email.trim())) {
			condition.append(" and  email  like ?");
			c_list.add("%" + email.trim() + "%");
			page_str = page_str + "&email=" + email.trim();
		}
		if (identity != null && !"".equals(identity.trim())) {
			condition.append(" and  identity=?");
			c_list.add(identity.trim());
			page_str = page_str + "&identity=" + identity.trim();
		}
		Object[] value = c_list.toArray();
		
		sysArgService.initSysArg();
		pageSize = Integer.parseInt(App.sysArgMap.get("0100"));
		
		wuserList = wuserService.findWuserList(condition.toString(),
				value, pageNo, pageSize);
		count = wuserService.getCounts(condition.toString(), value);
		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		return SUCCESS;
	}
	
	public String toInsertWuser() {
		wuser = new Wuser();
		wuser.setPaperworkId(0);
		return SUCCESS;
	}

	public String insertWuser() {
		if (wuser.getIdentity()==null){
			wuser.setIdentity("");
		}
		else{
			wuser.setIdentity(wuser.getIdentity().replace(" ", ""));
		}
		wuser.setCode(wuserService.takeCode());
		wuser.setNameIdcard(wuser.getName());
		wuser.setStatusA(0);
		wuser.setActive("1");
		wuser.setStatus("Y");
		wuserService.insertWuser(wuser);
		return SUCCESS;
	}



	public String toUpdateWuser() {
		Object[] value = { id };
		wuserList = wuserService.findWuserList(" and id=?", value, 0, 0);
		wuser = wuserList.get(0);
		identityList = new ArrayList<String>();
		String[] identitys = wuser.getIdentity().split(",");
		identityList = Arrays.asList(identitys);
		
		return SUCCESS;
	}

	public String updateWuser() {
		Object[] value = { id };
		wuserList = wuserService.findWuserList("and id=?", value, 0, 0);
		Wuser wuser_up  = wuserList.get(0);
		
		if (wuser.getIdentity()==null){
			wuser.setIdentity("");
		}
		else{
			wuser.setIdentity(wuser.getIdentity().replace(" ", ""));
		}
		wuser.setNameIdcard(wuser.getName());
		
		wuser_up.coverSelf(wuser);
		wuserService.updateWuser( wuser_up);
		return SUCCESS;
	}
	
	public String deleteWuser() {
		Object[] value = { id };
		wuserList = wuserService.findWuserList("and id=?", value, 0, 0);
		wuser = wuserList.get(0);
		wuser.setActive("1");
		wuserService.updateWuser(wuser);
		return SUCCESS;
	}

	public String myInfo() throws Exception {
		if (session.get("userType").equals("party")){
			Object[] value = { session.get("userCode").toString() };
			wuserList = wuserService.findWuserList(" and code=?", value, 0, 0);
			wuser = wuserList.get(0);
			identityList = new ArrayList<String>();
			String[] identitys = wuser.getIdentity().split(",");
			identityList = Arrays.asList(identitys);
			if (wuser.getPaperworkId()!=null && wuser.getPaperworkId()!=0){
				Object[] value2 = {wuser.getPaperworkId()};
				String condition = "from Attachment where id=?";
				List<Attachment> attachmentList = attachmentService.findAttachmentListFor(condition, value2);
				if (attachmentList.size()>0){
					attachment = attachmentList.get(0);
					attPath = App.attPath(attachment.getCategory(),attachment.getExtFilePath());
					attCategory = attachment.getCategory();
				}
				
			}else{
				attPath = "";
			}
			if (wuser.getStatusA()==0){
				return "myInfo";
			}
			else{
				ReqPacket req = new ReqPacket();
				req.setFrom("w_user");
				List<String> conditions = new ArrayList<String>();
				//conditions.add("(code=? or name=? or id_card=? or telephone=?) and active='1' and status='Y'");
				conditions.add("code=? and active='1' and status='Y'");
				conditions.add(session.get("userCode").toString());
				req.setConditions(conditions);
				JrDbHelp jr = new JrDbHelp();
				ResPacket rp = jr.find_all(req);
				if (rp.getStatus().equals("1")) {
					wuserSub = (WUser) new WUser().getObjects(rp).get(0);
					
					ReqPacket req2 = new ReqPacket();
					req2.setFrom("attachment");
					List<String> conditions2 = new ArrayList<String>();
					conditions2.add("id=?");
					conditions2.add(wuserSub.getPaperwork_id());
					req2.setConditions(conditions2);
					JrDbHelp jr2 = new JrDbHelp();
					ResPacket rp2 = jr2.find_all(req2);
					if (new AttachmentIn().getObjects(rp2).size()>0){
						AttachmentIn attachmentIn = (AttachmentIn ) new AttachmentIn().getObjects(rp2).get(0);
						attCategory = attachmentIn.getCategory();
						if (attachmentIn.getExt_file_path() == null && "".equals(attachmentIn.getExt_file_path()) ){
							
						}else{
						 attPath = App.attPath(attachmentIn.getCategory(),attachmentIn.getExt_file_path());
						}
					}
					return "myInfoSub";
				}else{
					return "fail";
				}
				
				
			}
		}else{
			return "fail";
		}
	}
	
	public String updateMyInfo() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (session.get("userType").equals("party")){
			if (wuser.getIdentity()==null){
				wuser.setIdentity("");
			}
			else{
				wuser.setIdentity(wuser.getIdentity().replace(" ", ""));
			}
			
			Object[] value = { wuser.getId() };
			wuserList = wuserService.findWuserList(" and id=?", value, 0, 0);
			Wuser u = wuserList.get(0);
			if (u.getCode().equals(session.get("userCode").toString())){
				u.setNameIdcard(wuser.getNameIdcard());
				u.setIdCard(wuser.getIdCard());
				u.setTelephone(wuser.getTelephone());
				u.setEmail(wuser.getEmail());
				u.setIdentity(wuser.getIdentity());
				u.setPostCode(wuser.getPostCode());
				u.setCompany(wuser.getCompany());
				u.setAddr(wuser.getAddr());
				u.setFax(wuser.getFax());
				u.setOtherContact(wuser.getOtherContact());
				u.setRemark(wuser.getRemark());
				
				if (upload!=null){
					FileUpload fileUpload = new FileUpload();
					baseDicMap=this.getBaseDicMap();
					if (baseDicMap.get("9102").get(attCategory)==null)
					{
						return "fail";	
					}
					attachmentConfigService.initAttachmentConfig();
					String lPath = fileUpload.logicPath(App.attachmentConfig.get(attCategory)); //创建并获取逻辑路径
					String realPath = App.attachmentConfig.get(attCategory) + lPath; //真实路径
					
					String t = UUID.randomUUID().toString();
					String fileName = t;
					if (!fileUpload.getExtName(uploadFileName).equals(""))
					{
						fileName = t + "." + fileUpload.getExtName(uploadFileName);
					}
					try {
						fileUpload.uploadFile(upload, realPath, fileName);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return "fail";
					}
					Attachment attachment = new Attachment();
					attachment.setCategory(attCategory);
					attachment.setGuid(t);
					attachment.setFileName(uploadFileName);
					attachment.setContentType(uploadContentType);
					attachment.setUpTime(dateFormat1.format(new Date()));
					attachment.setExtFilePath(lPath + "/" + fileName);
					attachment.setExtFileUrl(lPath + "/" + fileName);
					attachmentService.insertAttachment(attachment);
					Object[] value3 = {attachment.getGuid()};
					attachment = attachmentService.findAttachmentList(" and guid=?", value3).get(0);
					u.setPaperworkId(attachment.getId());
				}else{
					Object[] value4 = {u.getPaperworkId()};
					List<Attachment> attachmentList  = attachmentService.findAttachmentList(" and id=?", value4);
					if (attachmentList.size()>0){
						attachment = attachmentList.get(0);
						attachment.setCategory(attCategory);
						attachmentService.updateAttachment(attachment);	
					}
				}
				wuserService.updateWuser(u);
				error ="修改成功";
				error =this.getText("common.success");
				return SUCCESS;
			}else{
				error ="修改失败";
				error =this.getText("common.fail");
				return SUCCESS;
			}
		}else{
			return "fail";
		}
	}
	
	
	public String updateMyInfoSub() throws Exception {
		if (session.get("userType").toString().equals("party")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ReqPacket req= new ReqPacket();
			req.setFrom("w_user");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("code=?");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			List<WUser> wuserSubList = new WUser().getObjects(rp);
			if (wuserSubList.size()==0){
				return "fail";
			}
			else{
				WUser wuserSub_update = wuserSubList.get(0);
				wuserSub_update.coverSelf(wuserSub);
				
				//上传附件
				if (upload !=null){
					FileUpload fileUpload = new FileUpload();
					baseDicMap=this.getBaseDicMap();
					if (baseDicMap.get("9102").get(attCategory)==null)
					{
						return "fail";	
					}
					attachmentConfigService.initAttachmentConfig();
					String lPath = fileUpload.logicPath(App.attachmentConfig.get(attCategory)); //创建并获取逻辑路径
					String realPath = App.attachmentConfig.get(attCategory) + lPath; //真实路径
					
					String t = UUID.randomUUID().toString();
					String fileName = t;
					if (!fileUpload.getExtName(uploadFileName).equals(""))
					{
						fileName = t + "." + fileUpload.getExtName(uploadFileName);
					}
					try {
						fileUpload.uploadFile(upload, realPath, fileName);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return "fail";
					}
					AttachmentIn attachmentIn = new AttachmentIn();
					attachmentIn.setCategory(attCategory);
					attachmentIn.setGuid(t);
					attachmentIn.setFile_name(uploadFileName);
					attachmentIn.setContent_type(uploadContentType);
					attachmentIn.setUp_time(dateFormat1.format(new Date()));
					attachmentIn.setExt_file_url(lPath + "/" + fileName);
					attachmentIn.setExt_file_path(lPath + "/" + fileName);
					ReqPacket req2 = attachmentIn.toReqPacketForCreate();
					req2.setFrom("attachment");
					JrDbHelp jr2 = new JrDbHelp();
					ResPacket  rp2=jr2.create(req2);
					
					if (rp2.getStatus().equals("1")){
						ReqPacket req3 = new ReqPacket();
						req3.setFrom("attachment");
						List<String> conditions3 =  new ArrayList<String>();
						conditions3.add("guid=?");
						conditions3.add(attachmentIn.getGuid());
						req3.setConditions(conditions3);
						JrDbHelp jr3 = new JrDbHelp();
						ResPacket  rp3=jr3.find_all(req3);
						if (rp3.getStatus().equals("1")){
							List<AttachmentIn> attList = new AttachmentIn().getObjects(rp3);
							if (attList.size() == 0){
							}
							else{
								wuserSub_update.setPaperwork_id(attList.get(0).getId());
							}
						}
					}
				}
				//附件上传完毕
				
				
				req= new ReqPacket();
				req= wuserSub_update.toReqPacketForUpdate();
				String up_id = wuserSub_update.getId();
				req.setId(up_id);
				req.setFrom("w_user");
				jr = new JrDbHelp();
				rp=jr.update(req);
				if (rp.getStatus().equals("1")){
					//开始记录信息修改情况////////////////
					error = "修改成功";
					error =this.getText("common.success");
					return SUCCESS;
				}
				else{
					return "fail";
				}
			}
		}
		else{
			return "fail";
		}
	}
	
	public String register() {
		return SUCCESS;
	}
	
	public String registerDo() throws Exception {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String validateCode = request.getSession().getAttribute(
		RandomValidateCode.RANDOMCODEKEY).toString();
		if (validateCode.equals(veryCode)) {
			if ( check_33(wuser.getCode().trim()).equals("1") ) {
				code = wuser.getCode().trim();
				Wuser u = new Wuser();
				u.setCode(wuser.getCode().trim());
				u.setNameIdcard(wuser.getNameIdcard());
				u.setPassword(wuser.getPassword());
				u.setIdCard(wuser.getIdCard());
				u.setTelephone(wuser.getTelephone());
				u.setEmail(wuser.getEmail());
				u.setIdentity(wuser.getIdentity());
				u.setPostCode(wuser.getPostCode());
				u.setCompany(wuser.getCompany());
				u.setAddr(wuser.getAddr());
				u.setFax(wuser.getFax());
				u.setOtherContact(wuser.getOtherContact());
				u.setRemark(wuser.getRemark());
				u.setActive("1");
				u.setStatus("Y");
				//上传附件
				if (upload !=null){
					FileUpload fileUpload = new FileUpload();
					baseDicMap=this.getBaseDicMap();
					if (baseDicMap.get("9102").get(attCategory)==null)
					{
						return "fail";	
					}
					attachmentConfigService.initAttachmentConfig();
					String lPath = fileUpload.logicPath(App.attachmentConfig.get(attCategory)); //创建并获取逻辑路径
					String realPath = App.attachmentConfig.get(attCategory) + lPath; //真实路径
					
					String t = UUID.randomUUID().toString();
					String fileName = t;
					if (!fileUpload.getExtName(uploadFileName).equals(""))
					{
						fileName = t + "." + fileUpload.getExtName(uploadFileName);
					}
					try {
						fileUpload.uploadFile(upload, realPath, fileName);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return "fail";
					}
					Attachment attachment = new Attachment();
					attachment.setCategory(attCategory);
					attachment.setGuid(t);
					attachment.setFileName(uploadFileName);
					attachment.setContentType(uploadContentType);
					attachment.setUpTime(dateFormat1.format(new Date()));
					attachment.setExtFilePath(lPath + "/" + fileName);
					attachment.setExtFileUrl(lPath + "/" + fileName);
					attachmentService.insertAttachment(attachment);
					
					Object[] value = {attachment.getGuid()};
					attachment = attachmentService.findAttachmentList(" and guid=?", value).get(0);
					
					u.setPaperworkId(attachment.getId());
				}
					
				wuserService.insertWuser(u);
				
				session.put("userType", "party");
				session.put("userCategory", "12");
				session.put("userCode", code);
				session.put("userName", u.getNameIdcard());
				session.put("userRole", "0101");
				
				return SUCCESS;
			} else{
				error = "用户名重复，注册失败。";
				error = this.getText("wuser.registerDo.mes_1"); 
				return "fail";
			}
		}
		error = "注册失败";
		error = this.getText("wuser.registerDo.mes_2"); 
		return "fail";
	}
	
	public String check_3() throws Exception {
		check_3 = check_33(code);
		return SUCCESS;
	}
	
	private String check_33(String u_code) throws Exception {	
		String r = "0";
		if (u_code.indexOf("party") >= 0){
			r = "0";
		}else{
			if (wuserService.check_3(u_code).equals("0")){
				r = "0";
			}else{
				ReqPacket req= new ReqPacket();
				req.setFrom("w_user");
				List<String> conditions =  new ArrayList<String>();
				conditions.add("code=?");
				conditions.add(u_code);
				req.setConditions(conditions);
				JrDbHelp jr = new JrDbHelp();
				ResPacket  rp=jr.find_all(req);
				List<cn.com.zc.jrdbModel.WUser> uList = new cn.com.zc.jrdbModel.WUser().getObjects(rp);
				if (uList.size()>0){
					r = "0";
				}else{
					r = "1";
				}
			}
		}
		return r;
	}
	
	
}
