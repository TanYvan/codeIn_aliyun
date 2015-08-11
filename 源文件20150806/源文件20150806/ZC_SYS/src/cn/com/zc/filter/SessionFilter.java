package cn.com.zc.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.rpc.ServiceFactory;

public class SessionFilter implements Filter {
	public void init(FilterConfig filterconfig) throws ServletException {
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// 如果在initSession方法中有sendRedirect重定向，就不应该再继续后面的逻辑了，增加一个boolean变量，如果initSession方法中有重定向就返回false
		boolean result = initSession((HttpServletRequest) request,
				(HttpServletResponse) response);
		if (result) {
			chain.doFilter(request, response);
		}
	}

	private boolean initSession(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		String url=request.getRequestURI();
//		if(!"/ZC_SYS/user/login.do".equals(url)){
//			try {
//				if (session.getAttribute("userCode") == null
//						|| session.getAttribute("userCode").toString().equals("")) {
//					 response.sendRedirect("/ZC_SYS");
//					 return false;
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
		return true;
	}
}
