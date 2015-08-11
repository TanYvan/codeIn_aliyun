package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Roles;

public interface RoleService {
	public List<Roles> findRoleList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertRole(Roles role);

	public void updateRole(Roles role);

	public void deleteRole(int id);
	
	public int getCounts(String condition,Object[] value);
}
