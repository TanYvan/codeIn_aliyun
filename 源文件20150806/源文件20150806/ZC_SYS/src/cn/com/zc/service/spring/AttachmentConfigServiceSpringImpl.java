package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Attachment;
import cn.com.zc.model.AttachmentConfig;
import cn.com.zc.model.Dictionary;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.AttachmentService;

public class AttachmentConfigServiceSpringImpl extends EntityDaoHibernate implements
		AttachmentConfigService {
	public List<AttachmentConfig> findAttachmentConfigList(String condition, Object[] value) {
		// TODO Auto-generated method stub
		List<AttachmentConfig> AttachmentConfigList = new ArrayList<AttachmentConfig>();
		String sql = "from AttachmentConfig where (1=1) " + condition;
		AttachmentConfigList = super.findByHql(sql, value);
		return AttachmentConfigList;
	}
	
	
	public void flushAttachmentConfig(){
		Object[] value = null;
		HashMap<String,String> tmp = new HashMap<String,String>();
		List<AttachmentConfig> attList = new ArrayList<AttachmentConfig>();
		attList = super.findByHql("from AttachmentConfig",value);
		Iterator iter = attList.iterator();
		while(iter.hasNext()){
			AttachmentConfig att = (AttachmentConfig) iter.next();
			tmp.put(att.getCode(), att.getExtranetDir());
		}
		App.attachmentConfig = tmp;
	}
	public void initAttachmentConfig(){
		if (App.attachmentConfig==null){
			flushAttachmentConfig();
		}
	}
	
	public void insertAttachmentConfig(AttachmentConfig AttachmentConfig) {
		// TODO Auto-generated method stub
		super.save(AttachmentConfig);
	}

	public void updateAttachmentConfig(AttachmentConfig AttachmentConfig) {
		// TODO Auto-generated method stub
		super.update(AttachmentConfig);
	}
	
	public void deleteAttachmentConfig(int id) {
		// TODO Auto-generated method stub
		AttachmentConfig attachmentConfig = new AttachmentConfig();
		attachmentConfig.setId(id);
		super.delete(attachmentConfig);
	}
	
}
