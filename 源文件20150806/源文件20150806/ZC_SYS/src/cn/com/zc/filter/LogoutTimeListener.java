package cn.com.zc.filter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class LogoutTimeListener implements HttpSessionListener {

	public void sessionCreated(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		HttpSession session = arg0.getSession();
//		UtiILoginLog utiILoginLog = (UtiILoginLog) session.getAttribute("utiILoginLog");
//		if(utiILoginLog==null){
//			session.invalidate();
//		}else{
//			utiILoginLog.setExitTime(new Date());
//			UtiILoginLogService utiILoginLogService = (UtiILoginLogService) ServiceFactory
//			.getService("utiILoginLogService");// 获得Spring管理的bean
//			long hold = utiILoginLog.getExitTime().getTime()-utiILoginLog.getLoginTime().getTime();
//			String holdTime = this.getTime(hold);
//			utiILoginLog.setHoldTime(holdTime);
//			utiILoginLogService.insertMethod(utiILoginLog);
//			session.invalidate();
//		}
	}
	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	
	//获得持续时间
	public String getTime(long hold){
		int ss=1000;
		int mi =ss * 60;
		int hh = mi * 60;
		int dd = hh * 24;
		long day = hold/dd;
		long hour = (hold-day*dd)/hh;
		long min = (hold-day*dd-hour*hh)/mi;
		long sec = (hold-day*dd-hour*hh-min*mi)/ss;
		String strday = day<10?"0"+day:""+day;
		String strhour = hour<10?"0"+hour:""+hour;
		String strmin = min<10?"0"+min:""+min;
		String strsec = sec<10?"0"+sec:""+sec;		
		String holdTime = "";
		if(day==0&&hour==0&&min==0&&sec==0){
			holdTime = "1秒";
		}else if(day==0&&hour==0&&min==0){
			holdTime = strsec+"秒";
		}else if(day==0&&hour==0){
			holdTime = strmin+"分钟"+strsec+"秒";
		}else if(day==0){
			holdTime = strhour+"小时"+strmin+"分钟"+strsec+"秒";
		}else{
			holdTime = strday+"天"+strhour+"小时"+strmin+"分钟"+strsec+"秒";
		}
		return holdTime;
	}
}
