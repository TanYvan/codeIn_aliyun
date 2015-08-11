package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Resume;

public interface ResumeService {
	public List<Resume> findResumeList(String condition,Object[] value);

	public void insertResume(Resume resume);

	public void updateResume(Resume resume);

	public void deleteResume(int id);
	
}
