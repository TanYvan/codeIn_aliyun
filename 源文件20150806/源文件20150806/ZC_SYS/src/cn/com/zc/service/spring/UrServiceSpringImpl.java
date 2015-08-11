package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Roles;
import cn.com.zc.model.Urs;
import cn.com.zc.model.User;
import cn.com.zc.service.facade.UrService;

public class UrServiceSpringImpl extends EntityDaoHibernate implements
		UrService {
	public List<Roles> toUpdateUr(String code,int pageNo,int pageSize) {
		Object[] values={code};
        String sql="from User where code = ?";
        List<User> userList=super.findByHql(sql, values,pageNo,pageSize);
        List<Roles> roleList = new ArrayList<Roles>(userList.get(0).getRoles());
		return roleList;
	}
	public List<Urs> findUrList(String userCode){
		String sql="from Urs where userCode='"+userCode+"' order by id";
		List<Urs> urList=super.findByHql(sql, null);
		return urList;
	}
	public void insertUr(Urs urs){
		super.save(urs);
	}
	public void deleteUr(Urs urs){
		String sql="from Urs where userCode=? and roleCode=?";
		Object[] value={urs.getUserCode(),urs.getRoleCode()};
		List<Urs> urList=super.findByHql(sql, value);
		if(urList.size()>0){
			super.delete(urList.get(0));
		}
	}
	
	public int getCounts(String code){
		List<Roles> roleList = new ArrayList<Roles>();
		Object[] values={code};
        String sql="from User where code = ?";
		roleList = super.findByHql(sql, values);
		return roleList.size();
	}
}
