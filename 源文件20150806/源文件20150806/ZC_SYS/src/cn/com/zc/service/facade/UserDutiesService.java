package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Duties;
import cn.com.zc.model.UserDuties;

public interface UserDutiesService {
	public List<Duties> toUpdateUd(String code);
	public List<UserDuties> findUdList(String userCode);
	public void insertUd(UserDuties ud);
	public void deleteUd(UserDuties ud);
}
