package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Language;

public interface LanguageService {
	public List<Language> findLanguageList(String condition, Object[] value);

	public void insertLanguage(Language language);

	public void updateLanguage(Language language);

	public void deleteLanguage(int id);
	
}
