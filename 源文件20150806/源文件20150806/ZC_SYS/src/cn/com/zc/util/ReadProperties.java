package cn.com.zc.util;

import java.util.ResourceBundle;

/**
 * ��ȡ�����ļ�risk-config.properties
 * 
 * @author liyu
 * 
 */
public class ReadProperties {
	/** MODIFY BEGIN WANGHAIBO UPD（新增是ADD,修改是UPD,删除是DEL）2013-06-03 
	 *  PICC2013060501 接口报文头改造
	 */
	public static ResourceBundle resources = ResourceBundle
			.getBundle("jrdb");
	
	// ResourceBundle messages = ResourceBundle.getBundle("bundle.messages");
	// String message = messages.getString("welcome.message");

	public static String getString(String str) {
		return resources.getString(str);
	}
	/*
	public static  ResourceBundle resourcesinterface = ResourceBundle.getBundle("dmsinterface");
	
	public static String getInterFaceString(String str) {
		return resourcesinterface.getString(str);
	}

   */

	public static void main(String[] args) {
		System.out.println(ReadProperties.getString("url"));
	}
}
