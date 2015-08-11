package cn.com.zc.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResultServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		String validateC = (String) request.getSession().getAttribute(
				"RANDOMVALIDATECODEKEY");
		String veryCode = request.getParameter("veryCode");
		PrintWriter out = response.getWriter();
		if (veryCode == null || "".equals(veryCode)) {
			out.print("验证码为空");
		} else {
			if (validateC.equals(veryCode)) {
				out.print("ok");
			} else {
				out.print("验证码错误");
			}
		}
		out.flush();
		out.close();
	}

}