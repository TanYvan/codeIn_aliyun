package cn.com.zc.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import cn.com.zc.util.MD5;
import org.junit.internal.runners.statements.Fail;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Arbitman;
import cn.com.zc.model.ArbitmanAtt;
import cn.com.zc.model.Attachment;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.SysArgs;
import cn.com.zc.service.facade.ArbitmanAttService;
import cn.com.zc.service.facade.ArbitmanService;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.AttachmentService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.SysArgService;
import cn.com.zc.util.FileUpload;
import cn.com.zc.util.ListToJson;
import cn.com.zc.util.RandomValidateCode;

public class ArbitmanAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String rows;// 每页显示的记录数
	private List<Arbitman> arbitmanList;
	private Arbitman arbitman;
	private ArbitmanService arbitmanService;
	private List<SysArgs> sysArgList;
	private SysArgs sysArg;
	private SysArgService sysArgService;
	private String result;
	private String code;
	private File file;
	private String page;// 当前第几页
	private int count;
	private List<String> identityList;
	private String error;
	private String veryCode;
	private File upload;
	private String uploadFileName;
	private String uploadContentType;
	private AttachmentConfigService  attachmentConfigService;
	private ArbitmanAttService arbitmanAttService;
	private AttachmentService attachmentService;
	private Attachment attachment;
	private String attPath;
	
	public void setArbitmanAttService(ArbitmanAttService arbitmanAttService) {
		this.arbitmanAttService = arbitmanAttService;
	}

	public ArbitmanAttService getarbitmanAttService() {
		return arbitmanAttService;
	}
	
	public AttachmentService getAttachmentService() {
		return attachmentService;
	}
	
	public void setAttachmentService(AttachmentService attachmentService) {
		this.attachmentService = attachmentService;
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
	
	public String getVeryCode() {
		return veryCode;
	}

	public void setVeryCode(String veryCode) {
		this.veryCode = veryCode;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
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

	private int id;
	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<String> getIdentityList() {
		return identityList;
	}

	public void setIdentityList(List<String> identityList) {
		this.identityList = identityList;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	private String ArbitmanCode;

	public String getArbitmanCode() {
		return ArbitmanCode;
	}

	public void setArbitmanCode(String ArbitmanCode) {
		this.ArbitmanCode = ArbitmanCode;
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


	public Arbitman getArbitman() {
		return arbitman;
	}

	public void setArbitman(Arbitman arbitman) {
		this.arbitman = arbitman;
	}

	public List<Arbitman> getArbitmanList() {
		return arbitmanList;
	}

	public void setArbitmanList(List<Arbitman> arbitmanList) {
		this.arbitmanList = arbitmanList;
	}

	public ArbitmanService getArbitmanService() {
		return arbitmanService;
	}

	public void setArbitmanService(ArbitmanService arbitmanService) {
		this.arbitmanService = arbitmanService;
	}

	public SysArgService getSysArgService() {
		return sysArgService;
	}

	public void setSysArgService(SysArgService sysArgService) {
		this.sysArgService= sysArgService;
	}

	public String me() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = {session.get("userCode").toString()};
			sysArgList = sysArgService.findSysArgList(" and code='2000'", null, 1, 1);//取开启了仲裁员信息同步模式
			arbitmanList = arbitmanService.findArbitmanList(" and code=?", value, 1, 1);
			if (arbitmanList.size()==0){
				if (sysArgList.get(0).getVal().equals("1")){
					return "inside_sub";//因为开启了仲裁员信息同步模式，所以访问同步表
				}
				else{
					return "inside";//因为开启了仲裁员信息同步模式，所以访问内网中在原信息表
				}		
			}
			else{
				arbitman = arbitmanList.get(0);
				if (arbitman.getStatusA()==1) {
					if (sysArgList.get(0).getVal().equals("1")){
						return "inside_sub";//因为开启了仲裁员信息同步模式，所以访问同步表
					}
					else{
						return "inside";//因为开启了仲裁员信息同步模式，所以访问内网中在原信息表
					}
				} else {
					return "outside";
				}
			}
		}else{
			return "fail";
		}
	}
	
	public String register() {
		return SUCCESS;
	}
	
	public String registerDo() {
		MD5 getMD5 = new MD5();
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String validateCode = request.getSession().getAttribute(
		RandomValidateCode.RANDOMCODEKEY).toString();
		if (validateCode.equals(veryCode)) {
			code = arbitmanService.takeCode();
			Arbitman arb = new Arbitman();
			
			arb.setCode(code);
			arb.setWork1("1");
			arb.setZy("1");
			arb.setSecjob("h");
			arb.setDoforeign("1");
			arb.setUsed("Y");
			arb.setName(arbitman.getName());
			
			arb.setPassword(getMD5.GetMD5Code(arbitman.getPassword()));
			arb.setIdCard(arbitman.getIdCard());
			arb.setNameIdcard(arbitman.getName());
			arb.setNameIdcardEn(arbitman.getName());
			arb.setMobiletel(arbitman.getMobiletel());
			arb.setEmail(arbitman.getEmail());
			arb.setAddr(arbitman.getAddr());
			arb.setRegisterTime(dateFormat1.format(new Date()));
			
			arbitmanService.insertArbitman(arb);
			
			session.put("userType", "arbitman");
			session.put("userCategory","03");
			session.put("userCode", code);
			session.put("userName", arbitman.getNameIdcard());
			session.put("userRole", "0102");
			
			return SUCCESS;
		}
		//error = "注册失败";
		error = this.getText("arbitman.registerDo.mes_2"); 
		return "fail";
	}
	
	public String toUpdateArbitman() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { session.get("userCode") };
			arbitmanList = arbitmanService.findArbitmanList(" and code=?", value, 1,1);
			arbitman = arbitmanList.get(0);
			if (arbitman.getIdentity() != null) {
				String[] identities = arbitman.getIdentity().split(",");
				identityList = Arrays.asList(identities);
			}
			if (arbitman.getPaperworkId()!=0){
				Object[] value2 = {arbitman.getPaperworkId()};
				String condition = "from Attachment where id=?";
				List<Attachment> attachmentList = attachmentService.findAttachmentListFor(condition, value2);
				if (attachmentList.size()>0){
					attachment = attachmentList.get(0);
					attPath = App.attPath(attachment.getCategory(),attachment.getExtFilePath());
				}
			}
			else{
				attPath="";
			}
			
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String updateArbitman() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { session.get("userCode") };
			arbitmanList = arbitmanService.findArbitmanList("and code=?", value, 1,1);
			if (arbitmanList.size()==0){
				return "fail";
			}
			else{
				if (arbitman.getIdentity()==null){
					arbitman.setIdentity("");
				}
				else{
					arbitman.setIdentity(arbitman.getIdentity().replace(" ", ""));
				}
				Arbitman arbitman_update = arbitmanList.get(0);
				arbitman_update.coverSelf(arbitman);
				arbitman_update.setCode(session.get("userCode").toString());
				
				if (upload!=null){
					FileUpload fileUpload = new FileUpload();
					baseDicMap=this.getBaseDicMap();
					
					attachmentConfigService.initAttachmentConfig();
					String lPath = fileUpload.logicPath(App.attachmentConfig.get("0003")); //创建并获取逻辑路径
					String realPath = App.attachmentConfig.get("0003") + lPath; //真实路径
					
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
					attachment.setCategory("0003");
					attachment.setGuid(t);
					attachment.setFileName(uploadFileName);
					attachment.setContentType(uploadContentType);
					attachment.setUpTime(dateFormat1.format(new Date()));
					attachment.setExtFilePath(lPath + "/" + fileName);
					attachment.setExtFileUrl(lPath + "/" + fileName);
					attachmentService.insertAttachment(attachment);
					Object[] value3 = {attachment.getGuid()};
					attachment = attachmentService.findAttachmentList(" and guid=?", value3).get(0);
					
					if (arbitman_update.getPaperworkId()!= null &&  arbitman_update.getPaperworkId()!= 0){
						Object[] value4 = { arbitman_update.getPaperworkId() };
						List<ArbitmanAtt> att_list = arbitmanAttService.findArbitmanAttList(" and att_id=?", value4);
						if (att_list.size()>0){
							ArbitmanAtt att = att_list.get(0);
							att.setAttId(attachment.getId());
							att.setStatus(0);
							att.setUsed("Y");
							att.setArbitman(session.get("userCode").toString());
							arbitmanAttService.updateArbitmanAtt(att);
						}else{
							ArbitmanAtt att = new ArbitmanAtt();
							att.setAttId(attachment.getId());
							att.setStatus(0);
							att.setUsed("Y");
							att.setArbitman(session.get("userCode").toString());
							arbitmanAttService.insertArbitmanAtt(att);
						}
					}else{
						ArbitmanAtt att = new ArbitmanAtt();
						att.setAttId(attachment.getId());
						att.setStatus(0);
						att.setUsed("Y");
						att.setArbitman(session.get("userCode").toString());
						arbitmanAttService.insertArbitmanAtt(att);
					}
					arbitman_update.setPaperworkId(attachment.getId());
				}
				
				arbitmanService.updateArbitman(arbitman_update);
				//error = "修改成功";
				error = this.getText("common.mes_22");
				return SUCCESS;
			}
		}
		else{
			return "fail";
		}
	}

	public String checkSameKey() {
		Object[] value = { code };
		arbitmanList = arbitmanService.findArbitmanList("and code=?", value, 0,
				0);
		if (arbitmanList.size() > 0) {
			result = "fail";
		} else {
			result = "success";
		}
		return "result";
	}
}
