package cn.com.zc.jrdbModel;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.inf.model.Value;
import cn.com.zc.model.BaseModel;

public class JrdbBaseModel extends BaseModel implements Cloneable{
	
	//
	public ReqPacket toReqPacketForCreate(){
		ReqPacket req= new ReqPacket();
		List<Value> values = new ArrayList<Value>();
		String name="";
		String nameUp="";
		try {
			Field[] fields = this.getClass().getDeclaredFields() ;
			int i=0 ;
			while (i< fields.length){
				name = fields[i].getName();
				nameUp = name.replaceFirst(name.substring(0, 1), name.substring(0, 1).toUpperCase());
				try {
					if (this.getClass().getMethod("get" + nameUp, new Class[]{}).invoke(this, new Object[]{})!=null){
						values.add(new Value(name,this.getClass().getMethod("get" + nameUp, new Class[]{}).invoke(this, new Object[]{}).toString()));
					}
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (NoSuchMethodException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				i++;
			}	
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setValues(values);
		return req;
	}
	
	
	public cn.com.zc.inf.model.ReqPacket toReqPacketForUpdate(){
		ReqPacket req= new ReqPacket();
		try {
			if (this.getClass().getMethod("getId", new Class[]{}).invoke(this, new Object[]{})!=null){
				req.setId(this.getClass().getMethod("getId", new Class[]{}).invoke(this, new Object[]{}).toString());
			}
			else{
				String error_mes = "toReqPacketForUpdate方法中model的id不能为null";
				Exception e = new Exception(error_mes);
				try {
					throw e;
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		} catch (IllegalArgumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SecurityException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (NoSuchMethodException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		List<Value> values = new ArrayList<Value>();
		String name="";
		String nameUp="";
		try {
			Field[] fields = this.getClass().getDeclaredFields() ;
			int i=0 ;
			while (i< fields.length){
				name = fields[i].getName();
				nameUp = name.replaceFirst(name.substring(0, 1), name.substring(0, 1).toUpperCase());
				try {
					if (this.getClass().getMethod("get" + nameUp, new Class[]{}).invoke(this, new Object[]{})!=null){
						values.add(new Value(name,this.getClass().getMethod("get" + nameUp, new Class[]{}).invoke(this, new Object[]{}).toString()));
					}
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (NoSuchMethodException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				i++;
			}	
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setValues(values);
		return req;
	}
	
	public List getObjects(ResPacket rp) {	
		List rrr = new ArrayList();
		for(int ii = 0; ii < Integer.parseInt(rp.getDataset().getSize()); ii++)  
		{  
			try {
				Object r = this.clone();
				Field[] fields = r.getClass().getDeclaredFields() ;
				String name="";
				int i =0;
				while (i< fields.length){
					name = fields[i].getName();
					name = name.replaceFirst(name.substring(0, 1), name.substring(0, 1).toUpperCase());
					try {
						String val = rp.getDataset().getRow(ii).getData(name);
						if (val != null){
							r.getClass().getMethod("set" + name, new Class[]{String.class}).invoke(r, new Object[]{val});
						}
					} catch (IllegalAccessException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (InvocationTargetException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (NoSuchMethodException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					i++;
				}
				rrr.add(r);
			} catch (CloneNotSupportedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}	
		

		return rrr;
	}
}
