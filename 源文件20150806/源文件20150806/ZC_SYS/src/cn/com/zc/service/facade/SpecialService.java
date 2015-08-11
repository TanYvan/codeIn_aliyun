package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Special;

public interface SpecialService {
	public List<Special> findSpecialList(String condition, Object[] value,
			int pageNo, int pageSize);

	public void insertSpecial(Special special);

	public void updateSpecial(Special special);

	public void deleteSpecial(int id);

	public int getCounts(String condition, Object[] value);

}
