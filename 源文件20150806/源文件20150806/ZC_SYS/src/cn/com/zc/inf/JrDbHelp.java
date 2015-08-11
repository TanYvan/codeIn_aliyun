package cn.com.zc.inf;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import cn.com.zc.inf.model.Param;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.inf.model.Value;
import cn.com.zc.util.BpsSupport;
import cn.com.zc.util.MD5;
import cn.com.zc.util.ReadProperties;

public class JrDbHelp {
	private Transform transform = new Transform();
	private BpsSupport bps;
	
	public JrDbHelp(){
		bps = new BpsSupport("defaultUrl");
	}
	
	public JrDbHelp(String url){
		bps = new BpsSupport(url);
	}

	private ReqPacket stamp_do(ReqPacket rep) {
		MD5 getMD5 = new MD5();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String stamp = df.format(new Date());
		String sign_msg = getMD5.GetMD5Code(stamp + ReadProperties.getString("key"));
		rep.setStamp(stamp);
		rep.setSign_msg(sign_msg);
		return rep;
	}

	public ResPacket create(ReqPacket reqPacket) throws Exception {
		reqPacket = stamp_do(reqPacket);
		ResPacket resPacket = null;
		String xml = "";
		if (reqPacket.getFrom()==null || reqPacket.getFrom().equals("")){
			String error_mes = "JrDb local error: create 'from' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		if (reqPacket.getValues()==null || reqPacket.getValues().size()==0){
			String error_mes = "JrDb local error:  create 'values' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		try {
			//xml = BpsSupportSingle.getInstance().execute("jrdb/create",transform.schemaToXml(reqPacket));
			xml = bps.execute("jrdb/create",transform.schemaToXml(reqPacket));
			resPacket = transform.xmlToSchema(xml);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (resPacket.getStatus().equals("0")){
			String error_mes = "JrDb remote error:";
			if (resPacket.getSql()!=null){
				error_mes = error_mes  + "\n sql:" +  resPacket.getSql();
			}
			if (resPacket.getError()!=null){
				error_mes = error_mes  + "\n error:" +  resPacket.getError();
			}
			Exception e = new Exception(error_mes);
			throw e;
		}
		
		return resPacket;
	}

	public ResPacket update(ReqPacket reqPacket) throws Exception {
		reqPacket = stamp_do(reqPacket);
		ResPacket resPacket = null;
		String xml = "";
		if (reqPacket.getFrom()==null || reqPacket.getFrom().equals("")){
			String error_mes = "JrDb local error: update 'from' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		if (reqPacket.getId()==null || reqPacket.getId().equals("")){
			String error_mes = "JrDb local error: update 'id' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		if (reqPacket.getValues()==null || reqPacket.getValues().size()==0){
			String error_mes = "JrDb local error:  update 'values' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
	    try {
			//xml = BpsSupportSingle.getInstance().execute("jrdb/update",transform.schemaToXml(reqPacket));
			xml = bps.execute("jrdb/update",transform.schemaToXml(reqPacket));
			resPacket = transform.xmlToSchema(xml);
	    } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
		if (resPacket.getStatus().equals("0")){
			String error_mes = "JrDb remote error:";
			if (resPacket.getSql()!=null){
				error_mes = error_mes  + "\n sql:" +  resPacket.getSql();
			}
			if (resPacket.getError()!=null){
				error_mes = error_mes  + "\n error:" +  resPacket.getError();
			}
			Exception e = new Exception(error_mes);
			throw e;
		}
		
		return resPacket;
	}
	
	public ResPacket update_all(ReqPacket reqPacket) throws Exception {
		reqPacket = stamp_do(reqPacket);
		ResPacket resPacket = null;
		String xml = "";
		if (reqPacket.getFrom()==null || reqPacket.getFrom().equals("")){
			String error_mes = "JrDb local error: update_all 'from' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		if (reqPacket.getValues()==null || reqPacket.getValues().size()==0){
			String error_mes = "JrDb local error:  update_all 'values' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		if (reqPacket.getConditions()==null || reqPacket.getConditions().size()==0){
			String error_mes = "JrDb local error:  update_all 'conditions' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		try {
			//xml = BpsSupportSingle.getInstance().execute("jrdb/update_all",transform.schemaToXml(reqPacket));
			xml = bps.execute("jrdb/update_all",transform.schemaToXml(reqPacket));
			resPacket = transform.xmlToSchema(xml);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (resPacket.getStatus().equals("0")){
			String error_mes = "JrDb remote error:";
			if (resPacket.getSql()!=null){
				error_mes = error_mes  + "\n sql:" +  resPacket.getSql();
			}
			if (resPacket.getError()!=null){
				error_mes = error_mes  + "\n error:" +  resPacket.getError();
			}
			Exception e = new Exception(error_mes);
			throw e;
		}
		
		return resPacket;
	}

	public ResPacket find_all(ReqPacket reqPacket) throws Exception {
		reqPacket = stamp_do(reqPacket);
		ResPacket resPacket = null;
		String xml = "";
		if (reqPacket.getFrom()==null || reqPacket.getFrom().equals("")){
			String error_mes = "JrDb local error: find_all 'from' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		/*
		if (reqPacket.getSelect()==null || reqPacket.getSelect().equals("")){
			String error_mes = "JrDb local error: find_all的select不能为空";
			Exception e = new Exception(error_mes);
			throw e;
		}
		*/
		if (reqPacket.getConditions()==null || reqPacket.getConditions().size()==0){
			String error_mes = "JrDb local error: find_all 'conditions' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		try {
			//xml = BpsSupportSingle.getInstance().execute("jrdb/find_all_first",transform.schemaToXml(reqPacket));
			xml = bps.execute("jrdb/find_all_first",transform.schemaToXml(reqPacket));
			resPacket = transform.xmlToSchema(xml);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (resPacket.getStatus().equals("0")){
			String error_mes = "JrDb remote error:";
			if (resPacket.getSql()!=null){
				error_mes = error_mes  + "\n sql:" +  resPacket.getSql();
			}
			if (resPacket.getError()!=null){
				error_mes = error_mes  + "\n error:" +  resPacket.getError();
			}
			Exception e = new Exception(error_mes);
			throw e;
		}
		
		return resPacket;
	}
	
	public ResPacket paginate_jr(ReqPacket reqPacket) throws Exception {
		reqPacket = stamp_do(reqPacket);
		ResPacket resPacket = null;
		String xml = "";
		if (reqPacket.getFrom()==null || reqPacket.getFrom().equals("")){
			String error_mes = "JrDb local error: paginate_jr 'from' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		/*
		if (reqPacket.getSelect()==null || reqPacket.getSelect().equals("")){
			String error_mes = "JrDb local error: paginate_jr的select不能为空";
			Exception e = new Exception(error_mes);
			throw e;
		}
		*/
		if (reqPacket.getConditions()==null || reqPacket.getConditions().size()==0){
			String error_mes = "JrDb local error: paginate_jr 'conditions' can't null";
			Exception e = new Exception(error_mes);
			throw e;
		}
		try {
			//xml = BpsSupportSingle.getInstance().execute("jrdb/paginate_jr",transform.schemaToXml(reqPacket));
			xml = bps.execute("jrdb/paginate_jr",transform.schemaToXml(reqPacket));
			resPacket = transform.xmlToSchema(xml);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (resPacket.getStatus().equals("0")){
			String error_mes = "JrDb remote error:";
			if (resPacket.getSql1()!=null){
				error_mes = error_mes  + "\n sql1:" +  resPacket.getSql1();
			}
			if (resPacket.getSql2()!=null){
				error_mes = error_mes  + "\n sql2:" +  resPacket.getSql2();
			}
			if (resPacket.getError()!=null){
				error_mes = error_mes  + "\n error:" +  resPacket.getError();
			}
			Exception e = new Exception(error_mes);
			throw e;
		}
		
		return resPacket;
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
    			rrr.append("<a href='" + url + "?perpage=" + resPacket.getDataset().getPerpage() + "&page=" + String.valueOf(page - 1) + "&" + param_str + "'>上一页<a>&nbsp;&nbsp;");
    		}
    		if (!resPacket.getDataset().getPage().equals(resPacket.getDataset().getPages())){
    			rrr.append("<a href='" + url + "?perpage=" + resPacket.getDataset().getPerpage() + "&page=" + String.valueOf(page + 1) + "&" + param_str + "'>下一页<a>&nbsp;&nbsp;");
    		}
        	rrr.append("共" + resPacket.getDataset().getPages() + "页,");
        	rrr.append("每页<input type=text id='perpage' name='perpage' size='4' value='" + resPacket.getDataset().getPerpage()  + "'/>条记录,第");
        	rrr.append("<input type='text' id='page' name='page' size='4' value='" + resPacket.getDataset().getPage() + "'/>");
        	rrr.append("<input type='submit' value='确定' />");
        	rrr.append("</form>");
        }
        rrr.append("</div>");
        rrr.append("<script language='javascript'>");
        rrr.append("function page_bar_check(obj1,obj2){");
        rrr.append("if ( /^[0-9]*[1-9][0-9]*$/.test(document.getElementById(obj1).value)  &&  /^[0-9]*[1-9][0-9]*$/.test(document.getElementById(obj2).value) )");
        rrr.append("{");
        rrr.append("return true;");
        rrr.append("}else{");
        rrr.append("alert('请正确输入数字！');");
        rrr.append("return false;");
        rrr.append("}");
        rrr.append("}");
        rrr.append("</script>");
		return rrr.toString();
	}
	
}
