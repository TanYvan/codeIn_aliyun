package cn.com.zc.common;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import cn.com.zc.model.Dictionary;
import cn.com.zc.model.DocFormat;
import cn.com.zc.model.Region;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.util.MD5;
import cn.com.zc.util.ReadProperties;


public class App {
	public static Integer lawLinkNum = 0;
	public static HashMap<String,String> sysArgMap;
	
	public static HashMap<String,HashMap<String,String>> dictionaryMap; 
	public static HashMap<String,HashMap<String,String>> dictionaryMapTw;
	public static HashMap<String,HashMap<String,String>> dictionaryMapEn;
	
	public static HashMap<String,List<Dictionary>> dictionaryList;
	public static HashMap<String,List<Dictionary>> dictionaryListTw;
	public static HashMap<String,List<Dictionary>> dictionaryListEn;
	
	public static HashMap<String,List<Dictionary>> dictionaryAllList;
	public static HashMap<String,List<Dictionary>> dictionaryAllListTw;
	public static HashMap<String,List<Dictionary>> dictionaryAllListEn;
	
	public static HashMap<String,String> attachmentConfig;
	
	public static HashMap<String,String> roleMenu;
	public static HashMap<String,String> roleMenuTw;
	public static HashMap<String,String> roleMenuEn;
	
	public static HashMap<String,String> roleAuthPackage;
	public static HashMap<String,String> roleAuthAction;
	
	public static HashMap<String,String> regionMap;
	public static HashMap<String,String> regionMapTw;
	public static HashMap<String,String> regionMapEn;
	
	public static List<Region> regionList;
	public static List<Region> regionListTw;
	public static List<Region> regionListEn;
	
	public static String regionTree;
	public static String regionTreeTw;
	public static String regionTreeEn;
	
	public static HashMap<String,String> docFormatMap;
	public static HashMap<String,String> docFormatMapTw;
	public static HashMap<String,String> docFormatMapEn;
	
	public static String attPath(String category,String file_path) {
		MD5 getMD5 = new MD5();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String stamp = df.format(new Date());
		String sign_msg = getMD5.GetMD5Code(file_path + stamp + ReadProperties.getString("key"));
		return "fileProvide/fileDown.do?category=" + category + "&file_path=" + file_path + "&stamp=" + stamp + "&sign_msg=" + sign_msg ;
	}
}

