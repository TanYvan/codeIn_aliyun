package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.com.zc.common.App;
import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Menus;
import cn.com.zc.model.Roles;
import cn.com.zc.service.facade.MenuService;

public class MenuServiceSpringImpl extends EntityDaoHibernate implements
		MenuService {

	public void deleteMenu(int id) {
		// TODO Auto-generated method stub
		Menus menu = new Menus();
		menu.setId(id);
		super.delete(menu);
	}

	public List<Menus> findMenuList(String condition, Object[] value,
			int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		List<Menus> menuList = new ArrayList<Menus>();
		String sql = "from Menus where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			menuList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			menuList = super.findByHql(sql, value);
		}
		return menuList;
	}

	public void insertMenu(Menus menu) {
		// TODO Auto-generated method stub
		super.save(menu);
		super.flush();
	}

	public void updateMenu(Menus menu) {
		// TODO Auto-generated method stub
		super.update(menu);
		super.flush();
	}

	public int getCounts(String condition, Object[] value) {
		List<Menus> menuList = new ArrayList<Menus>();
		StringBuffer sql = new StringBuffer();
		sql.append("from Menus where (1=1) ");
		sql.append(condition);
		menuList = super.findByHql(sql.toString(), value);
		return menuList.size();
	}

	

	public String menuTree(String roleCode) {
		String outString = "";
		List<Menus> menuList = new ArrayList<Menus>();
		String sql = "from Menus where roleCode=? and parent='0' order by code asc";
		Object[] value = { roleCode };
		menuList = super.findByHql(sql.toString(), value);
		if (menuList.size() == 0) {
			return "[{'id':'0','text':'树形菜单根节点'}]";
		}
		else{
			outString="[{'id':'0','text':'树形菜单根节点','children':[";
			//outString="[";
			for (Menus menu : menuList) {
				outString = outString + "{'id':'" + menu.getId()
						+ "','text':'" + menu.getName() + "[" + menu.getCode() + "]"
						+ "','attributes':{'url':'" + menu.getUrl()
						+ "'}";
				if ("".equals(menu.getUrl().trim())) {
					outString = menuTreeNode(outString,  menu
							.getCode(), menu.getRoleCode());
				}
				outString += "},";
			}
			outString = outString.substring(0, outString.length() - 1) + "]}]";
		}
		return outString;
	}

	public String menuTreeNode(String outString,
			String parentCode, String roleCode) {
		List<Menus> menuList = new ArrayList<Menus>();
		String sql = "select menus from Menus menus where menus.roleCode=? and menus.parent=? order by menus.code asc";
		Object[] values = { roleCode,parentCode };
		menuList = super.findByHql(sql, values);
		if (menuList.size() > 0) {
			outString = outString + ",'children':[";
			for (Menus menu : menuList) {
				outString = outString + "{'id':'" + menu.getId()
						+ "','text':'" + menu.getName() + "[" + menu.getCode() + "]"
						+ "','attributes':{'url':'" + menu.getUrl()
						+ "'}";
				if ("".equals(menu.getUrl().trim())) {
					outString = menuTreeNode(outString, menu
							.getCode(), roleCode);
				} 
				outString += "},";
			}
			outString = outString.substring(0, outString.length() - 1) + "]" ;
		}
		return outString;
	}
	
	
	public void flushMenu(){
		App.roleMenu = new HashMap<String,String>();
		App.roleMenuTw = new HashMap<String,String>();
		App.roleMenuEn = new HashMap<String,String>();
		App.roleAuthPackage = new HashMap<String,String>();
		App.roleAuthAction = new HashMap<String,String>();
		List<Roles> roleList = new ArrayList<Roles>();
		Object[] value = null;
		String sql = "from Roles where (1=1) ";
		String sql_2= "";
		String c = "";
		String a = "";
		roleList = super.findByHql(sql, value);
		for (Roles r : roleList) {
			App.roleMenu.put(r.getCode(), menu_1(r.getCode()));
			App.roleMenuTw.put(r.getCode(), menuTw_1(r.getCode()));
			App.roleMenuEn.put(r.getCode(), menuEn_1(r.getCode()));
			
			List<Menus> menuList = new ArrayList<Menus>();
			sql_2 = "from Menus where roleCode='" + r.getCode() + "'" ;
			c = "";
			a = "";
			menuList = super.findByHql(sql_2, value);
			for (Menus m : menuList) {
				c = c + m.getControllers();
				a = a + m.getActions();
			}
			App.roleAuthPackage.put(r.getCode(),c);
			App.roleAuthAction.put(r.getCode(),a);
		}
	}
	
	public void initMenu(){
		if (App.roleMenu==null){
			flushMenu();
		}
	}
	
	private String menu_1(String roleCode){
		String m = "";
		String sql = " and roleCode=? and parent='0' order by code";
		Object[] value = { roleCode };
		List<Menus> menuList = this.findMenuList(sql, value,1, 100000000);
		for (Menus menu : menuList) {
			m = m + "<UL style='background: #4298D7; '>";
			m = m + "<span class=menu ><A href='#' style='text-decoration:none; font-weight:bold;  color:#FFF; line-height:26px; width:200px; display:block; ' onFocus='this.blur();' >" + menu.getName() + "</A> </span>";
			m = m + "<li class='menu_li' >";
			m = m + menu_2(roleCode, menu.getCode());
			m = m + "</li>";
			m = m + "</UL>";
		}
		return  m;
	
	}
	private String menu_2(String roleCode, String parent){
		HttpServletRequest request = ServletActionContext.getRequest();
		String base_url = request.getContextPath();

		String m = "<UL style='background:#E6E6E6;'>";
		String sql = " and roleCode=? and parent=? order by code";
		Object[] value = { roleCode, parent };
		List<Menus> menuList = this.findMenuList(sql, value,1, 100000000);
		for (Menus menu : menuList) {
			if (menu.getUrl().trim().equals("")){
				m = m + "<UL style='background: #CCCCCC;'>";
				m = m + "<span class=menu><A href='#' style='text-decoration:none; color:#000;line-height:26px; width:200px;display:block;' onFocus='this.blur()' >&nbsp;&nbsp;" + menu.getName() + "</A></span>";
				m = m + menu_3(roleCode, menu.getCode());
				m = m + "</UL>";
			}
			else{
				if (menu.getUrl().substring(0, 1).equals("/")){
					m = m + "<A href='" + base_url +  menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;display:block;' >&nbsp;&nbsp;" + menu.getName() + " -></A>";
				}
				else{
					m = m + "<A href='" + menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;display:block;' >&nbsp;&nbsp;" + menu.getName() + " -></A>";
				}
					
			}
		}
		m = m + "</UL>";
		return  m;
	}
	private String menu_3(String roleCode, String parent){
		HttpServletRequest request = ServletActionContext.getRequest();
		String base_url = request.getContextPath();
		
		String m = "<LI class='menu_li' style='background:#fffffb; color:#2c2c2c; padding-left:20px;'>";
		String sql = " and roleCode=? and parent=? order by code";
		Object[] value = { roleCode, parent };
		List<Menus> menuList = this.findMenuList(sql, value,1, 100000000);
		for (Menus menu : menuList) {
			if (menu.getUrl().substring(0, 1).equals("/")){
				m = m +"<A  href='"  + base_url + menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;;display:block;'  >" + menu.getName() + "-></A>";
			}
			else{
				m = m +"<A  href='" + menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;;display:block;'  >" + menu.getName() + "-></A>";
			}
		}
		m = m + "</LI>";
		return "";
	}
	
	private String menuTw_1(String roleCode){
		String m = "";
		String sql = " and roleCode=? and parent='0' order by code";
		Object[] value = { roleCode };
		List<Menus> menuList = this.findMenuList(sql, value,1, 100000000);
		for (Menus menu : menuList) {
			m = m + "<UL style='background: #4298D7; '>";
			m = m + "<span class=menu ><A href='#' style='text-decoration:none; font-weight:bold;  color:#FFF; line-height:26px; width:200px; display:block; ' onFocus='this.blur();' >" + menu.getNameTw() + "</A> </span>";
			m = m + "<li class='menu_li' >";
			m = m + menuTw_2(roleCode, menu.getCode());
			m = m + "</li>";
			m = m + "</UL>";
		}
		return  m;
	
	}
	private String menuTw_2(String roleCode, String parent){
		HttpServletRequest request = ServletActionContext.getRequest();
		String base_url = request.getContextPath();

		String m = "<UL style='background:#E6E6E6;'>";
		String sql = " and roleCode=? and parent=? order by code";
		Object[] value = { roleCode, parent };
		List<Menus> menuList = this.findMenuList(sql, value,1, 100000000);
		for (Menus menu : menuList) {
			if (menu.getUrl().trim().equals("")){
				m = m + "<UL style='background: #CCCCCC;'>";
				m = m + "<span class=menu><A href='#' style='text-decoration:none; color:#000;line-height:26px; width:200px;display:block;' onFocus='this.blur()' >&nbsp;&nbsp;" + menu.getNameTw() + "</A></span>";
				m = m + menuTw_3(roleCode, menu.getCode());
				m = m + "</UL>";
			}
			else{
				if (menu.getUrl().substring(0, 1).equals("/")){
					m = m + "<A href='" + base_url +  menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;display:block;' >&nbsp;&nbsp;" + menu.getNameTw() + " -></A>";
				}
				else{
					m = m + "<A href='" + menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;display:block;' >&nbsp;&nbsp;" + menu.getNameTw() + " -></A>";
				}
					
			}
		}
		m = m + "</UL>";
		return  m;
	}
	private String menuTw_3(String roleCode, String parent){
		HttpServletRequest request = ServletActionContext.getRequest();
		String base_url = request.getContextPath();
		
		String m = "<LI class='menu_li' style='background:#fffffb; color:#2c2c2c; padding-left:20px;'>";
		String sql = " and roleCode=? and parent=? order by code";
		Object[] value = { roleCode, parent };
		List<Menus> menuList = this.findMenuList(sql, value,1, 100000000);
		for (Menus menu : menuList) {
			if (menu.getUrl().substring(0, 1).equals("/")){
				m = m +"<A  href='"  + base_url + menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;;display:block;'  >" + menu.getNameTw() + "-></A>";
			}
			else{
				m = m +"<A  href='" + menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;;display:block;'  >" + menu.getNameTw() + "-></A>";
			}
		}
		m = m + "</LI>";
		return "";
	}
	
	private String menuEn_1(String roleCode){
		String m = "";
		String sql = " and roleCode=? and parent='0' order by code";
		Object[] value = { roleCode };
		List<Menus> menuList = this.findMenuList(sql, value,1, 100000000);
		for (Menus menu : menuList) {
			m = m + "<UL style='background: #4298D7; '>";
			m = m + "<span class=menu ><A href='#' style='text-decoration:none; font-weight:bold;  color:#FFF; line-height:26px; width:200px; display:block; ' onFocus='this.blur();' >" + menu.getNameEn() + "</A> </span>";
			m = m + "<li class='menu_li' >";
			m = m + menuEn_2(roleCode, menu.getCode());
			m = m + "</li>";
			m = m + "</UL>";
		}
		return  m;
	
	}
	private String menuEn_2(String roleCode, String parent){
		HttpServletRequest request = ServletActionContext.getRequest();
		String base_url = request.getContextPath();

		String m = "<UL style='background:#E6E6E6;'>";
		String sql = " and roleCode=? and parent=? order by code";
		Object[] value = { roleCode, parent };
		List<Menus> menuList = this.findMenuList(sql, value,1, 100000000);
		for (Menus menu : menuList) {
			if (menu.getUrl().trim().equals("")){
				m = m + "<UL style='background: #CCCCCC;'>";
				m = m + "<span class=menu><A href='#' style='text-decoration:none; color:#000;line-height:26px; width:200px;display:block;' onFocus='this.blur()' >&nbsp;&nbsp;" + menu.getNameEn() + "</A></span>";
				m = m + menuEn_3(roleCode, menu.getCode());
				m = m + "</UL>";
			}
			else{
				if (menu.getUrl().substring(0, 1).equals("/")){
					m = m + "<A href='" + base_url +  menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;display:block;' >&nbsp;&nbsp;" + menu.getNameEn() + " -></A>";
				}
				else{
					m = m + "<A href='" + menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;display:block;' >&nbsp;&nbsp;" + menu.getNameEn() + " -></A>";
				}
					
			}
		}
		m = m + "</UL>";
		return  m;
	}
	private String menuEn_3(String roleCode, String parent){
		HttpServletRequest request = ServletActionContext.getRequest();
		String base_url = request.getContextPath();
		
		String m = "<LI class='menu_li' style='background:#fffffb; color:#2c2c2c; padding-left:20px;'>";
		String sql = " and roleCode=? and parent=? order by code";
		Object[] value = { roleCode, parent };
		List<Menus> menuList = this.findMenuList(sql, value,1, 100000000);
		for (Menus menu : menuList) {
			if (menu.getUrl().substring(0, 1).equals("/")){
				m = m +"<A  href='"  + base_url + menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;;display:block;'  >" + menu.getNameEn() + "-></A>";
			}
			else{
				m = m +"<A  href='" + menu.getUrl() + "' target='workFrame' style='text-decoration:none; color:#000;;display:block;'  >" + menu.getNameEn() + "-></A>";
			}
		}
		m = m + "</LI>";
		return "";
	}

}
