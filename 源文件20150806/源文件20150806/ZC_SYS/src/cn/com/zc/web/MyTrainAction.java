package cn.com.zc.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import cn.com.zc.common.App;
import cn.com.zc.model.MyTrainRegView;
import cn.com.zc.model.Train;
import cn.com.zc.model.TrainReg;
import cn.com.zc.service.facade.TrainRegService;
import cn.com.zc.service.facade.TrainService;

public class MyTrainAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String searchType;
	private String condition;
	private String searchValue;
	private String rows;// 每页显示的记录数
	private int pageNo = 1;
	private int pageSize = 10;
	private String range;
	private int pageCount;
	private String page_str;
	private List<String> rangeList;
	private Train train;
	private List<Train> trainList;
	private TrainService trainService;
	private TrainRegService trainRegService;
	private List<TrainReg> trainRegList;
	private List<MyTrainRegView> myTrainRegList;
	private HashMap<String,String> regStatus;
	private TrainReg trainReg;
	private String result;
	private String code;
	private String page;// 当前第几页
	private int count;
	private String TrainCode;
	private int score_sum;
	
	private String title;
	private String category;
	private String place;
	private String startdate;
	private String enddate;

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getRows() {
		return rows;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
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
	
	public TrainReg getTrainReg() {
		return trainReg;
	}

	public void setTrainReg(TrainReg trainReg) {
		this.trainReg = trainReg;
	}
	
	public List<TrainReg> getTrainRegList() {
		return trainRegList;
	}

	public void setTrainRegList(List<TrainReg> trainRegList) {
		this.trainRegList = trainRegList;
	}
	
	public List<MyTrainRegView> getMyTrainRegList() {
		return myTrainRegList;
	}

	public void setMyTrainRegList(List<MyTrainRegView> myTrainRegList) {
		this.myTrainRegList = myTrainRegList;
	}
	
	public HashMap<String,String> getRegStatus() {
		return regStatus;
	}

	public void setRegStatus(HashMap<String,String> regStatus) {
		this.regStatus = regStatus;
	}
	
	public int getScore_sum() {
		return score_sum;
	}

	public void setScore_sum(int score_sum) {
		this.score_sum = score_sum;
	}
	
	public String list() {
		page_str = "";
		Map<String, String> statusMap = new HashMap<String, String>();
		
		StringBuffer condition = new StringBuffer();
		condition.append(" and active=1 and status=1 and ranges like '%" + session.get("userCategory").toString() + "%' ");
		List c_list = new ArrayList();
		if (category != null && !"".equals(category.trim())) {
			condition.append(" and category=?"); 
			c_list.add(category.trim());
			page_str = page_str + "&category=" + category.trim();
		}
		if (place != null && !"".equals(place.trim())) {
			condition.append(" and place like ?");
			c_list.add("%" + place.trim() + "%");
			page_str = page_str + "&place=" + place.trim();
		}
		if (title != null && !"".equals(title.trim())) {
			condition.append(" and  title  like ?");
			c_list.add("%" + title.trim() + "%");
			page_str = page_str + "&title=" + title.trim();
		}
		if (startdate != null && !"".equals(startdate.trim())) {
			condition.append(" and  put_date  >= ?");
			c_list.add(startdate.trim());
			page_str = page_str + "&startdate=" + startdate.trim();
		}
		if (enddate != null && !"".equals(enddate.trim())) {
			condition.append(" and  put_date  <= ?");
			c_list.add(enddate.trim());
			page_str = page_str + "&enddate=" + enddate.trim();
		}
		Object[] value = c_list.toArray();
		
		sysArgService.initSysArg();
		int number = Integer.parseInt((rows == null || rows == "0") ? App.sysArgMap.get("0100")
				: rows);
		trainList = trainService.findList(condition.toString(), value,
				pageNo, number);
		count = trainService.getCounts(condition.toString(), value);
		
		if (count % number == 0){
			pageCount = count / number;
		}else{
			pageCount = count / number + 1;
		}
		
		
		String id_str = "(0";
		for (int i = 0; i < trainList.size(); i++) {
			 id_str = id_str + "," + String.valueOf(trainList.get(i).getId());
		}
		id_str = id_str + ")";
		
		
		StringBuffer condition2 = new StringBuffer();
		condition2.append(" and used='Y' and user_type=? and user=? and train_id in " + id_str);
		Object[] value2 = {session.get("userType").toString(),session.get("userCode").toString()};
		List<TrainReg> trainRegList = trainRegService.findList(condition2.toString(), value2, 0, 0);
		regStatus = new HashMap<String,String>();
		for (int i = 0; i < trainRegList.size(); i++) {
			regStatus.put(String.valueOf(trainRegList.get(i).getTrain_id()), String.valueOf(trainRegList.get(i).getId()));
		}
		
		return SUCCESS;
	}
	
	public String show() {
		Object[] value = { id };
		trainList = trainService.findList("and id=?", value, 0,
				0);
		train = trainList.get(0);
		if (trainList.get(0).getRanges().indexOf(session.get("userCategory").toString())>=0 ){
			return SUCCESS;
		}else{
			return "fail";
		}
	}
	
	public String reg() {
		Object[] value = { id };
		trainList = trainService.findList("and id=?", value, 0,
				0);
		train = trainList.get(0);
		if (trainList.get(0).getRanges().indexOf(session.get("userCategory").toString())>=0 ){
			Object[] value2 = { id ,session.get("userCode")};
			List<TrainReg> trainRegList = trainRegService.findList("and train_id=? and user=? and used='Y'", value2, 0,0);
			if (trainRegList.size()==0){
				return SUCCESS;
			}else{
				return "fail";
			}
			
		}else{
			return "fail";
		}
	}
	
	
	public String insert() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = { trainReg.getTrain_id() };
		trainList = trainService.findList("and id=?", value, 0,0);
		train = trainList.get(0);
		if (trainList.size()==0){
			return "fail";
		}else{
			if (trainList.get(0).getRanges().indexOf(session.get("userCategory").toString())>=0 ){
				Object[] value2 = { trainReg.getTrain_id() ,session.get("userCode")};
				List<TrainReg> trainRegList = trainRegService.findList("and train_id=? and user=? and used='Y'", value2, 0,0);
				if (trainRegList.size()==0){
					TrainReg trainReg_insert = new TrainReg();
					trainReg_insert.setRemark(trainReg.getRemark());
					trainReg_insert.setTrain_id(trainReg.getTrain_id());
					trainReg_insert.setUser_type(session.get("userType").toString());
					trainReg_insert.setUser_category(session.get("userCategory").toString());
					trainReg_insert.setUser(session.get("userCode").toString());
					trainReg_insert.setReg_t(dateFormat1.format(new Date()));
					trainReg_insert.setUser_name(session.get("userName").toString());
					trainReg_insert.setUser_tel(session.get("userTel").toString());
					trainReg_insert.setUser_email(session.get("userEmail").toString());
					trainRegService.insert(trainReg_insert);
				}
				return SUCCESS;
			}else{
				return "fail";
			}
			
		}
		
	}
	
	public String regCancel() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = { id };
		trainList = trainService.findList("and id=?", value, 0,0);
		train = trainList.get(0);
		if (trainList.size()==0){
			return "fail";
		}else{
			if (trainList.get(0).getRanges().indexOf(session.get("userCategory").toString())>=0 ){
				Object[] value2 = { trainList.get(0).getId() ,session.get("userType"),session.get("userCode")};
				List<TrainReg> trainRegList = trainRegService.findList("and train_id=? and user_type=? and user=? and used='Y'", value2, 0,0);
				if (trainRegList.size()==0){
				}else{
					trainRegList.get(0).setUsed("N");
					trainRegList.get(0).setReg_t(dateFormat1.format(new Date()));
					trainRegService.update(trainRegList.get(0));
				}
				return SUCCESS;
			}else{
				return "fail";
			}
			
		}
		
	}
	
	public String myRegList() {
		StringBuffer condition = new StringBuffer();
		List c_list = new ArrayList();
		condition.append(" and a.user_type=? and a.user=? ");
		c_list.add(session.get("userType").toString());
		c_list.add(session.get("userCode").toString());
		if (title != null && !"".equals(title.trim())) {
			condition.append(" and  b.title  like ?");
			c_list.add("%" + title.trim() + "%");
		}
		if (startdate != null && !"".equals(startdate.trim())) {
			condition.append(" and b.doDate >= ?");
			c_list.add(startdate.trim());
		}
		if (enddate != null && !"".equals(enddate.trim())) {
			condition.append(" and b.doDate <= ?");
			c_list.add(enddate.trim());
		}
		
		condition.append(" order by b.doDate asc ");	
		Object[] value = c_list.toArray();
		myTrainRegList = trainRegService.findTrainRegViewList(condition.toString(), value, 0, 0);
		score_sum = 0;
		for (int i = 0; i < myTrainRegList.size(); i++) {
			score_sum = score_sum + myTrainRegList.get(i).getScore();
		}
		return SUCCESS;
	}
}
