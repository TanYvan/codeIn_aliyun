package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Region;

public interface RegionService {
	public List<Region> findRegionList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertRegion(Region region);

	public void updateRegion(Region region);

	public void deleteRegion(int id);
	
	public int getCounts(String condition,Object[] value);
	
	public String regionTree();
	
	public String regionTreeNode(String outString, String parentCode);
	
	public void flushRegion();
	
	public void initRegion();
}
