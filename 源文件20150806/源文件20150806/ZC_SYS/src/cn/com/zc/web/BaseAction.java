package cn.com.zc.web;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.util.Assert;

import cn.com.zc.common.App;
import cn.com.zc.common.Page;
import cn.com.zc.common.StringUtils;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Region;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.DocFormatService;
import cn.com.zc.service.facade.RegionService;
import cn.com.zc.service.facade.SysArgService;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.commons.beanutils.PropertyUtils;

public class BaseAction extends ActionSupport implements SessionAware,
		ServletResponseAware, ServletRequestAware {
	private static final long serialVersionUID = 1L;
	protected static final Log logger = LogFactory.getLog(BaseAction.class);

	protected void render(String text, String contentType) {
		try {
			HttpServletResponse response = getResponse();
			response.setContentType(contentType);
			response.getWriter().write(text);
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
			throw new IllegalStateException(e);
		}
	}

	protected void renderText(String text) {
		render(text, "text/plain;charset=UTF-8");
	}

	protected void renderHtml(String text) {
		render(text, "text/html;charset=UTF-8");
	}

	protected void renderXML(String text) {
		render(text, "text/xml;charset=UTF-8");
	}

	protected void saveMessage(String msg) {
		List messages = (List) getRequest().getSession().getAttribute(
				"messages");

		if (messages == null) {
			messages = new ArrayList();
		}
		messages.add(msg);
		getSession().setAttribute("messages", messages);
	}

	public void writeJSONData(Page page, String[] args) {
		try {
			Assert.notEmpty(args);
			List dataList = new Vector();
			List list = page.getResult();
			int size = args.length;
			for (Iterator iter = list.iterator(); iter.hasNext();) {
				Object element = iter.next();
				Map dataMap = new HashMap(size);
				for (int i = 0; i < size; ++i) {
					Object value = null;
					if (args[i].indexOf(46) > -1) {
						String[] arrArg = StringUtils.split(args[i], '.');
						value = element;
						for (int j = 0; j < arrArg.length - 1; ++j) {
							value = PropertyUtils.getProperty(value, arrArg[j]);
							value = PropertyUtils.getProperty(value,
									arrArg[(j + 1)]);
						}
					} else {
						value = PropertyUtils.getProperty(element, args[i]);
					}
					dataMap.put(args[i], fixValueForJSON(value));
				}
				dataList.add(dataMap);
			}
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("totalRecords", page.getTotalCount());
			jsonObject.put("data", JSONArray.fromObject(dataList));
			renderHtml(jsonObject.toString());
		} catch (Exception e) {
			writeJSONMsg(e.getMessage());
		}
	}

	public void writeJSONData(List list, String[] args) {
		try {
			Assert.notEmpty(args);
			List dataList = new Vector();
			int size = args.length;
			for (Iterator iter = list.iterator(); iter.hasNext();) {
				Object element = iter.next();
				Map dataMap = new HashMap(size);
				for (int i = 0; i < size; ++i) {
					Object value = null;
					if (args[i].indexOf(46) > -1) {
						String[] arrArg = StringUtils.split(args[i], '.');
						value = element;
						for (int j = 0; j < arrArg.length - 1; ++j) {
							value = PropertyUtils.getProperty(value, arrArg[j]);
							value = PropertyUtils.getProperty(value,
									arrArg[(j + 1)]);
						}
					} else {
						value = PropertyUtils.getProperty(element, args[i]);
					}
					dataMap.put(args[i], fixValueForJSON(value));
				}
				dataList.add(dataMap);
			}
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("totalRecords", list.size());
			jsonObject.put("data", JSONArray.fromObject(dataList));
			renderHtml(jsonObject.toString());
		} catch (Exception e) {
			writeJSONMsg(e.getMessage());
		}
	}

	private Object fixValueForJSON(Object value) {
		Object retObject = value;
		if (value instanceof Date) {
			retObject = new Timestamp(((Date) value).getTime());
		}

		return retObject;
	}

	public void writeJSONMsg(String msg) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("msg", msg);
		jsonObject.put("totalRecords", 0);
		jsonObject.put("data", JSONArray.fromObject(new String[0]));
		renderHtml(jsonObject.toString());
	}

	protected Map<String, Object> session;
	protected HttpServletRequest request;
	protected HttpServletResponse response;

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	protected HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	protected ServletContext getServletContext() {
		return ServletActionContext.getServletContext();
	}

	protected HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	protected HttpSession getSession() {
		return getRequest().getSession();
	}

	protected void addCookie(Cookie cookie) {
		cookie.setMaxAge(60 * 60 * 24 * 365);
		cookie.setPath("/");
		response.addCookie(cookie);
	}
	
	protected Cookie getCookie(String name) {
		Cookie r = null;
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length!=0) {
			for(int i=0;i<cookies.length;i++){
				if (cookies[i].getName().equals(name)){
					r = cookies[i];
				}			
			}
		}
		return r;
	}
	
	protected HttpSession getSession(boolean flag) {
		return getRequest().getSession(flag);
	}

	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
		this.response = arg0;
	}

	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		this.request = arg0;
	}
	
	public String getIpAddr() {  
	    String ip = request.getHeader("x-forwarded-for");  
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("Proxy-Client-IP");  
	    }  
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("WL-Proxy-Client-IP");  
	    }  
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getRemoteAddr();  
	    }  
	    return ip;  
	}   
	
	protected HashMap<String,String> baseCaseStatus;
	public HashMap<String,String> getBaseCaseStatus() {
		baseCaseStatus = new HashMap<String,String>();
		baseCaseStatus.put("咨询",this.getText("case.status_mes_1"));
		baseCaseStatus.put("历史咨询",this.getText("case.status_mes_2"));
		baseCaseStatus.put("不受理",this.getText("case.status_mes_3"));
		baseCaseStatus.put("立案",this.getText("case.status_mes_4"));
		baseCaseStatus.put("组庭",this.getText("case.status_mes_5"));
		baseCaseStatus.put("开庭",this.getText("case.status_mes_6"));
		baseCaseStatus.put("结案",this.getText("case.status_mes_7"));
		baseCaseStatus.put("状态",this.getText("case.status_mes_8"));
		return baseCaseStatus;
	}
	
	
	protected String browser;
	protected String userAgent;
	
	public String getUserAgent() {
		String bbb = request.getHeader("User-Agent");   //取得浏览器信息串进行分析   
		return bbb;
	}
	
	public String getBrowser() {
		String bbb = request.getHeader("User-Agent");   //取得浏览器信息串进行分析   
        if (bbb.indexOf("Firefox") != -1) {   //根据不同的浏览器来加载不同的样式文件   
            return "Firefox";    
        } else if (bbb.indexOf("MSIE 6") != -1) {  
        	return "IE6";  
        } else if (bbb.indexOf("MSIE 7") != -1) {  
        	return "IE7"; 
        } else if (bbb.indexOf("MSIE 8") != -1) {  
        	return "IE8"; 
        } else if (bbb.indexOf("MSIE 9") != -1) {  
        	return "IE9"; 
        } else {  
        	return "IE";   
        }  
	}
	
	//字典表基础数据
	protected SysArgService sysArgService;
	
	protected DictionaryService dictionaryService;
	
	protected HashMap<String,HashMap<String,String>> baseDicCnMap;
	
	protected HashMap<String,HashMap<String,String>> baseDicMap;
	protected HashMap<String,List<Dictionary>> baseDicList;
	protected HashMap<String,List<Dictionary>> baseDicAllList;
	
	protected RegionService regionService;
	protected HashMap<String,String> regionMap;
	protected List<Region> regionList;
	
	protected String validateJs;
	
	public String getValidateJs() {
		if (session.get("language")==null){
			return "validate_cn.js";
		}else if (session.get("language").toString().equals("zh_CN")){
			return "validate_cn.js";
		}else if (session.get("language").toString().equals("zh_TW")){
			return "validate_tw.js";
		}else if (session.get("language").toString().equals("en_US")){
			return "validate_en.js";
		}else{
			return "validate_cn.js";
		}
	}

