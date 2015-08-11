package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Language;
import cn.com.zc.service.facade.LanguageService;

public class LanguageServiceSpringImpl extends EntityDaoHibernate implements
		LanguageService {

	public void deleteLanguage(int id) {
		// TODO Auto-generated method stub
		Language language = new Language();
		language.setId(id);
		super.delete(language);
	}

	public List<Language> findLanguageList(String condition, Object[] value) {
		// TODO Auto-generated method stub
		List<Language> LanguageList = new ArrayList<Language>();
		String sql = "from Language where (1=1) " + condition;
		LanguageList = super.findByHql(sql, value);
		return LanguageList;
	}

	public void insertLanguage(Language Language) {
		// TODO Auto-generated method stub
		super.save(Language);
	}

	public void updateLanguage(Language Language) {
		// TODO Auto-generated method stub
		super.update(Language);
	}

}
