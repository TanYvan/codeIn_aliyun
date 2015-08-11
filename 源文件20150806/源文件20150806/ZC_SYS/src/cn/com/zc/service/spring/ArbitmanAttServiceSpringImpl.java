package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.ArbitmanAtt;
import cn.com.zc.model.Attachment;
import cn.com.zc.service.facade.ArbitmanAttService;
import cn.com.zc.service.facade.AttachmentService;

public class ArbitmanAttServiceSpringImpl extends EntityDaoHibernate implements 
ArbitmanAttService {

	public void deleteArbitmanAtt(int id) {
		// TODO Auto-generated method stub
		Attachment attachment = new Attachment();
		attachment.setId(id);
		super.delete(attachment);
	}

	public List<ArbitmanAtt> findArbitmanAttList(String condition, Object[] value) {
		// TODO Auto-generated method stub
		List<ArbitmanAtt> ArbitmanAttList = new ArrayList<ArbitmanAtt>();
		String sql = "from ArbitmanAtt where (1=1) " + condition;
		ArbitmanAttList = super.findByHql(sql, value);
		return ArbitmanAttList;
	}

	public void insertArbitmanAtt(ArbitmanAtt arbitmanAtt) {
		// TODO Auto-generated method stub
		super.save(arbitmanAtt);
	}

	public void updateArbitmanAtt(ArbitmanAtt arbitmanAtt) {
		// TODO Auto-generated method stub
		super.update(arbitmanAtt);
	}
}