//	public void setValidateJs(String validateJs) {
//		this.validateJs = validateJs;
//	}
	
	public RegionService getRegionService() {
		return regionService;
	}

	public void setRegionService(RegionService regionService) {
		this.regionService = regionService;
	}
	
	public SysArgService getSysArgService() {
		return sysArgService;
	}

	public void setSysArgService(SysArgService sysArgService) {
		this.sysArgService = sysArgService;
	}
	
	public DictionaryService getDictionaryService() {
		return dictionaryService;
	}

	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}
	
	//中文简体的字典表map，用于映射后中文信息供后台查看。
	public HashMap<String,HashMap<String,String>>  getBaseDicCnMap() {
		dictionaryService.initDictionary();
		return App.dictionaryMap;
	}
	
	//多语种字典表map，根据当前语种设置而现实不通语种字典表  简体中文，英文，繁体中文。
	public HashMap<String,HashMap<String,String>>  getBaseDicMap() {
		dictionaryService.initDictionary();
		if (session.get("language")==null){
			return App.dictionaryMap;
		}else if (session.get("language").toString().equals("zh_CN")){
			return App.dictionaryMap;
		}else if (session.get("language").toString().equals("zh_TW")){
			return App.dictionaryMapTw;
		}else if (session.get("language").toString().equals("en_US")){
			return App.dictionaryMapEn;
		}else{
			return App.dictionaryMap;
		}
	}
	
	//多语种字典list，根据当前语种设置而现实不通语种字典表  简体中文，英文，繁体中文。
	public HashMap<String,List<Dictionary>> getBaseDicList() {
		dictionaryService.initDictionary();
		if (session.get("language")==null){
			return App.dictionaryList;
		}else if (session.get("language").toString().equals("zh_CN")){
			return App.dictionaryList;
		}else if (session.get("language").toString().equals("zh_TW")){
			return App.dictionaryListTw;
		}else if (session.get("language").toString().equals("en_US")){
			return App.dictionaryListEn;
		}else{
			return App.dictionaryList;
		}
	}
	
	public HashMap<String,List<Dictionary>> getBaseDicAllList() {
		dictionaryService.initDictionary();
		if (session.get("language")==null){
			return App.dictionaryAllList;
		}else if (session.get("language").toString().equals("zh_CN")){
			return App.dictionaryAllList;
		}else if (session.get("language").toString().equals("zh_TW")){
			return App.dictionaryAllListTw;
		}else if (session.get("language").toString().equals("en_US")){
			return App.dictionaryAllListEn;
		}else{
			return App.dictionaryAllList;
		}
	}

	
	//多语种地区字典map，根据当前语种设置而现实不通语种字典表  简体中文，英文，繁体中文。
	public HashMap<String,String> getRegionMap() {
		regionService.initRegion();
		if (session.get("language")==null){
			return App.regionMap;
		}else if (session.get("language").toString().equals("zh_CN")){
			return App.regionMap;
		}else if (session.get("language").toString().equals("zh_TW")){
			return App.regionMapTw;
		}else if (session.get("language").toString().equals("en_US")){
			return App.regionMapEn;
		}else{
			return App.regionMap;
		}
	}
	
	//多语种地区字典表list，根据当前语种设置而现实不通语种字典表  简体中文，英文，繁体中文。
	public List<Region> getRegionList() {
		regionService.initRegion();
		if (session.get("language")==null){
			return App.regionList;
		}else if (session.get("language").toString().equals("zh_CN")){
			return App.regionList;
		}else if (session.get("language").toString().equals("zh_TW")){
			return App.regionListTw;
		}else if (session.get("language").toString().equals("en_US")){
			return App.regionListEn;
		}else{
			return App.regionList;
		}
	}
	
	
	
	
	public String page_bar(ResPacket resPacket,String url,String css) {
		String param_str = "";
		if (resPacket.getParams()!=null){
			for(int i = 0; i < resPacket.getParams().size(); i++)  
			{  
				param_str = param_str + resPacket.getParams().get(i).getName() + "=" + resPacket.getParams().get(i).getVal() + "&";
			}
		}else{
			param_str = "";
		}
		Integer page = Integer.parseInt(resPacket.getDataset().getPage());
		StringBuilder rrr = new StringBuilder();
		rrr.append("<div class='" + css + "'>");
        if (!resPacket.getDataset().getPages().equals("1") && !resPacket.getDataset().getPages().equals("0"))
        {
        	rrr.append("<form action='" + url + "?" + param_str + "' method='post' onsubmit=\"return page_bar_check('perpage','page')\">");
        	if (!resPacket.getDataset().getPage().equals("1")){
    			rrr.append("<a href='" + url + "?perpage=" + resPacket.getDataset().getPerpage() + "&page=" + String.valueOf(page - 1) + "&" + param_str + "'>" + this.getText("common.page_bar.mark_forward") + "<a>&nbsp;&nbsp;");
    		}
    		if (!resPacket.getDataset().getPage().equals(resPacket.getDataset().getPages())){
    			rrr.append("<a href='" + url + "?perpage=" + resPacket.getDataset().getPerpage() + "&page=" + String.valueOf(page + 1) + "&" + param_str + "'>" + this.getText("common.page_bar.mark_next") + "<a>&nbsp;&nbsp;");
    		}
        	rrr.append(this.getText("common.page_bar.mark_21") + resPacket.getDataset().getPages() + this.getText("common.page_bar.mark_22") + ",");
        	rrr.append(this.getText("common.page_bar.mark_23") + "<input type=text id='perpage' name='perpage' size='4' value='" + resPacket.getDataset().getPerpage()  + "'/>" + this.getText("common.page_bar.mark_24"));
        	rrr.append("<input type='text' id='page' name='page' size='4' value='" + resPacket.getDataset().getPage() + "'/>");
        	rrr.append("<input type='submit' value='" + this.getText("common.page_bar.mark_25") + "' />");
        	rrr.append("</form>");
        }
        rrr.append("</div>");
        rrr.append("<script language='javascript'>");
        rrr.append("function page_bar_check(obj1,obj2){");
        rrr.append("if ( /^[0-9]*[1-9][0-9]*$/.test(document.getElementById(obj1).value)  &&  /^[0-9]*[1-9][0-9]*$/.test(document.getElementById(obj2).value) )");
        rrr.append("{");
        rrr.append("return true;");
        rrr.append("}else{");
        rrr.append("alert('" + this.getText("common.page_bar.mark_26") + "');");
        rrr.append("return false;");
        rrr.append("}");
        rrr.append("}");
        rrr.append("</script>");
		return rrr.toString();
	}
	
	
}