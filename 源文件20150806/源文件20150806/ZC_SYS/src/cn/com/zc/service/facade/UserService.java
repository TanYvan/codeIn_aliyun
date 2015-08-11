package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.User;

public interface UserService {
	public List<User> findUserList(String condition,Object[] value,int pageNo,int pageSize);
	public void insertUser(User user);
	public void updateUser(User user);
	public void deleteUser(int id);
	public int getCounts(String condition,Object[] value);
	public User toChangePassWord(int id);
	public String changePassWord(int id,String old_password,String password);
	public String login(String code,String password);
}
