package cn.com.zc.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.rpc.ServiceFactory;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class SaaFilter implements Filter {
	private static Map<String, String> methodTaskMap = new HashMap<String, String>();
	private static Log log = LogFactory.getLog(SaaFilter.class);

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest hRequest = (HttpServletRequest) request;
		HttpSession session = hRequest.getSession();
		request.setCharacterEncoding("UTF-8");
		// 获取方法代码
		String strServletPath = hRequest.getServletPath();
		// 如果需要参数来判断操作类型，需 统一使用editType参数
		String editType = hRequest.getParameter("editType");
		String userCode = (String) session.getAttribute("UserCode");
		// 获取系统变量，
		if (editType != null) {
			strServletPath += editType;
		}
		log.debug("*********ServletPath********" + strServletPath);
		boolean flag = false;
		// 如果taskCode为空，说明不用控制
//		if (false) {
//			SaaAPIService saaAPIService = new SaaAPIServiceImpl();
//			if (methodTaskMap.size() <= 0) {
//				List<MethodTaskResInfo> list = new ArrayList<MethodTaskResInfo>(
//						0);
//				try {
//					// 调用接口，获取方法功能列表
//					list = saaAPIService
//							.getMethodTaskList(IConstants.USERSOURCE_IMS);
//				} catch (Exception e) {
//					throw new BusinessException("获取方法功能列表异常！", false);
//				}
//				MethodTaskResInfo methodTaskInfo = null;
//				// 循环遍历方法功能列表，将数据初始化到全局静态变量methodTaskMap中
//				for (int i = 0; i < list.size(); i++) {
//					methodTaskInfo = list.get(i);
//					// methodCode必须唯一
//					methodTaskMap.put(methodTaskInfo.getMETHODCODE(),
//							methodTaskInfo.getTASKCODE());
//				}
//			}
//			String taskCode = methodTaskMap.get(strServletPath);
//			if (taskCode != null) {
//				try {
//					flag = saaAPIService.checkPower(IConstants.USERSOURCE_IMS,
//							userCode, taskCode, IConstants.POWERTYPE_STR_INNER);
//				} catch (Exception e) {
//					throw new BusinessException(e.getMessage(), false);
//				}
//				// 如果没有权限，则抛出异常信息
//				if (!flag) {
//					throw new BusinessException("您没有该功能权限，请与系统管理员联系！", false);
//				}
//			}
//		} else {
//			SaaInterfaceService saaInterfaceService = (SaaInterfaceService) ServiceFactory
//					.getService("saaInterfaceService");// 获得Spring管理的bean
//			if (methodTaskMap.size() <= 0) {
//				List<SaaMethodTask> list = new ArrayList<SaaMethodTask>();
//				try {
//					list = saaInterfaceService
//							.getMethodTaskList(IConstants.USERSOURCE_IMS);
//				} catch (Exception e) {
//					throw new BusinessException("获取方法功能列表异常！", false);
//				}
//				SaaMethodTask methodTask = null;
//				for (int i = 0; i < list.size(); i++) {
//					methodTask = list.get(i);
//					methodTaskMap.put(methodTask.getMethodCode(), methodTask
//							.getSaaTask().getTaskCode());
//				}
//			}
//			String taskCode = methodTaskMap.get(strServletPath);
//			if (taskCode != null) {
//				try {
//					flag = saaInterfaceService.checkPower(
//							IConstants.USERSOURCE_IMS, userCode, taskCode,
//							IConstants.POWERTYPE_INNER);
//				} catch (Exception e) {
//					e.printStackTrace();
////					throw new BusinessException(e.getMessage(), false);
//				}
//				// 如果没有权限，则抛出异常信息
//				if (!flag) {
//					String isOpen = hRequest.getParameter("isOpen");
//					if (isOpen == null) {
//						isOpen = "0";
//					}
//					hRequest.setAttribute("isOpen", isOpen);
//					throw new BusinessException("您没有该功能权限，请与系统管理员联系！", false);
//				}
//			}
//		}

		filterChain.doFilter(request, response);
	}

	public void init(FilterConfig filterConfig) throws ServletException {

	}
}