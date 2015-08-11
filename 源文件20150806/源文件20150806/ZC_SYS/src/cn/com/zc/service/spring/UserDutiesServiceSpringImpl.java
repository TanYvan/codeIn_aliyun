package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Duties;
import cn.com.zc.model.User;
import cn.com.zc.model.UserDuties;
import cn.com.zc.service.facade.UserDutiesService;

public class UserDutiesServiceSpringImpl extends EntityDaoHibernate implements
		UserDutiesService {

	public List<Duties> toUpdateUd(String user) {
		Object[] values = { user };
		String sql = "from User where code = ?";
		List<User> userList = super.findByHql(sql, values);
		List<Duties> dutyList = new ArrayList<Duties>(userList.get(0)
				.getDuties());
		return dutyList;
	}

	public List<UserDuties> findUdList(String userCode) {
		String sql = "from UserDuties where user_code='" + userCode + "'";
		List<UserDuties> udList = super.findByHql(sql, null);
		return udList;
	}

	public void insertUd(UserDuties ud) {
		super.save(ud);
	}

	public void deleteUd(UserDuties ud) {
		String sql = "from UserDuties where user_code=? and duty_code=?";
		Object[] value = { ud.getUserCode(),ud.getDutyCode()};
		List<UserDuties> udList = super.findByHql(sql, value);
		if (udList.size() > 0) {
			super.delete(udList.get(0));
		}
	}
}
