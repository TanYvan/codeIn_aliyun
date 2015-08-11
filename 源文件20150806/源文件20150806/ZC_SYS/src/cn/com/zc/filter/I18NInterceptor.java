package cn.com.zc.filter;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import cn.com.zc.common.App;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class I18NInterceptor  extends AbstractInterceptor {
	private static final long serialVersionUID = 1L;
	@SuppressWarnings("unchecked")
	public String intercept(ActionInvocation ai) throws Exception {  
        //设置国际化
        Locale l = Locale.getDefault();
        Map session = ActionContext.getContext().getSession();
        if (getCookie("language")==null){
        	l=new Locale("zh", "CN");
        	session.put("language","zh_CN");
        }else{
			if (getCookie("language").getValue().toString().equals("en_US")){
				l = new Locale("en", "US");
			}
			if (getCookie("language").getValue().toString().equals("zh_CN")){
				l=new Locale("zh", "CN");
			}
			if (getCookie("language").getValue().toString().equals("zh_TW")){
				l = new Locale("zh", "TW");
			}
        }
        if (session.get("language")==null){
        	session.put("language",getCookie("language").getValue().toString());
        }
		ActionContext.getContext().setLocale(l);  
		return ai.invoke();
	}
	
	protected Cookie getCookie(String name) {
		Cookie r = null;
		Cookie[] cookies = ServletActionContext.getRequest().getCookies();
		if(cookies != null && cookies.length!=0) {
			for(int i=0;i<cookies.length;i++){
				if (cookies[i].getName().equals(name)){
					r = cookies[i];
				}			
			}
		}
		return r;
	}
	
}

