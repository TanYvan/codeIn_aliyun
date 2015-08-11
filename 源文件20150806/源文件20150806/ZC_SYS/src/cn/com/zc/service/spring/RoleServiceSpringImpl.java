package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Roles;
import cn.com.zc.service.facade.RoleService;

public class RoleServiceSpringImpl extends EntityDaoHibernate implements
		RoleService {

	public void deleteRole(int id) {
		// TODO Auto-generated method stub
		Roles roles = new Roles();
		roles.setId(id);
		super.delete(roles);
	}

	public List<Roles> findRoleList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Roles> roleList = new ArrayList<Roles>();
		String sql = "from Roles where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			roleList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			roleList = super.findByHql(sql, value);
		}
		return roleList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<Roles> roleList = new ArrayList<Roles>();
		String sql = "from Roles where (1=1) " + condition;
		roleList = super.findByHql(sql, value);
		return roleList.size();
	}

	public void insertRole(Roles role) {
		// TODO Auto-generated method stub
        super.save(role);
	}

	public void updateRole(Roles role) {
		// TODO Auto-generated method stub
		super.update(role);
	}
	

}
