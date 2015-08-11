package cn.com.zc.web;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Propose;
import cn.com.zc.model.ProposeReply;
import cn.com.zc.service.facade.ProposeService;
import cn.com.zc.util.ListToJson;

public class MyProposeAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private int count;
	private int pageNo = 1;
	private int pageSize = 10;
	private String page_str;
	private String title;
	private String start;
	private String end;
	private List<ProposeReply> replayList;
	private String content;
	private String rows;// 每页显示的记录数
	private String page;// 当前第几页
	private int pageCount;
	private Propose propose;
	private List<Propose> proposeList;
	private ProposeService proposeService;
	private String result;
	private String code;
	private String ProposeCode;
	private String error;
	private Map<String, String> statusMap;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public List<ProposeReply> getReplayList() {
		return replayList;
	}

	public void setReplayList(List<ProposeReply> replayList) {
		this.replayList = replayList;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getPage_str() {
		return page_str;
	}

	public void setPage_str(String page_str) {
		this.page_str = page_str;
	}
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getProposeCode() {
		return ProposeCode;
	}

	public void setProposeCode(String ProposeCode) {
		this.ProposeCode = ProposeCode;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Propose getPropose() {
		return propose;
	}

	public void setPropose(Propose propose) {
		this.propose = propose;
	}

	public List<Propose> getProposeList() {
		return proposeList;
	}

	public void setProposeList(List<Propose> proposeList) {
		this.proposeList = proposeList;
	}

	public ProposeService getProposeService() {
		return proposeService;
	}

	public void setProposeService(ProposeService proposeService) {
		this.proposeService = proposeService;
	}

	public Map<String, String> getStatusMap() {
		return statusMap;
	}

	public void setStatusMap(Map<String, String> statusMap) {
		this.statusMap =statusMap;
	}
	
	public String findMyProposeList() {
		page_str = "";
		StringBuffer condition = new StringBuffer();
		Object[] value = {session.get("userType").toString(), session.get("userCode").toString()};
		condition.append(" and propose_user_type=? and propose_user=? order by propose_time desc");

		sysArgService.initSysArg();
		int number = Integer.parseInt((rows == null || rows == "0") ? App.sysArgMap.get("0100")
				: rows);
		proposeList = proposeService.findProposeList(condition.toString(),
				value, pageNo, number);
		
		count = proposeService.getCounts(condition.toString(), value);
		if (count % number == 0){
			pageCount = count / number;
		}else{
			pageCount = count / number + 1;
		}
		
		return SUCCESS;
	}

	public String toInsertMyPropose() {
		return SUCCESS;
	}
	
	public String insertMyPropose() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		propose.setUserType(session.get("userType").toString());
		propose.setUser(session.get("userCode").toString());
		propose.setName(session.get("userName").toString());
		propose.setTime(dateFormat1.format(new Date()));
		propose.setReplyTime(null);
		proposeService.insertPropose(propose);
		return SUCCESS;
	}
	
	public String showMyPropose() {
		Object[] value = { id };
		proposeList = proposeService.findProposeList(" and id=?", value, 1, 1);
		propose = proposeList.get(0);
		if (propose.getUserType().equals(session.get("userType").toString()) && propose.getUser().equals(session.get("userCode").toString())){
			replayList = proposeService.findProposeReplayList(" and proposeId=?", value);
			Map<String, String> tmp = new HashMap<String, String>();
			tmp.put("arbitman","仲裁员");
			tmp.put("staff","助理");
			tmp.put("party","当事方");
			statusMap = tmp;
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}

}
