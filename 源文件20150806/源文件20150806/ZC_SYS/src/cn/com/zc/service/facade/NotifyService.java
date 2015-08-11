package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Notify;

public interface NotifyService {
	public List<Notify> findNotifyList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertNotify(Notify notify);

	public void updateNotify(Notify notify);

	public void deleteNotify(int id);
	
	public int getCounts(String condition,Object[] value);
}
