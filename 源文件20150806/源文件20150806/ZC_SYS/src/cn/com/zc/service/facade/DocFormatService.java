package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.DocFormat;

public interface DocFormatService {
	public List<DocFormat> findDocFormatList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertDocFormat(DocFormat docFormat);

	public void updateDocFormat(DocFormat docFormat);

	public void deleteDocFormat(int id);
	
	public int getCounts(String condition,Object[] value);
	
	public void flushDocFormat();
	
	public void initDocFormat();
}
