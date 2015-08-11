package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import javax.jms.Session;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.User;
import cn.com.zc.service.facade.UserService;

public class UserServiceSpringImpl extends EntityDaoHibernate implements
		UserService {

	public List<User> findUserList(String condition, Object[] value, int pageNo, int pageSize) {
		List<User> userList = new ArrayList<User>();
		String sql = "from User where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			userList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			userList = super.findByHql(sql,value);
		}
		return userList;
	}

	public int getCounts(String condition,Object[] value) {
		List<User> userList = new ArrayList<User>();
		String sql = "from User where (1=1) " + condition;
		userList = super.findByHql(sql, value);
		return userList.size();
	}

	public void deleteUser(int id) {
		User user = new User();
		user.setId(id);
		super.delete(user);
	}

	public void insertUser(User user) {
		super.save(user);
	}

	public void updateUser(User user) {
		super.update(user);
	}
	
	public User toChangePassWord(int id){
		List<User> userList = new ArrayList<User>();
		String sql="from User where id='"+id+"'";
		userList=super.findByHql(sql, null);
		User user=userList.get(0);
		return user;
	}
	
	public String changePassWord(int id,String old_password,String password){
		List<User> userList = new ArrayList<User>();
		String sql="from User where id='"+id+"' and password='"+old_password+"'";
		userList=super.findByHql(sql, null);
		if(userList.size()<=0){
			return "fail";
		}
		User user=userList.get(0);
		user.setPassword(password);
		super.save(user);
		return "success";
	}
	public String login(String code,String password){
		List<User> userList = new ArrayList<User>();
		String sql="from User where code=? and password=?";
		Object[] value={code,password};
		userList=super.findByHql(sql, value);
		if(userList.size()<=0){
			return "fail";
		}
		return "success";
	}
}
