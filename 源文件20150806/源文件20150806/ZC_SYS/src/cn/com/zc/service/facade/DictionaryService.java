package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Dictionary;

public interface DictionaryService {
	public List<Dictionary> findDictionaryList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertDictionary(Dictionary dictionary);

	public void updateDictionary(Dictionary dictionary);

	public void deleteDictionary(int id);
	
	public int getCounts(String condition,Object[] value);
	
	public void flushDictionary();
	
	public void initDictionary();
}
