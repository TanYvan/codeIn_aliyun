package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Attachment;
import cn.com.zc.service.facade.AttachmentService;

public class AttachmentServiceSpringImpl extends EntityDaoHibernate implements
		AttachmentService {

	public void deleteAttachment(int id) {
		// TODO Auto-generated method stub
		Attachment attachment = new Attachment();
		attachment.setId(id);
		super.delete(attachment);
	}

	public List<Attachment> findAttachmentList(String condition, Object[] value) {
		// TODO Auto-generated method stub
		List<Attachment> AttachmentList = new ArrayList<Attachment>();
		String sql = "from Attachment where (1=1) " + condition;
		AttachmentList = super.findByHql(sql, value);
		return AttachmentList;
	}

	public List<Attachment> findAttachmentListFor(String sql, Object[] value) {
		List<Attachment> AttachmentList = new ArrayList<Attachment>();
		AttachmentList = super.findByHql(sql, value);
		return AttachmentList;
	}
	
	public void insertAttachment(Attachment Attachment) {
		// TODO Auto-generated method stub
		super.save(Attachment);
	}

	public void updateAttachment(Attachment Attachment) {
		// TODO Auto-generated method stub
		super.update(Attachment);
	}
}
