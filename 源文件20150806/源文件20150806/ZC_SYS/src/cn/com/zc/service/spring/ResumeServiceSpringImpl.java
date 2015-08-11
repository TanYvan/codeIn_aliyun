package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Resume;
import cn.com.zc.service.facade.ResumeService;

public class ResumeServiceSpringImpl extends EntityDaoHibernate implements
		ResumeService {

	public void deleteResume(int id) {
		// TODO Auto-generated method stub
		Resume resume = new Resume();
		resume.setId(id);
		super.delete(resume);
	}

	public List<Resume> findResumeList(String condition,Object[] value) {
		// TODO Auto-generated method stub
		List<Resume> ResumeList = new ArrayList<Resume>();
		String sql = "from Resume where (1=1) " + condition;
		ResumeList = super.findByHql(sql,value);
		return ResumeList;
	}

	public void insertResume(Resume Resume) {
		// TODO Auto-generated method stub
		super.save(Resume);
	}

	public void updateResume(Resume Resume) {
		// TODO Auto-generated method stub
		super.update(Resume);
	}

}
