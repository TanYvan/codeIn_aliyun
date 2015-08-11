package cn.com.zc.model;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.Value;

public class BaseModel {
	public void coverSelf(Object model ){
		String name="";
		try {
			Field[] fields = this.getClass().getDeclaredFields() ;
			int i=0 ;
			while (i< fields.length){
				name = fields[i].getName();
				name = name.replaceFirst(name.substring(0, 1), name.substring(0, 1).toUpperCase());
				try {

					if (this.getClass().getMethod("get" + name, new Class[]{}).invoke(model, new Object[]{})!=null){
						this.getClass().getMethod("set" + name, new Class[]{this.getClass().getMethod("get" + name, new Class[]{}).invoke(model, new Object[]{}).getClass()}).invoke(this, new Object[]{this.getClass().getMethod("get" + name, new Class[]{}).invoke(model, new Object[]{})});
					}
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
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

	}	
	
}
