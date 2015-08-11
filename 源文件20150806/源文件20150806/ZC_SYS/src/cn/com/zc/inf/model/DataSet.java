package cn.com.zc.inf.model;

import java.util.ArrayList;
import java.util.List;

public class DataSet {
	private String size;
	private String count;
	private String perpage;
	private List rows;
	private String page;
	private String pages;

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getPages() {
		return pages;
	}

	public void setPages(String pages) {
		this.pages = pages;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getPerpage() {
		return perpage;
	}

	public void setPerpage(String perpage) {
		this.perpage = perpage;
	}

	public List getRows() {
		return rows;
	}

	public void setRows(List rows) {
		this.rows = rows;
	}
	
	public Row getRow(Integer i ) {
		Row r = new Row();
		List r_list = new ArrayList();
	    List r_row = (List)rows.get(i);
		for(int ii = 0; ii < r_row.size(); ii++)  
		{  
			r_list.add((Value)r_row.get(ii));
		}
		r.setValue(r_list);
		return r;
	}
	
	public String getData(Integer i,String name ) {
		String rr=null;
		Row r  = getRow(i);
		for(int ii = 0; ii < r.getValue().size(); ii++)  
		{  
			if (r.getValue().get(ii).getName().toLowerCase().equals(name.toLowerCase())){
				rr = r.getValue().get(ii).getVal();
				return rr;
			}
		}
		return rr;
	}

}
