package cn.com.zc.inf.model;

import java.util.List;

public class Rows {
	private List<Row> row;
	
	public Row getRow(Integer i) {
		return row.get(i);
	}
	
	public Integer size() {
		return row.size();
	}
	
	public List<Row> getRows() {
		return row;
	}

	public void setRows(List<Row> row) {
		this.row = row;
	}
}
