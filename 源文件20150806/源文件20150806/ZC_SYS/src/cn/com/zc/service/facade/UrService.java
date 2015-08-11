package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Roles;
import cn.com.zc.model.Urs;

public interface UrService {
	public List<Roles> toUpdateUr(String code,int pageNo,int pageSize);
	public List<Urs> findUrList(String userCode);
	public void insertUr(Urs urs);
	public void deleteUr(Urs urs);
	public int getCounts(String code);
}
