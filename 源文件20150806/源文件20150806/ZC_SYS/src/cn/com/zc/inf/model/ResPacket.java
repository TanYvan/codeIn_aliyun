package cn.com.zc.inf.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List; 
import org.apache.commons.codec.binary.Base64;

public class ResPacket {
	private String iden;
	private String sql;
	private String sql1;
	private String sql2;
	private String status;
	private String error;
	private DataSet dataset;
	private List<Param> params;
	
	public String getIden() {
		return iden;
	}

	public void setIden(String iden) {
		this.iden = iden;
	}
	
	public String getSql() {
		String r = "";
		try {
			if (sql!= null){
				byte[] asBytes = Base64.decodeBase64(sql.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}
	
	public String getSql1() {
		String r = "";
		try {
			if (sql1!= null){
				byte[] asBytes = Base64.decodeBase64(sql1.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}
	
	public void setSql1(String sql1) {
		this.sql1 = sql1;
	}

	public String getSql2(){
		String r = "";
		try {
			if (sql2!= null){
				byte[] asBytes = Base64.decodeBase64(sql2.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}
	
	public void setSql2(String sql2) {
		this.sql2 = sql2;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getError() {
		String r = "";
		try {
			if (error!= null){
				byte[] asBytes = Base64.decodeBase64(error.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}

	public void setError(String error) {
		this.error = error;
	}

	public DataSet getDataset() {
		return dataset;
	}

	public void setDataset(DataSet dataset) {
		this.dataset = dataset;
	}

	
	public List<Param> getParams() {
		return params;
	}

	public void setParams(List<Param> params) {
		this.params = params;
	}
	
	public String getParamData(String name ) {
		String rr=null;
		if (params!=null){
			for(int ii = 0; ii < params.size(); ii++)  
			{  
				if (params.get(ii).getName().equals(name)){
					rr = params.get(ii).getVal();
					return rr;
				}
			}
		}
		return rr;
	}
	
}
