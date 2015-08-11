package cn.com.zc.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanSub;
import cn.com.zc.jrdbModel.WUser;
import cn.com.zc.model.Arbitman;
import cn.com.zc.model.Menus;
import cn.com.zc.model.Party;
import cn.com.zc.model.User;
import cn.com.zc.model.Urs;
import cn.com.zc.model.Wuser;
import cn.com.zc.service.facade.ArbitmanService;
import cn.com.zc.service.facade.MenuService;
import cn.com.zc.service.facade.RegionService;
import cn.com.zc.service.facade.UserService;
import cn.com.zc.service.facade.UrService;
import cn.com.zc.service.facade.WuserService;
import cn.com.zc.util.MD5;
import cn.com.zc.util.Mymail;
import cn.com.zc.util.RandomValidateCode;
import cn.com.zc.util.Sha1;

public class WelcomeAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private ArbitmanService arbitmanService;
	private User user;
	private List<User> userList;
	private UserService userService;
	private List<Wuser> wuserList;
	private Wuser wuser;
	private WuserService wuserService;
	private MenuService menuService;
	private RegionService regionService;
	private UrService urService;
	private String old_password;
	private String password;
	private String menu_html;
	private String jump;
	private String result;
	private String code;
	private String error;
	private String veryCode;
	private String userCode;
	private String userName;
	private String userType;
	private String idCard;
	private String email;
	private String cpwDisplay;
	private String myName;
	private String language;
	
	
	public String getMyName() {
		return myName;
	}

	public void setMyName(String myName) {
		this.myName = myName;
	}
	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}
	
	public String getCpwDisplay() {
		return cpwDisplay;
	}

	public void setCpwDisplay(String cpwDisplay) {
		this.cpwDisplay = cpwDisplay;
	}
	
	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	
	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getVeryCode() {
		return veryCode;
	}

	public void setVeryCode(String veryCode) {
		this.veryCode = veryCode;
	}

	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getJump() {
		return jump;
	}

	public void setJump(String jump) {
		this.jump = jump;
	}

	public String getMenu_html() {
		return menu_html;
	}

	public void setMenu_html(String menu_html) {
		this.menu_html = menu_html;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getOld_password() {
		return old_password;
	}

	public void setOld_password(String oldPassword) {
		old_password = oldPassword;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public WuserService getWuserService() {
		return wuserService;
	}

	public void setWuserService(WuserService wuserService) {
		this.wuserService = wuserService;
	}

	public MenuService getMenuService() {
		return menuService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}
	
	public RegionService getRegionService() {
		return regionService;
	}

	public void setRegionService(RegionService regionService) {
		this.regionService = regionService;
	}

	public UrService getUrService() {
		return urService;
	}

	public void setUrService(UrService urService) {
		this.urService = urService;
	}

	public ArbitmanService getArbitmanService() {
		return arbitmanService;
	}

	public void setArbitmanService(ArbitmanService arbitmanService) {
		this.arbitmanService = arbitmanService;
	}

	public String index() {
		intAppConfig();
		return SUCCESS;
	}
	
	public String login() {
		intAppConfig();
		return SUCCESS;
	}

	public String loginDo() {
		intAppConfig();
		if (password==null || password.trim().equals("")){
			error = "请输入密码";
			return "fail";
		}
		
		String validateCode = request.getSession().getAttribute(
				RandomValidateCode.RANDOMCODEKEY).toString();
		if (validateCode.equals(veryCode)) {
			StringBuffer condition = new StringBuffer();
			condition.append(" and code=?  and used='Y' and used_used='Y'");
			Object[] value = { code };
			List<User> userList = userService.findUserList(
					condition.toString(), value, 0, 0);

			if (userList.size() > 0) {
				User user = userList.get(0);
				if (user.getPassword().equals(password)) {
					session.put("partyCategory","");
					session.put("userType", "manager");
					session.put("userCategory", "00");
					session.put("userCode", code);
					session.put("userName", user.getName());
					session.put("userTel", user.getTelephone());
					session.put("userEmail", user.getEmail());
					String r = "";
					List<Urs> urList = urService.findUrList(code);
					for (Urs ur : urList) {
						r = r + ur.getRoleCode() + ",";
					}
					session.put("userRole", r);
					return SUCCESS;
				} else {
					error = "登录信息错误";
					return "fail";
				}
			} else {
				error = "登录网络错误";
				return "fail";
			}
		}
		error = "验证码错误";
		return "fail";
	}

	public String login_1() {
		intAppConfig();
		return SUCCESS;
	}

	public String loginDo_1() throws Exception {
		intAppConfig();
		if (password==null || password.trim().equals("")){
			error = "请输入密码";
			error = this.getText("welcome.loginDo_1.mes_1") ;
			return "fail";
		}
		String validateCode = request.getSession().getAttribute(
				RandomValidateCode.RANDOMCODEKEY).toString();
		if (validateCode.equals(veryCode)) {
			StringBuffer condition = new StringBuffer();
			condition
					.append(" and code=? and active='1' and status='Y'");
			Object[] value = { code };
			wuserList = wuserService.findWuserList(condition.toString(), value,
					0, 0);
			if (wuserList.size() > 0 && wuserList.get(0).getStatusA() == 0) {
				wuser = wuserList.get(0);
				if (wuser.getPassword().equals(password)) {
					session.put("partyCategory","");
					session.put("userType", "party");
					session.put("userCategory", "12");
					session.put("userCode", code);
					String name = wuser.getName();
					if (name==null || name.equals("")){
						name = wuser.getNameIdcard();
					}
					session.put("userName", wuser.getNameIdcard());
					session.put("userTel", wuser.getTelephone());
					session.put("userEmail", wuser.getEmail());
					session.put("userRole", "0101");
					return SUCCESS;
				} else {
					error = "登录信息错误.";
					error = this.getText("welcome.loginDo_1.mes_2") ;
					return "fail";
				}
			} else {
				ReqPacket req = new ReqPacket();
				req.setFrom("w_user");
				List<String> conditions = new ArrayList<String>();
				//conditions.add("(code=? or name=? or id_card=? or telephone=?) and active='1' and status='Y'");
				conditions.add("code=? and active='1' and status='Y'");
				conditions.add(code);
				req.setConditions(conditions);
				JrDbHelp jr = new JrDbHelp();
				ResPacket rp = jr.find_all(req);
				if (rp.getStatus().equals("1")) {
					List<WUser> userSubList = new WUser().getObjects(rp);
					if (userSubList.size() == 0) {
						error = "登录信息错误..";
						error = this.getText("welcome.loginDo_1.mes_3") ;
						return "fail";
					} else {
						WUser userSub = userSubList.get(0);
						if (userSub.getPassword().equals(password)) {
							session.put("partyCategory","");
							session.put("userType", "party");
							session.put("userCategory", "11");
							session.put("userCode", code);
							String name = userSub.getName();
							if (name==null || name.equals("")){
								name = userSub.getName_idcard();
							}
							
							session.put("userName", name);
							session.put("userTel", userSub.getTelephone());
							session.put("userEmail", userSub.getEmail());
							session.put("userRole", "0101");
							return SUCCESS;
						} else {
							error = "登录信息错误...";
							error = this.getText("welcome.loginDo_1.mes_4") ;
							return "fail";
						}

					}
				} else {
					error = "登录网络错误....";
					error = this.getText("welcome.loginDo_1.mes_5") ;
					return "fail";
				}
			}
		}else{
			error = "验证码错误";
			error = this.getText("welcome.loginDo_1.mes_6") ;
			return "fail";	
		}
	}

	public String login_2() {
		intAppConfig();
		return SUCCESS;
	}

	public String loginDo_2() throws Exception {
		MD5 getMD5 = new MD5();
		intAppConfig();
		if (password==null || password.trim().equals("")){
			error = "请输入密码";
			error = this.getText("welcome.loginDo_2.mes_1") ;
			return "fail";
		}
		String validateCode = request.getSession().getAttribute(
				RandomValidateCode.RANDOMCODEKEY).toString();
		if (validateCode.equals(veryCode)) {
			List<Arbitman> arbitmanList;
			Arbitman arbitman;
			StringBuffer condition = new StringBuffer();
			condition.append(" and code=? and used='Y'");
			Object[] value = { code };
			arbitmanList = arbitmanService.findArbitmanList(condition
					.toString(), value, 0, 0);
			if (arbitmanList.size() > 0
					&& arbitmanList.get(0).getStatusA() == 0) {
				arbitman = arbitmanList.get(0);
				if (arbitman.getPassword().equals(getMD5.GetMD5Code(password))) {
					session.put("partyCategory","");
					session.put("userType", "arbitman");
					session.put("userCategory", "03");
					session.put("userCode", code);
					String name = arbitman.getName();
					if (name==null || name.equals("")){
						name = arbitman.getNameIdcard();
					}
					session.put("userName", arbitman.getNameIdcard());
					session.put("userTel", arbitman.getMobiletel());
					session.put("userEmail", arbitman.getEmail());
					session.put("userRole", "0102");
					return SUCCESS;
				} else {
					error = "登录信息错误.";
					error = this.getText("welcome.loginDo_2.mes_2") ;
					return "fail";
				}
			} else {
				ReqPacket req = new ReqPacket();
				List<String> conditions = new ArrayList<String>();
				req.setSelect("tb_arbitmen.code as code,tb_arbitmen.name as name,tb_arbitmen.name_idcard as name_idcard,tb_arbitmen.password as password,tb_arbitmen.mobiletel as mobiletel,tb_arbitmen.email as email");
				sysArgService.initSysArg();
				if (App.sysArgMap.get("0160").equals("1"))
				{
					req.setFrom("tb_arbitmen,tb_arbitmannows");
					conditions
					.add("(tb_arbitmen.code=? or tb_arbitmen.id_card=? or tb_arbitmen.name=? or tb_arbitmen.mobiletel=?)  and tb_arbitmen.used='Y' and tb_arbitmen.code=tb_arbitmannows.arbitman_num and tb_arbitmannows.used='Y'");
				}
				else{
					req.setFrom("tb_arbitmen");
					conditions
							.add("(code=? or id_card=? or name=? or mobiletel=?)  and used='Y'");
				}
				conditions.add(code);
				conditions.add(code);
				conditions.add(code);
				conditions.add(code);
				req.setConditions(conditions);
				JrDbHelp jr = new JrDbHelp();
				ResPacket rp = jr.find_all(req);
				if (rp.getStatus().equals("1")) {
					List<ArbitmanSub> arbitmanSubList = new ArbitmanSub().getObjects(rp);
					if (arbitmanSubList.size() == 0) {
						error = "登录信息错误..";
						error = this.getText("welcome.loginDo_2.mes_3") ;
						return "fail";
					} else {
						ArbitmanSub arbitmanSub = arbitmanSubList.get(0);
						if (arbitmanSub.getPassword().equals(getMD5.GetMD5Code(password))) {
							session.put("partyCategory","");
							session.put("userType", "arbitman");
							session.put("userCode", arbitmanSub.getCode());
							String name = arbitmanSub.getName();
							if (name==null || name.equals("")){
								name = arbitmanSub.getName_idcard();
							}
							session.put("userName", arbitmanSub.getName_idcard());
							session.put("userTel", arbitmanSub.getMobiletel());
							session.put("userEmail", arbitmanSub.getEmail());
							session.put("userRole", "0102");
							
							ReqPacket req2 = new ReqPacket();
							req2.setFrom("tb_arbitmannows");
							req2.setSelect("id");
							List<String> conditions_2 = new ArrayList<String>();
							conditions_2.add("arbitman_num=? and used='Y'");
							conditions_2.add(arbitmanSub.getCode());
							req2.setConditions(conditions_2);
							JrDbHelp jr2 = new JrDbHelp();
							ResPacket rp2 = jr2.find_all(req2);
							if (rp2.getStatus().equals("1")) {
								List<ArbitmanSub> arbitmanSubList_2 = new ArbitmanSub().getObjects(rp2);
								if (arbitmanSubList_2.size() > 0) {
									session.put("userCategory", "01");
								}else{
									session.put("userCategory", "02");
								}
							
							}else{
								session.put("userCategory", "00");
							}
							
							return SUCCESS;
						} else {
							error = "登录信息错误...";
							error = this.getText("welcome.loginDo_2.mes_4") ;
							return "fail";
						}

					}
				} else {
					error = "登录网络错误....";
					error = this.getText("welcome.loginDo_2.mes_5") ;
					return "fail";
				}
			}
		}else{
			error = "验证码错误";
			error = this.getText("welcome.loginDo_2.mes_6") ;
			return "fail";	
		}
	}

	public String login_3() {
		intAppConfig();
		return SUCCESS;
	}

	public String loginDo_3() throws Exception {
		MD5 getMD5 = new MD5();
		intAppConfig();
		if (password==null || password.trim().equals("")){
			error = "请输入密码";
			return "fail";
		}
		String validateCode = request.getSession().getAttribute(
				RandomValidateCode.RANDOMCODEKEY).toString();
		if (validateCode.equals(veryCode)) {
			ReqPacket req = new ReqPacket();
			req.setFrom("users,user_duties");
			req.setSelect("users.code as code, users.name as name, users.ext_password as ext_password,users.mobiletel as mobiletel,users.email as email");
			List<String> conditions = new ArrayList<String>();
			conditions.add("users.code=? and users.used='Y' and users.used_used='Y' and users.code=user_duties.user_code and user_duties.duty_code='0003' and users.is_ext='Y' ");
			conditions.add(code);
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket rp = jr.find_all(req);
			if (rp.getStatus().equals("1")) {
				List<cn.com.zc.jrdbModel.User> userSubList = new cn.com.zc.jrdbModel.User()
						.getObjects(rp);
				if (userSubList.size() == 0) {
					error = "登录信息错误.";
					return "fail";
				} else {
					cn.com.zc.jrdbModel.User userSub = userSubList.get(0);
					String ppp = userSub.getExt_password();
					if (ppp == null) {
						ppp = "";
					}
					if (ppp.equals(getMD5.GetMD5Code(password))) {
						session.put("partyCategory","");
						session.put("userType", "assistant");
						session.put("userCategory", "00");
						session.put("userCode", code);
						session.put("userName", userSub.getName());
						session.put("userTel", userSub.getMobiletel());
						session.put("userEmail", userSub.getEmail());
						session.put("userRole", "0103");
						return SUCCESS;
					} else {
						error = "登录信息错误..";
						return "fail";
					}
				}
			} else {
				error = "登录网络错误...";
				return "fail";
			}
		}
		error = "验证码错误";
		return "fail";
	}

	public String logout() {
		String r = "";
		if (session.get("userType") == null){
			r = "success4";
		}else{
			if (session.get("userType").equals("manager")){
				r = "success";
			}
			if (session.get("userType").equals("party")){
				r = "success1";
			}
			if (session.get("userType").equals("arbitman")){
				r = "success2";
			}
			if (session.get("userType").equals("assistant")){
				r = "success3";
			}
		}
		session.put("userType", null);
		session.put("userCategory", null);
		session.put("userCode", null);
		session.put("userName", null);
		session.put("userTel", null);
		session.put("userEmail", null);
		session.put("userRole", null);
		session.put("receviceCode", null);
		session.put("caseCode", null);
		session.put("caseClerk", null);
		session.put("partyCategory", null);
		return r;
	}

	public String main() {
		return SUCCESS;
	}

	public String mainFrame() {
		return SUCCESS;
	}

	public String top() {
		if (session.get("userCode") == null){
			userCode = "";
		}else{
			userCode = session.get("userCode").toString();
		}
		
		if (session.get("userType") == null){
			userType = "";
		}
		else{
			userType = session.get("userType").toString();
		}
		
		if (session.get("userName") == null){
			userName = "";
		}
		else{
			userName = session.get("userName").toString();
		}
		
		if (userType.equals("")){
			cpwDisplay="0";
		}else{
			cpwDisplay="1";
		}
			
		return SUCCESS;
	}

	public String menu() {
		menuService.initMenu();
		menu_html = "";
		String c = session.get("userCode").toString();
		// List<Urs> urList = urService.findUrList(c);
		// for (Urs ur : urList) {
		// //menu_html = menu_html + menu_1(ur.getRoleCode());
		// menu_html = menu_html + App.roleMenu.get(ur.getRoleCode());
		// }
		String[] role = session.get("userRole").toString().split(",");
		for (String r : role) {
			if (App.roleMenu.get(r) != null) {
				if (session.get("language")==null){
					menu_html = menu_html + App.roleMenu.get(r);
				}else if (session.get("language").toString().equals("zh_CN")){
					menu_html = menu_html + App.roleMenu.get(r);
				}else if (session.get("language").toString().equals("zh_TW")){
					menu_html = menu_html + App.roleMenuTw.get(r);
				}else if (session.get("language").toString().equals("en_US")){
					menu_html = menu_html + App.roleMenuEn.get(r);
				}else{
					menu_html = menu_html + App.roleMenu.get(r);
				}
			}
		}
		return SUCCESS;
	}

	public String desk() {
		userType = session.get("userType").toString();
		return SUCCESS;
	}

	public String readMeForParty() {
		return SUCCESS;
	}
	
	public String bottom() {
		return SUCCESS;
	}

	public String checkSameKey() {
		Object[] value = { code };
		userList = userService.findUserList("and code=?", value, 0, 0);
		if (userList.size() > 0) {
			result = "fail";
		} else {
			result = "success";
		}
		return "result";
	}

	// private String menu_1(String roleCode){
	// String m = "";
	// String sql = " and roleCode=? and parent='0' order by code";
	// Object[] value = { roleCode };
	// List<Menus> menuList = menuService.findMenuList(sql, value,1, 100000000);
	// for (Menus menu : menuList) {
	// m = m + "<UL style='background: #4298D7; '>";
	// m = m +
	// "<span class=menu ><A  href='#' style='text-decoration:none; font-weight:bold;  color:#FFF; line-height:26px; width:200px; display:block; ' onFocus='this.blur()'  >"
	// + menu.getName() + "</A> </span>";
	// m = m + "<li>";
	// m = m + menu_2(roleCode, menu.getCode());
	// m = m + "</li>";
	// m = m + "</UL>";
	// }
	// return m;
	//	
	// }
	// private String menu_2(String roleCode, String parent){
	// HttpServletRequest request = ServletActionContext.getRequest();
	// String base_url = request.getContextPath();
	//
	// String m = "<UL style='background:#E6E6E6;'>";
	// String sql = " and roleCode=? and parent=? order by code";
	// Object[] value = { roleCode, parent };
	// List<Menus> menuList = menuService.findMenuList(sql, value,1, 100000000);
	// for (Menus menu : menuList) {
	// if (menu.getUrl().trim().equals("")){
	// m = m + "<UL style='background: #CCCCCC;'>";
	// m = m +
	// "<span class=menu><A  href='#' style='text-decoration:none; color:#000;line-height:26px; width:200px;display:block;' onFocus='this.blur()' >&nbsp;&nbsp;"
	// + menu.getName() + "</A></span>";
	// m = m + menu_3(roleCode, menu.getCode());
	// m = m + "</UL>";
	// }
	// else{
	// if (menu.getUrl().substring(0, 1).equals("/")){
	// m = m + "<A  href='" + base_url + menu.getUrl() +
	// "' target='workFrame' style='text-decoration:none; color:#000;display:block;' >&nbsp;&nbsp;"
	// + menu.getName() + " -></A>";
	// }
	// else{
	// m = m + "<A  href='" + menu.getUrl() +
	// "' target='workFrame' style='text-decoration:none; color:#000;display:block;' >&nbsp;&nbsp;"
	// + menu.getName() + " -></A>";
	// }
	//					
	// }
	// }
	// m = m + "</UL>";
	// return m;
	// }
	// private String menu_3(String roleCode, String parent){
	// HttpServletRequest request = ServletActionContext.getRequest();
	// String base_url = request.getContextPath();
	//		
	// String m =
	// "<LI style='background:#fffffb; color:#2c2c2c; padding-left:20px;'>";
	// String sql = " and roleCode=? and parent=? order by code";
	// Object[] value = { roleCode, parent };
	// List<Menus> menuList = menuService.findMenuList(sql, value,1, 100000000);
	// for (Menus menu : menuList) {
	// if (menu.getUrl().substring(0, 1).equals("/")){
	// m = m +"<A  href='" + base_url + menu.getUrl() +
	// "' target='workFrame' style='text-decoration:none; color:#000;;display:block;'  >"
	// + menu.getName() + "-></A>";
	// }
	// else{
	// m = m +"<A  href='" + menu.getUrl() +
	// "' target='workFrame' style='text-decoration:none; color:#000;;display:block;'  >"
	// + menu.getName() + "-></A>";
	// }
	// }
	// m = m + "</LI>";
	// return "";
	// }
	
	public String toFindPsd_1(){
		return "success";
	}
	
	public String findPsd_1() throws Exception{
		String validateCode = request.getSession().getAttribute(
				RandomValidateCode.RANDOMCODEKEY).toString();
		if (validateCode.equals(veryCode)) {
			StringBuffer condition = new StringBuffer();
			condition.append(" and (code=?) and status='Y'");
			Object[] value = { code };
			wuserList = wuserService.findWuserList(condition.toString(), value,
					0, 0);
			if (wuserList.size() > 0 && wuserList.get(0).getStatusA()==0) {
				wuser = wuserList.get(0);
				if (wuser.getEmail().equals(email)){
					Mymail mymail = new Mymail();
					mymail.sendMailTo(wuser.getEmail(), this.getText("welcome.findPsd_1.mes_1"), this.getText("welcome.findPsd_1.mes_2")  + wuser.getPassword());
					error = "密码已经发送到您的邮箱，请注意查看";
					error = this.getText("welcome.findPsd_1.mes_3") ;
					return "success";
				}else{
					error = "找回密码失败，用户邮箱信息错误";
					error = this.getText("welcome.findPsd_1.mes_4") ;
					return "success";
				}
			}
			else{
				ReqPacket req = new ReqPacket();
				req.setFrom("w_user");
				List<String> conditions = new ArrayList<String>();
				conditions.add("(code=?) and active='1' and status='Y'");
				conditions.add(code);
				req.setConditions(conditions);
				JrDbHelp jr = new JrDbHelp();
				ResPacket rp = jr.find_all(req);
				if (rp.getStatus().equals("1")) {
					List<WUser> userSubList = new WUser().getObjects(rp);
					if (userSubList.size() == 0) {
						error = "找回密码失败，用户编码信息错误";
						error = this.getText("welcome.findPsd_1.mes_4") ;
						return "success";
					} else {
						WUser userSub = userSubList.get(0);
						if (userSub.getEmail().equals(email)) {
							Mymail mymail = new Mymail();
							mymail.sendMailTo(userSub.getEmail(), "华仲外网办案系统密码找回", "当事方用户密码为 " + userSub.getPassword());
							error = "密码已经发送到您的邮箱，请注意查看";
							error = this.getText("welcome.findPsd_1.mes_3") ;
							return "success";
							
						}else{
							error = "找回密码失败，用户邮箱信息错误";
							error = this.getText("welcome.findPsd_1.mes_4") ;
							return "success";
						}
					}
				}else{
					error = "找回密码失败，用户编码信息错误";
					error = this.getText("welcome.findPsd_1.mes_4") ;
					return "success";
				}
			}
		}else{
			error = "校验码错误";
			error = this.getText("welcome.findPsd_1.mes_5") ;
			return "success";	
		}
		
	}
	
	public String toFindPsd_2(){
		return "success";
	}
	
	public String findPsd_2() throws Exception{
		String validateCode = request.getSession().getAttribute(
				RandomValidateCode.RANDOMCODEKEY).toString();
		if (validateCode.equals(veryCode)) {
			StringBuffer condition = new StringBuffer();
			List<Arbitman> arbitmanList;
			Arbitman arbitman;
			condition.append(" and code=? and used='Y'");
			Object[] value = { code };
			arbitmanList = arbitmanService.findArbitmanList(condition
					.toString(), value, 0, 0);
			if (arbitmanList.size() > 0 && arbitmanList.get(0).getStatusA()==0) {
				arbitman = arbitmanList.get(0);
				if (arbitman.getEmail().equals(email)){
					Mymail mymail = new Mymail();
					mymail.sendMailTo(arbitman.getEmail(), this.getText("welcome.findPsd_2.mes_1"), this.getText("welcome.findPsd_2.mes_2") + arbitman.getPassword());
					error = "密码已经发送到您的邮箱，请注意查看";
					error = this.getText("welcome.findPsd_2.mes_3");
					return "success";
				}else{
					error = "找回密码失败，用户邮箱信息错误";
					error = this.getText("welcome.findPsd_2.mes_4");
					return "success";
				}
			}
			else{
				ReqPacket req = new ReqPacket();
				req.setFrom("tb_arbitmen");
				List<String> conditions = new ArrayList<String>();
				conditions.add("(code=?) and used='Y'");
				conditions.add(code);
				req.setConditions(conditions);
				JrDbHelp jr = new JrDbHelp();
				ResPacket rp = jr.find_all(req);
				if (rp.getStatus().equals("1")) {
					List<ArbitmanSub> arbitmanSubList = new ArbitmanSub().getObjects(rp);
					if (arbitmanSubList.size() == 0) {
						error = "找回密码失败，用户编码信息错误";
						error = this.getText("welcome.findPsd_2.mes_4");
						return "success";
					} else {
						ArbitmanSub arbitmanSub = arbitmanSubList.get(0);
						if (arbitmanSub.getEmail().equals(email)) {
							Mymail mymail = new Mymail();
							mymail.sendMailTo(arbitmanSub.getEmail(), "华仲外网办案系统密码找回", "仲裁员用户密码为 " + arbitmanSub.getPassword());
							error = "密码已经发送到您的邮箱，请注意查看";
							error = this.getText("welcome.findPsd_2.mes_3");
							return "success";
							
						}else{
							error = "找回密码失败，用户邮箱信息错误";
							error = this.getText("welcome.findPsd_2.mes_4");
							return "success";
						}
					}
				}else{
					error = "找回密码失败，用户编码信息错误";
					error = this.getText("welcome.findPsd_2.mes_4");
					return "success";
				}
			}
		}else{
			error = "校验码错误";
			error = this.getText("welcome.findPsd_1.mes_5") ;
			return "success";	
		}	
	}
	
	public String toChangePassword(){
		if (session.get("userCode") == null){
			userCode = "";
		}else{
			userCode = session.get("userCode").toString();
		}
		
		if (session.get("userType") == null){
			userType = "";
		}
		else{
			userType = session.get("userType").toString();
		}
		
		if (session.get("userName") == null){
			userName = "";
		}
		else{
			userName = session.get("userName").toString();
		}
		return "success";
	}
	
	public String changePassword() throws Exception{
		MD5 getMD5 = new MD5();
		userType = session.get("userType").toString();
		userCode = session.get("userCode").toString();
		if (userType.equals("manager")){
			StringBuffer condition = new StringBuffer();
			List<User> userList;
			User user;
			condition.append(" and code=?");
			Object[] value = { userCode };
			userList = userService.findUserList(condition.toString(), value, 0, 0);
			user = userList.get(0);
			if (user.getPassword().equals(old_password)){
				user.setPassword(password);
				userService.updateUser(user);
				error = "密码修改成功。";
				error =this.getText("welcome.changePassword.mes_1");
				return "success";
			}else{
				error = "旧密码错误，密码修改失败。";
				error =this.getText("welcome.changePassword.mes_3");
				return "success";
			}
		}
		
		if (userType.equals("party")){
			StringBuffer condition = new StringBuffer();
			List<Wuser> wuserList;
			Wuser wuser;
			condition.append(" and code=?");
			Object[] value = { userCode };
			wuserList = wuserService.findWuserList(condition.toString(), value, 0, 0);
			if (wuserList.size() > 0 && wuserList.get(0).getStatusA()==0) {
				wuser = wuserList.get(0);
				if (wuser.getPassword().equals(old_password)){
					wuser.setPassword(password);
					wuserService.updateWuser(wuser);
					error = "密码修改成功。";
					error =this.getText("welcome.changePassword.mes_1");
					return "success";
				}else{
					error = "旧密码错误，密码修改失败。";
					error =this.getText("welcome.changePassword.mes_3");
					return "success";
				}
			}else{
				ReqPacket req = new ReqPacket();
				req.setFrom("w_user");
				req.setSelect("id,password");
				List<String> conditions = new ArrayList<String>();
				conditions.add("code=? and active='1' and status='Y'");
				conditions.add(userCode);
				req.setConditions(conditions);
				JrDbHelp jr = new JrDbHelp();
				ResPacket rp = jr.find_all(req);
				if (rp.getStatus().equals("1")) {
					List<WUser> userSubList = new WUser().getObjects(rp);
					if (userSubList.size() == 0) {
						error = "密码修改失败。";
						error =this.getText("welcome.changePassword.mes_2");
						return "success";
					} else {
						WUser userSub = userSubList.get(0);
						if (userSub.getPassword().equals(old_password)) {
							userSub.setPassword(password);
							req = userSub.toReqPacketForUpdate();
							req.setFrom("w_user");
							req.setId(userSub.getId());
							jr.update(req);
							error = "密码修改成功。";
							error =this.getText("welcome.changePassword.mes_1");
							return "success";
							
						}else{
							error = "旧密码错误，密码修改失败。";
							error =this.getText("welcome.changePassword.mes_3");
							return "success";
						}
					}
				}else{
					error = "密码修改失败，用户编码信息错误";
					error =this.getText("welcome.changePassword.mes_4");
					return "success";
				}
			}
		}
		
		if (userType.equals("arbitman")){
			StringBuffer condition = new StringBuffer();
			List<Arbitman> arbitmanList;
			Arbitman arbitman;
			condition.append(" and code=? and used='Y'");
			Object[] value = { userCode };
			arbitmanList = arbitmanService.findArbitmanList(condition
					.toString(), value, 0, 0);
			if (arbitmanList.size() > 0 && arbitmanList.get(0).getStatusA()==0) {
				arbitman = arbitmanList.get(0);
				if (arbitman.getPassword().equals(getMD5.GetMD5Code(old_password))){
					arbitman.setPassword(getMD5.GetMD5Code(password));
					arbitmanService.updateArbitman(arbitman);
					error = "密码修改成功。";
					error =this.getText("welcome.changePassword.mes_1");
					return "success";
				}else{
					error = "旧密码错误，密码修改失败。";
					error =this.getText("welcome.changePassword.mes_3");
					return "success";
				}
			}
			else{
				ReqPacket req = new ReqPacket();
				req.setFrom("tb_arbitmen");
				req.setSelect("id,password");
				List<String> conditions = new ArrayList<String>();
				conditions.add("(code=?) and used='Y'");
				conditions.add(userCode);
				req.setConditions(conditions);
				JrDbHelp jr = new JrDbHelp();
				ResPacket rp = jr.find_all(req);
				if (rp.getStatus().equals("1")) {
					List<ArbitmanSub> arbitmanSubList = new ArbitmanSub().getObjects(rp);
					ArbitmanSub arbitmanSub = arbitmanSubList.get(0);
					if (arbitmanSub.getPassword().equals(getMD5.GetMD5Code(old_password))) {
						arbitmanSub.setPassword(getMD5.GetMD5Code(password));
						req = arbitmanSub.toReqPacketForUpdate();
						req.setFrom("tb_arbitmen");
						req.setId(arbitmanSub.getId());
						jr.update(req);
						error = "密码修改成功。";
						error =this.getText("welcome.changePassword.mes_1");
						return "success";
						
					}else{
						error = "旧密码错误，密码修改失败。";
						error =this.getText("welcome.changePassword.mes_3");
						return "success";
					}
				}else{
					error = "密码修改失败。";
					error =this.getText("welcome.changePassword.mes_2");
					return "success";
				}
			}
		}
		
		if (userType.equals("assistant")){
			ReqPacket req = new ReqPacket();
			req.setFrom("users");
			req.setSelect("id,ext_password");
			List<String> conditions = new ArrayList<String>();
			conditions.add("(code=?) and used='Y'");
			conditions.add(userCode);
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket rp = jr.find_all(req);
			if (rp.getStatus().equals("1")) {
				List<cn.com.zc.jrdbModel.User> userSubList = new cn.com.zc.jrdbModel.User().getObjects(rp);
				cn.com.zc.jrdbModel.User userSub = userSubList.get(0);
				if (userSub.getExt_password().equals(getMD5.GetMD5Code(old_password))) {
					userSub.setExt_password(getMD5.GetMD5Code(password));
					req = userSub.toReqPacketForUpdate();
					req.setFrom("users");
					req.setId(userSub.getId());
					jr.update(req);
					error = "密码修改成功。";
					error =this.getText("welcome.changePassword.mes_1");
					return "success";
					
				}else{
					error = "旧密码错误，密码修改失败。";
					error =this.getText("welcome.changePassword.mes_3");
					return "success";
				}
			}else{
				error = "密码修改失败。";
				error =this.getText("welcome.changePassword.mes_2");
				return "success";
			}
		}
		
		return "success";
	}
	
	public String locale(){
		if (language.equals("en_US")){
			addCookie(new Cookie("language","en_US"));
			session.put("language", "en_US");
		}
		if (language.equals("zh_CN")){
			addCookie(new Cookie("language","zh_CN"));
			session.put("language", "zh_CN");
		}
		if (language.equals("zh_TW")){
			addCookie(new Cookie("language","zh_TW"));
			session.put("language", "zh_TW");
		}
		return "success";
	}
	
	public void intAppConfig(){ 
		menuService.initMenu();
		regionService.initRegion();
	}
}
