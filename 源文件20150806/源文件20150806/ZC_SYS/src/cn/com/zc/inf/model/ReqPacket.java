package cn.com.zc.inf.model;

import java.io.IOException;
import java.util.List;

import org.apache.commons.codec.binary.Base64;

public class ReqPacket {
	private String stamp;
	private String signmsg;
	private String sql;
	private String select;
	private String from;
	private String joins;
	private List<String> conditions;
	private String group;
	private List<String> having;
	private String offset;
	private String limit;
	private String order;
    private String id;
	private List<Value> values;
	private String perpage;
	private String page;
	private List<Param> params;

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}

	public String getSignmsg() {
		return signmsg;
	}

	public void setSign_msg(String signmsg) {
		this.signmsg = signmsg;
	}
	
	public String getStamp() {
		return stamp;
	}

	public void setStamp(String stamp) {
		this.stamp = stamp;
	}

	public String getSelect() {
		return select;
	}

	public void setSelect(String select) {
		String r="";
		try {
			if (select!=null){
				byte[] asBytes = Base64.encodeBase64(select.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.select = r;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		String r="";
		try {
			if (from!=null){
				byte[] asBytes = Base64.encodeBase64(from.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.from = r;
	}

	public String getJoins() {
		return joins;
	}

	public void setJoins(String joins) {
		String r="";
		try {
			if (joins!=null){
				byte[] asBytes = Base64.encodeBase64(joins.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.joins = r;
	}

	public List<String> getConditions() {
		return conditions;
	}

	public void setConditions(List<String> conditions) {
		for (int i=0; i<conditions.size();i++ ){
			String r = "";
			try {
				if (conditions.get(i)!=null){
					byte[] asBytes = Base64.encodeBase64(conditions.get(i).getBytes("UTF-8"));
					r =new String(asBytes, "utf-8");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			conditions.set(i,r);
		}
		this.conditions = conditions;
	}

	public String getGroup() {
		return group;
	}

	public void setGroup(String group) {
		String r="";
		try {
			if (group!=null){
				byte[] asBytes = Base64.encodeBase64(group.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.group = r;
	}

	public List<String> getHaving() {
		return having;
	}

	public void setHaving(List<String> having) {
		for (int i=0; i<having.size();i++ ){
			String r = "";
			try {
				if (having.get(i)!=null){
					byte[] asBytes = Base64.encodeBase64(having.get(i).getBytes("UTF-8"));
					r =new String(asBytes, "utf-8");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			having.set(i,r);
		}
		this.having = having;
	}

	public String getOffset() {
		return offset;
	}

	public void setOffset(String offset) {
		this.offset = offset;
	}

	public String getLimit() {
		return limit;
	}

	public void setLimit(String limit) {
		this.limit = limit;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		String r="";
		try {
			if (order!=null){
				byte[] asBytes = Base64.encodeBase64(order.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.order = r;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public List<Value> getValues() {
		return values;
	}

	public void setValues(List<Value> values) {
		this.values = values;
	}
	
	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}
	
	public String getPerpage() {
		return perpage;
	}

	public void setPerpage(String perpage) {
		this.perpage = perpage;
	}
	
	public List<Param> getParams() {
		return params;
	}

	public void setParams(List<Param> params) {
		this.params = params;
	}
	
}
