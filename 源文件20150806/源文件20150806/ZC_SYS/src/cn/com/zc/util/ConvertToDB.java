//package cn.com.zc.util;
//
//import java.lang.reflect.Field;
//import java.lang.reflect.InvocationTargetException;
//
//import com.mongodb.BasicDBObject;
//import com.mongodb.DBObject;
//
//public class ConvertToDB {
//
//	public static DBObject convertToDB(Object model) {
//		DBObject dbObject = new BasicDBObject();
//		String name = "";
//		try {
//			Field[] fields = model.getClass().getDeclaredFields();
//			int i = 0;
//			while (i < fields.length) {
//				name = fields[i].getName();
//				name = name.replaceFirst(name.substring(0, 1), name.substring(
//						0, 1).toUpperCase());
//				try {
//
//					if (model.getClass().getMethod("get" + name, new Class[] {})
//							.invoke(model, new Object[] {}) != null) {
//						dbObject.put(name, model.getClass().getMethod("get" + name, new Class[] {})
//								.invoke(model, new Object[] {}));
//					}
//				} catch (IllegalAccessException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				} catch (InvocationTargetException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				} catch (NoSuchMethodException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//				i++;
//			}
//		} catch (IllegalArgumentException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SecurityException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return dbObject;
//	}
//}
