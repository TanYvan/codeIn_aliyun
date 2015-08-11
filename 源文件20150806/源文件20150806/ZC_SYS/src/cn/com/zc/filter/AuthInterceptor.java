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

public class AuthInterceptor  extends AbstractInterceptor {
	private static final long serialVersionUID = 1L;
	@SuppressWarnings("unchecked")
	public String intercept(ActionInvocation ai) throws Exception {  
		HashMap<String,String> open = new HashMap<String,String>();
		open.put("welcome", "|main|mainFrame|top|menu|desk|bottom|index|login|locale|loginDo|login_1|loginDo_1|login_2|loginDo_2|login_3|loginDo_3|logout|findPsd_1|toFindPsd_1|findPsd_2|toFindPsd_2|toChangePassword|changePassword|readMeForParty|");
		open.put("arbitman", "|register|registerDo|");
		open.put("wuser", "|register|registerDo|check_3");
		open.put("fileProvide", "|fileDown|");
		open.put("arbitmanPublic", "|list|");
		open.put("cost", "|list|");
		
		Map session = ActionContext.getContext().getSession();
		if(session==null){
			return "authError";
		}
		Object action = ai.getAction();
		String actionName = ai.getInvocationContext().getName();
		String className = action.getClass().getSimpleName();
		String packageName = className.substring(0,className.length() - 6 );
		packageName = packageName.replaceFirst(packageName.substring(0, 1), packageName.substring(0, 1).toLowerCase());
		String open_str = open.get(packageName);
        if (open_str != null && open_str.indexOf(actionName)>=0){
        }
        else{
        	actionName = packageName + "/" + actionName;
        	if (authPackage(packageName) || authAction(actionName)){
        		
        	}
        	else{
        		return "authError";
        	}
        	//return "authError";
        }
		
		return ai.invoke();
		
	}
	
	private Boolean authPackage(String packageName)
	{
		Map session = ActionContext.getContext().getSession();
		if (session.get("userCode")==null || session.get("userCode").equals("")){
			return false;
		}
		else{
			if (session.get("userRole")==null || session.get("userRole").equals("") || App.roleAuthPackage==null || App.roleAuthPackage.equals("")){
				return false;
			}else{
				String[] role = session.get("userRole").toString().split(",");
				for ( String r : role){
					if  (App.roleAuthPackage.get(r).indexOf("|" + packageName + "|")>=0){
						return true;
					}
				}
				return false;
			}	
		}
		
	}
	
	private Boolean authAction(String actionName)
	{
		Map session = ActionContext.getContext().getSession();
		if (session.get("userCode")==null || session.get("userCode").equals("")){
			return false;
		}
		else{
			if (session.get("userRole")==null || session.get("userRole").equals("") || App.roleAuthPackage==null || App.roleAuthPackage.equals("")){
				return false;
			}else{
				String[] role = session.get("userRole").toString().split(",");
				for ( String r : role){
					if  (App.roleAuthAction.get(r).indexOf("|" + actionName + "|")>=0){
						return true;
					}
				}
				return false;
			}
		}
		
	}
	
	
}

