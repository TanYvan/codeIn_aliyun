package cn.com.zc.web;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Propose;
import cn.com.zc.model.ProposeReply;
import cn.com.zc.service.facade.ProposeService;
import cn.com.zc.util.ListToJson;

public class ProposeAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int count;
	private int id;
	private int pageNo = 1;
	private int pageSize = 10;
	private String page_str;
	private String title;
	private String start;
	private String end;
	private List<ProposeReply> replayList;
	private String content;
	private String rows;// 每页显示的记录数
	private String error;
	private HashMap<String, String> typ;
	
	public HashMap getTyp() {
		HashMap<String, String> tmp = new HashMap<String, String>();
		tmp.put("party","当事方");
		tmp.put("arbitman","仲裁员");
		tmp.put("assistant","办案助理");
		return tmp;
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

	private String page;// 当前第几页

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

	private int pageCount;

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
	
	private Propose propose;
	private List<Propose> proposeList;
	private ProposeService proposeService;
	private String result;
	private String code;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	private String ProposeCode;

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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String findProposeList() {
		page_str = "";
		StringBuffer condition = new StringBuffer();
		Object[] value = null;
		if (start != null && !"".equals(start) && !"undefined".equals(start)) {
			condition.append(" and time  > '" + start + "' ");
			page_str = page_str + "&start=" + start.trim();
		}
		if (end != null && !"".equals(end) && !"undefined".equals(start)) {
			condition.append(" and time  < '" + end + "' ");
			page_str = page_str + "&end=" + end.trim();
		}
		if (title != null && !"".equals(title.trim())) {
			condition.append(" and  title  like '%" + title + "%'");
			page_str = page_str + "&title=" + title.trim();
		}
		
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
		
		
		
		// if (count % pageSize == 0) {
		// pageCount = count / pageSize;
		// } else {
		// pageCount = count / pageSize + 1;
		// }
		/*
		result = ListToJson.change(count, proposeList);
		try {
			response.setCharacterEncoding("UTF-8");
			response.getWriter().print(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
		return SUCCESS;
	}

	public String toInsertPropose() {
		proposeService.insertPropose(propose);
		return SUCCESS;
	}
	
	public String insertPropose() {
		proposeService.insertPropose(propose);
		return SUCCESS;
	}
	
	public String toUpdatePropose() {
		Object[] value = { id };
		proposeList = proposeService.findProposeList(" and id=?", value, 1, 1);
		propose = proposeList.get(0);
		replayList = proposeService.findProposeReplayList(" and proposeId=?", value);
		return SUCCESS;
	}
	
	public String updatePropose() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ProposeReply proposeReplay = new ProposeReply();
		proposeReplay.setContent(content);
		proposeReplay.setProposeId(id);
		proposeReplay.setActive("1");
		proposeReplay.setReplyTime(dateFormat1.format(new Date()));
		proposeService.updateProposeReply(proposeReplay);
		Object[] value = {id};
		Propose propose=proposeService.findProposeList(" and id=?",value,0,0).get(0) ;
		propose.setReplyTime(dateFormat1.format(new Date()));
		proposeService.updatePropose(propose);
		return SUCCESS;
	}
	
	

	public String deletePropose() {
		proposeService.deletePropose(id);
		return SUCCESS;
	}

	public String checkSameKey() {
		Object[] value = { code };
		proposeList = proposeService.findProposeList("and code=?", value, 0, 0);
		if (proposeList.size() > 0) {
			result = "fail";
		} else {
			result = "success";
		}
		return "result";
	}
}
