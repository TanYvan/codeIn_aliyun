package cn.com.zc.web;

import java.util.List;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Resume;
import cn.com.zc.service.facade.ResumeService;

public class ResumeAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String searchType;
	private String condition;
	private String searchValue;
	private String rows;// 每页显示的记录数
	private int id;
	private int pageNo = 1;
	private int pageSize = 10;
	private int pageCount;
	
	private Resume resume;
	private List<Resume> resumeList;
	private ResumeService resumeService;
	private String result;
	private String code;
	private String ResumeCode;
	
	private String error;
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getRows() {
		return rows;
	}

	public void setRows(String rows) {
		this.rows = rows;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	private String page;// 当前第几页
	private int count;

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	

	public String getResumeCode() {
		return ResumeCode;
	}

	public void setResumeCode(String ResumeCode) {
		this.ResumeCode = ResumeCode;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}

	public List<Resume> getResumeList() {
		return resumeList;
	}

	public void setResumeList(List<Resume> resumeList) {
		this.resumeList = resumeList;
	}

	public ResumeService getResumeService() {
		return resumeService;
	}

	public void setResumeService(ResumeService resumeService) {
		this.resumeService = resumeService;
	}
	
	public String findResumeList() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { session.get("userCode").toString() };
			resumeList = resumeService.findResumeList(" and used='Y' and arbit_id=?", value);
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}

	public String toInsertResume() {
		return SUCCESS;
	}
	
	public String insertResume() {
		if (session.get("userType").toString().equals("arbitman")){
			resume.setStatus(1);
			resume.setUsed("Y");
			resume.setArbitId(session.get("userCode").toString());
			resumeService.insertResume(resume);
			//error = "新建成功";
			error = this.getText("common.mes_21");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String toUpdateResume() {
		Object[] value = { id };
		if (session.get("userType").toString().equals("arbitman")){
			resumeList = resumeService.findResumeList("and id=?", value);
			resume = resumeList.get(0);
			if (resume.getArbitId().equals(session.get("userCode").toString())){
				return SUCCESS;
			}
			else{
				return "fail";
			}
		}
		else{
			return "fail";
		}
	}

	public String updateResume() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { resume.getId() };
			resumeList = resumeService.findResumeList("and id=?", value);
			Resume resume_up = resumeList.get(0);
			if (resume_up.getArbitId().equals(session.get("userCode").toString())){
				resume_up.coverSelf(resume);
				resume_up.setArbitId(session.get("userCode").toString());
				resumeService.updateResume(resume_up);
				//error = "修改成功";
				error = this.getText("common.mes_22");
				return SUCCESS;
			}
			else{
				return "fail";
			}
		}
		else{
			return "fail";
		}
	}
	
	public String deleteResume() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { id };
			resumeList = resumeService.findResumeList(" and id=?", value);
			Resume resume_up = resumeList.get(0);
			if (resume_up.getArbitId().equals(session.get("userCode").toString())){
				resume_up.setUsed("N");
				resumeService.updateResume(resume_up);
				//error = "删除成功";
				error = this.getText("common.mes_23");
				return SUCCESS;
			}
			else{
				return "fail";
			}
		}
		else{
			return "fail";
		}
	}
}
