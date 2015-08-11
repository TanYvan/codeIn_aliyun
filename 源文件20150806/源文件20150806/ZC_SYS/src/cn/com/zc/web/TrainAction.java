package cn.com.zc.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanIn;
import cn.com.zc.model.ArbitmanPublic;
import cn.com.zc.model.Train;
import cn.com.zc.model.TrainReg;
import cn.com.zc.service.facade.ArbitmanPublicService;
import cn.com.zc.service.facade.TrainRegService;
import cn.com.zc.service.facade.TrainService;

public class TrainAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String searchType;
	private String condition;
	private String searchValue;
	private String rows;// 每页显示的记录数
	private String error;
	private String page;// 当前第几页
	private int count;
	private int pageNo = 1;
	private int pageSize;
	private int pageCount;
	private String page_str;
	private String category;
	private String range;
	private String title;
	private String name;
	private int score;
	private HashMap<String, String> hs1 = new HashMap<String, String>();
	private HashMap<String, String> hs2 = new HashMap<String, String>();
	private HashMap<String, String> hs3 = new HashMap<String, String>();
	private List<String> rangeList;
	private Train train;
	private List<Train> trainList;
	private TrainService trainService;
	private TrainRegService trainRegService;
	private List<TrainReg> trainRegList;
	private ArbitmanPublicService arbitmanPublicService;
	private TrainReg trainReg;
	private String result;
	private String code;
	private HashMap<String, String> typ;
	
	public HashMap getTyp() {
		HashMap<String, String> tmp = new HashMap<String, String>();
		tmp.put("1","发布");
		tmp.put("0","未发布");
		return tmp;
	}
	
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

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	public HashMap getHs1() {
		return hs1;
	}

	public void setHs1(HashMap hs1) {
		this.hs1 = hs1;
	}

	public HashMap getHs2() {
		return hs2;
	}

	public void setHs2(HashMap hs2) {
		this.hs2 = hs2;
	}

	public HashMap getHs3() {
		return hs3;
	}

	public void setHs3(HashMap hs3) {
		this.hs3 = hs3;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getRange() {
		return range;
	}

	public void setRange(String range) {
		this.range = range;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String  name) {
		this.name =  name;
	}
	
	public int getScore() {
		return score;
	}

	public void setScore(int  score) {
		this.score =  score;
	}

	public List<String> getRangeList() {
		return rangeList;
	}

	public void setRangeList(List<String> rangeList) {
		this.rangeList = rangeList;
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

	private String TrainCode;

	public String getTrainCode() {
		return TrainCode;
	}

	public void setTrainCode(String TrainCode) {
		this.TrainCode = TrainCode;
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
	
	public Train getTrain() {
		return train;
	}

	public void setTrain(Train train) {
		this.train = train;
	}

	public List<Train> getTrainList() {
		return trainList;
	}

	public void setTrainList(List<Train> trainList) {
		this.trainList = trainList;
	}

	public TrainService getTrainService() {
		return trainService;
	}

	public void setTrainService(TrainService trainService) {
		this.trainService = trainService;
	}

	public TrainRegService getTrainRegService() {
		return trainRegService;
	}

	public void setTrainRegService(TrainRegService trainRegService) {
		this.trainRegService = trainRegService;
	}
	
	public List<TrainReg> getTrainRegList() {
		return trainRegList;
	}

	public void setTrainRegList(List<TrainReg> trainRegList) {
		this.trainRegList = trainRegList;
	}
	
	public TrainReg getTrainReg() {
		return trainReg ;
	}

	public void setTrainReg(TrainReg trainReg) {
		this.trainReg  = trainReg;
	}
	
	public ArbitmanPublicService getArbitmanPublicService() {
		return arbitmanPublicService;
	}

	public void setArbitmanPublicService(ArbitmanPublicService arbitmanPublicService) {
		this.arbitmanPublicService = arbitmanPublicService;
	}
	
	public String list() {
		StringBuffer condition = new StringBuffer();
		List c_list = new ArrayList();
		page_str = "";
		if (category != null && !"".equals(category.trim())) {
			condition.append(" and category  = ?");
			c_list.add(category.trim());
			page_str = page_str + "&category=" + category.trim();
		}
		if (range != null && !"".equals(range.trim())) {
			condition.append(" and ranges like ?");
			c_list.add("%" + range.trim() + "%");
			page_str = page_str + "&ranges=" + range.trim();
		}
		if (title != null && !"".equals(title.trim())) {
			condition.append(" and  title  like ?");
			c_list.add("%" + title.trim() + "%");
			page_str = page_str + "&title=" + title.trim();
		}
		
		Object[] value = c_list.toArray();
		
		sysArgService.initSysArg();
		int number = Integer.parseInt((rows == null || rows == "0") ? App.sysArgMap.get("0100")
				: rows);
		List<Train> trains = trainService.findList(condition.toString(), value, pageNo, number);
		count = trainService.getCounts(condition.toString(), value);
		if (count % number == 0){
			pageCount = count / number;
		}else{
			pageCount = count / number + 1;
		}
		
		hs1.put("1", "公告");
		hs3.put("1", "发布");
		hs3.put("0", "未发布");
		trainList = new ArrayList<Train>();
		for (int i = 0; i < trains.size(); i++) {
			train = trains.get(i);
			train.setRanges(getRanges(trains.get(i).getRanges()));
			trainList.add(train);
		}
		return SUCCESS;
	}

	public String toInsert() {
		return SUCCESS;
	}
	
	public String insert() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		train.setCreateTime(dateFormat1.format(new Date()));
		String userCode = "";// session.get("userCode").toString();
		train.setCreateUser(userCode);
		train.setEditTime(dateFormat1.format(new Date()));
		train.setEditUser(userCode);
		train.setActive("1");
		if (train.getRanges()!=null){
			train.setRanges(train.getRanges().replace(" ", "").trim());
		}else{
			train.setRanges("");
		}
		
		trainService.insert(train);
		return SUCCESS;
	}

	public String toUpdate() {
		Object[] value = { id };
		trainList = trainService.findList(" and id=?", value, 0,0);
		train = trainList.get(0);
		if (train.getRanges()==null){
			train.setRanges("");
		}
		if (train.getRanges().indexOf(",") > 0) {
			String[] ranges = train.getRanges().split(",");
			rangeList = Arrays.asList(ranges);
		}
		else{
			rangeList = new ArrayList<String>() ;
			rangeList.add(train.getRanges());
		} 
		
		return SUCCESS;
	}
	
	public String update() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] values = { train.getId() };
		trainList = trainService.findList(" and id=?", values, 0,0);
		Train train_up = trainList.get(0);
		train_up.coverSelf(train);
		train_up.setEditTime(dateFormat1.format(new Date()));
		String userCode = session.get("userCode").toString();
		train_up.setEditUser(userCode);
		if (train.getRanges()!=null){
			train_up.setRanges(train.getRanges().replace(" ", "").trim());
		}else{
			train_up.setRanges("");
		}
		trainService.update(train_up);
		return SUCCESS;
	}
	
	public String delete() {
		Object[] values = { id };
		trainList = trainService.findList(" and id=?", values, 0,0);
		Train train_up = trainList.get(0);
		train_up.setActive("0");
		trainService.update(train_up);
		return SUCCESS;
	}
	
	public String regList() {
		Object[] value2 = { id };
		trainList = trainService.findList(" and id=?", value2, 0,
				0);
		train = trainList.get(0);
		
		StringBuffer condition = new StringBuffer();
		List c_list = new ArrayList();
		condition.append(" and train_id=? and used='Y' ");
		c_list.add(id);
		if (name != null && !"".equals(name.trim())) {
			condition.append(" and  user_name  like ?");
			c_list.add("%" + name.trim() + "%");
		}
		condition.append(" order by user_type asc, reg_t asc");	
		Object[] value = c_list.toArray();
		List<TrainReg> trains = trainRegService.findList(condition.toString(), value, 0, 0);
		for (int i = 0; i < trains.size(); i++) {
			trains.get(i).setUser_category(getRanges(trains.get(i).getUser_category()));
		}
		trainRegList=trains;
		return SUCCESS;
	}
	
	public String toRegUpdate() {
		Object[] value = { id };
		trainRegList = trainRegService.findList(" and id=?", value, 0,0);
		trainReg = trainRegList.get(0);
		return SUCCESS;
	}
	
	public String regUpdate() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = { trainReg.getId() };
		trainRegList = trainRegService.findList(" and id=?", value, 0,0);
		TrainReg trainReg_up = trainRegList.get(0);
		trainReg_up.setScore(trainReg.getScore());
		trainReg.setU(session.get("userCode").toString());
		trainReg.setU_t(dateFormat1.format(new Date()));
		trainRegService.update(trainReg_up);
		return SUCCESS;
	}
	
	public String regScore()
	{
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = { id };
		trainRegList = trainRegService.findList(" and train_id=?", value, 0,0);
		for (int i = 0; i < trainRegList.size(); i++) {
			trainRegList.get(i).setScore(score);
			trainRegList.get(i).setU(session.get("userCode").toString());
			trainRegList.get(i).setU_t(dateFormat1.format(new Date()));
		}
		trainRegService.updateAll(trainRegList);
		return SUCCESS;
	}
	
	public String toRegInsert()
	{
		return SUCCESS;
	}
	
	public String regInsert() throws Exception
	{
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_arbitmen");
		String sql = " used='Y' and code=?";
		List<String> conditions =  new ArrayList<String>();
		conditions.add(sql);
		conditions.add(trainReg.getUser());
		JrDbHelp jr = new JrDbHelp();
		req.setConditions(conditions);
		ResPacket  rp=jr.paginate_jr(req);
		List<ArbitmanIn> arbitmanInList = new ArbitmanIn().getObjects(rp);
		trainReg.setUser_type("arbitman");
		trainReg.setUser_category("01");
		trainReg.setUser_tel(arbitmanInList.get(0).getMobiletel());
		trainReg.setUser_email(arbitmanInList.get(0).getEmail());
		trainReg.setReg_t(dateFormat1.format(new Date()));
		trainReg.setU(session.get("userCode").toString());
		trainReg.setU_t(dateFormat1.format(new Date()));
		trainRegService.insert(trainReg);
		return SUCCESS;
	}
	
	private String getRanges(String rang){
		if (rang!=null){
			rang = rang.replaceAll("01","在聘仲裁员");
			rang = rang.replaceAll("02","候选仲裁员");
			rang = rang.replaceAll("03","申请仲裁员候选人");
			rang = rang.replaceAll("11","内网已经确认的当事人");
			rang = rang.replaceAll("12","未确认的当事人");
		}
		return rang;
	}
	
}
