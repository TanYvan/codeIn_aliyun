package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.ArbitmanAtt;
import cn.com.zc.model.Attachment;

public interface ArbitmanAttService {
	public List<ArbitmanAtt> findArbitmanAttList(String condition, Object[] value);

	public void insertArbitmanAtt(ArbitmanAtt arbitmanAtt);

	public void updateArbitmanAtt(ArbitmanAtt arbitmanAtt);

	public void deleteArbitmanAtt(int id);

}
