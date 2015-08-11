package cn.com.zc.inf.model;

import java.io.IOException;
import org.apache.commons.codec.binary.Base64;

public class Param {
	private String name;
	private String val;

	
	public Param(){
    }
	
	public Param(String n,String v){
		this.name = n;
		String r="";
		try {
			if (v!=null){
				byte[] asBytes = Base64.encodeBase64(v.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.val = r;
    }
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVal() {
		String r="";
		try {
			if (val!=null){
				byte[] asBytes = Base64.decodeBase64(val.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}

	public void setVal(String val) {
		String r="";
		try {
			if (val!=null){
				byte[] asBytes = Base64.encodeBase64(val.getBytes("UTF-8"));
				r =new String(asBytes, "utf-8");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.val = r;
	}
}
