package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Duties;


public interface DutiesService {
public List<Duties> getDutyList(String condition,Object[] value,int pageNo,int pageSize);
public int getCounts(String condition,Object[] value);
}
