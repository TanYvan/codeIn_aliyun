package cn.com.zc.web;

import java.util.List;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Language;
import cn.com.zc.service.facade.LanguageService;

public class LanguageAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;	
	private String error;
	private Language language;
	private List<Language> languageList;
	private LanguageService languageService;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public List<Language> getLanguageList() {
		return languageList;
	}

	public void setLanguageList(List<Language> languageList) {
		this.languageList = languageList;
	}

	public LanguageService getLanguageService() {
		return languageService;
	}

	public void setLanguageService(LanguageService languageService) {
		this.languageService = languageService;
	}
	
	public String findLanguageList() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { session.get("userCode").toString() };
			languageList = languageService.findLanguageList(" and used='Y' and arbitman=?", value);
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String toInsertLanguage() {
		return SUCCESS;
	}
	
	public String insertLanguage() {
		if (session.get("userType").toString().equals("arbitman")){
			language.setUsed("Y");
			language.setStatus(1);
			language.setArbitman(session.get("userCode").toString());
			languageService.insertLanguage(language);
			//error = "新建成功";
			error = this.getText("common.mes_21");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String toUpdateLanguage() {
		Object[] value = { id };
		languageList = languageService.findLanguageList(" and id=?", value);
		language = languageList.get(0);
		return SUCCESS;
	}

	public String updateLanguage() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = {language.getId()};
			languageList = languageService.findLanguageList("and id=?", value);
			Language language_up = languageList.get(0);
			if (language_up.getArbitman().equals(session.get("userCode").toString())){
				language_up.coverSelf(language);
				language_up.setArbitman(session.get("userCode").toString());
				languageService.updateLanguage(language_up);
				//error = "修改成功";
				error = this.getText("common.mes_22");
				return SUCCESS;
			}
			else{
				return "fail";
			}
		}
		else{
			return "fail";
		}
	}
	
	public String deleteLanguage() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { id };
			languageList = languageService.findLanguageList(" and id=?", value);
			Language language_up = languageList.get(0);
			if (language_up.getArbitman().equals(session.get("userCode").toString())){
				language_up.setUsed("N");
				languageService.updateLanguage(language_up);
				//error = "删除成功";
				error = this.getText("common.mes_23");
				return SUCCESS;
			}
			else{
				return "fail";
			}
		}
		else{
			return "fail";
		}
	}
}
