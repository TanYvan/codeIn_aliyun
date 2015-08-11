package cn.com.zc.web;


import java.util.ArrayList;
import java.util.List;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.AttachmentConfigIn;
import cn.com.zc.jrdbModel.DictionaryIn;
import cn.com.zc.jrdbModel.DocFormatIn;
import cn.com.zc.jrdbModel.RegionIn;
import cn.com.zc.model.AttachmentConfig;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.DocFormat;
import cn.com.zc.model.Region;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.DocFormatService;
import cn.com.zc.service.facade.MenuService;
import cn.com.zc.service.facade.RegionService;
import cn.com.zc.service.facade.SysArgService;


public class SysUpAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private DictionaryService dictionaryService;
	private SysArgService sysArgService;
	private MenuService menuService;
	private AttachmentConfigService attachmentConfigService;
	private RegionService regionService;
	private DocFormatService docFormatService;
	private String error;
	
	public DocFormatService getDocFormatService() {
		return docFormatService;
	}

	public void setDocFormatService(DocFormatService docFormatService) {
		this.docFormatService = docFormatService;
	}
	
	public RegionService getRegionService() {
		return regionService;
	}

	public void setRegionService(RegionService regionService) {
		this.regionService = regionService;
	}
	
	public SysArgService getSysArgService() {
		return sysArgService;
	}

	public void setSysArgService(SysArgService sysArgService) {
		this.sysArgService = sysArgService;
	}
	
	public DictionaryService getDictionaryService() {
		return dictionaryService;
	}

	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}
	
	public AttachmentConfigService getAttachmentConfigService() {
		return attachmentConfigService;
	}

	public void setattachmentConfigService(AttachmentConfigService attachmentConfigService) {
		this.attachmentConfigService = attachmentConfigService;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public MenuService getMenuService() {
		return menuService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}
	
	public String list() {
		return SUCCESS;
	}
	
	public String down() throws Exception {
		
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_dictionaries");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("1=1");
		req.setConditions(conditions);
		req.setOrder("typ_code asc,data_val asc");
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		List<DictionaryIn> dicInList = new DictionaryIn().getObjects(rp);
		for (DictionaryIn dicIn:dicInList){
			Object[] value = {dicIn.getTyp_code(), dicIn.getData_val()};
			List<Dictionary> dicList = dictionaryService.findDictionaryList(" and typ_code=? and data_val=?", value, 0, 0);
			Dictionary dic;
			if (dicList.size()>0){
				dic = dicList.get(0);
				dic.setDataDescribe(dicIn.getData_describe());
				dic.setDataParent(dicIn.getData_parent());
				dic.setDataText(dicIn.getData_text());
				dic.setDataTextTw(dicIn.getData_text_tw());
				dic.setDataTextEn(dicIn.getData_text_en());
				dic.setDataVal(dicIn.getData_val());
				dic.setInd(Integer.parseInt(dicIn.getInd()));
				dic.setState(dicIn.getState());
				dic.setTypCode(dicIn.getTyp_code());
				dic.setUsed(dicIn.getUsed());
				dictionaryService.updateDictionary(dic);
			}
			else{
				dic = new Dictionary();
				dic.setDataDescribe(dicIn.getData_describe());
				dic.setDataParent(dicIn.getData_parent());
				dic.setDataText(dicIn.getData_text());
				dic.setDataTextTw(dicIn.getData_text_tw());
				dic.setDataTextEn(dicIn.getData_text_en());
				dic.setDataVal(dicIn.getData_val());
				dic.setInd(Integer.parseInt(dicIn.getInd()));
				dic.setState(dicIn.getState());
				dic.setTypCode(dicIn.getTyp_code());
				dic.setUsed(dicIn.getUsed());
				dictionaryService.insertDictionary(dic);
			}
		}
		
		ReqPacket req2= new ReqPacket();
		req2.setFrom("attachment_config");
		List<String> conditions2 =  new ArrayList<String>();
		conditions2.add("1=1");
		req2.setConditions(conditions2);
		req2.setOrder("code asc");
		JrDbHelp jr2 = new JrDbHelp();
		ResPacket  rp2=jr2.find_all(req2);
		List<AttachmentConfigIn> attInList = new AttachmentConfigIn().getObjects(rp2);
		for (AttachmentConfigIn attIn:attInList){
			Object[] value = {attIn.getCode()};
			List<AttachmentConfig> attList = attachmentConfigService.findAttachmentConfigList(" and code=?", value );
			AttachmentConfig att;
			if (attList.size()>0){
				att = attList.get(0);
				att.setCode(attIn.getCode());
				att.setExtranetDir(attIn.getExtranet_dir());
				att.setName(attIn.getName());
				att.setNetworkDir(attIn.getNetwork_dir());
				att.setRemark(attIn.getRemark());
				attachmentConfigService.updateAttachmentConfig(att);
			}
			else{
				att = new AttachmentConfig();
				att.setCode(attIn.getCode());
				att.setExtranetDir(attIn.getExtranet_dir());
				att.setName(attIn.getName());
				att.setNetworkDir(attIn.getNetwork_dir());
				att.setRemark(attIn.getRemark());
				attachmentConfigService.insertAttachmentConfig(att);
			}
		}
		
		ReqPacket req3= new ReqPacket();
		req3.setFrom("regions");
		List<String> conditions3 =  new ArrayList<String>();
		conditions3.add("1=1");
		req3.setConditions(conditions3);
		req3.setOrder("code asc");
		JrDbHelp jr3 = new JrDbHelp();
		ResPacket  rp3=jr3.find_all(req3);
		List<RegionIn> regInList = new RegionIn().getObjects(rp3);
		for (RegionIn regIn:regInList){
			Object[] value = {regIn.getCode()};
			List<Region> regList = regionService.findRegionList(" and code=?", value ,0,0);
			Region reg;
			if (regList.size()>0){
				reg = regList.get(0);
				reg.setCode(regIn.getCode());
				reg.setArbitman_cost(regIn.getArbitman_cost());
				reg.setName(regIn.getName());
				reg.setNameTw(regIn.getName_tw());
				reg.setNameEn(regIn.getName_en());
				reg.setParent(regIn.getParent());
				reg.setRate_code(regIn.getRate_code());
				regionService.updateRegion(reg);
			}
			else{
				reg = new Region();
				reg.setCode(regIn.getCode());
				reg.setArbitman_cost(regIn.getArbitman_cost());
				reg.setName(regIn.getName());
				reg.setNameTw(regIn.getName_tw());
				reg.setNameEn(regIn.getName_en());
				reg.setParent(regIn.getParent());
				reg.setRate_code(regIn.getRate_code());
				regionService.insertRegion(reg);
			}
		}
		
		ReqPacket req4= new ReqPacket();
		req4.setFrom("tb_doc_formats");
		List<String> conditions4 =  new ArrayList<String>();
		conditions4.add("1=1");
		req4.setConditions(conditions4);
		req4.setOrder("code asc");
		JrDbHelp jr4 = new JrDbHelp();
		ResPacket  rp4=jr4.find_all(req4);
		List<DocFormatIn> docFormatInList = new DocFormatIn().getObjects(rp4);
		for ( DocFormatIn docFormatIn:docFormatInList){
			Object[] value = {docFormatIn.getCode()};
			List<DocFormat> docList = docFormatService.findDocFormatList(" and code=?", value ,0,0);
			DocFormat doc;
			if (docList.size()>0){
				doc = docList.get(0);
				doc.setUsed(docFormatIn.getUsed());
				doc.setCode(docFormatIn.getCode());
				doc.setName(docFormatIn.getName());
				doc.setNameTw(docFormatIn.getName_tw());
				doc.setNameEn(docFormatIn.getName_en());
				docFormatService.updateDocFormat(doc);
			}
			else{
				doc = new DocFormat();
				doc.setUsed(docFormatIn.getUsed());
				doc.setCode(docFormatIn.getCode());
				doc.setName(docFormatIn.getName());
				doc.setNameTw(docFormatIn.getName_tw());
				doc.setNameEn(docFormatIn.getName_en());
				docFormatService.insertDocFormat(doc);
			}
		}
		
		error = "下载完成";
		return SUCCESS;
	}
	
	public String flush() {
		sysArgService.flushSysArg();
		menuService.flushMenu();
		dictionaryService.flushDictionary();
		attachmentConfigService.flushAttachmentConfig();
		regionService.flushRegion();
		docFormatService.flushDocFormat();
		error = "刷新完成";
		return SUCCESS;
	}

}
