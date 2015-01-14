package com.seaove.action;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.text.NumberFormat;
import java.util.*;

public class SessionTrack extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ShowSpanish(request,response);
	}

	/**
	 * 国际化处理
	 */
	public void localeDis(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 获取客户端的区域设置
		Locale locale = request.getLocale();
		String language = locale.getLanguage();
		String country = locale.getCountry();

		// 设置响应内容类型
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String title = "检测区域设置";
		String docType = "<!doctype html public \"-//w3c//dtd html 4.0 "
				+ "transitional//en\">\n";
		out.println(docType + "<html>\n" + "<head><title>" + title
				+ "</title></head>\n" + "<body bgcolor=\"#f0f0f0\">\n"
				+ "<h1 align=\"center\">" + language + "</h1>\n"
				+ "<h2 align=\"center\">" + country + "</h2>\n"
				+ "</body></html>");
	}

	/**
	 * 设置百分比
	 */
	public void ShowSpanish(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// 设置响应内容类型
	    response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	    // 获取客户端的区域设置
	    Locale locale = request.getLocale( );
	    NumberFormat nft = NumberFormat.getPercentInstance(locale);
	    String formattedPerc = nft.format(0.51);

	    String title = "特定于区域设置的百分比";
	    String docType =
	      "<!doctype html public \"-//w3c//dtd html 4.0 " +
	      "transitional//en\">\n";
	      out.println(docType +
	      "<html>\n" +
	      "<head><title>" + title + "</title></head>\n" +
	      "<body bgcolor=\"#f0f0f0\">\n" +
	      "<h1 align=\"center\">" + formattedPerc + "</h1>\n" +
	      "</body></html>");
	}
	/**
	 * session处理
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void sessionDis(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 如果不存在 session 会话，则创建一个 session 对象
		HttpSession session = request.getSession(true);
		// 获取 session 创建时间
		Date createTime = new Date(session.getCreationTime());
		// session.invalidate();
		// 设置session过期时间
		session.setMaxInactiveInterval(1);
		// 获取该网页的最后一次访问时间
		Date lastAccessTime = new Date();
		// Date lastAccessTime = new Date(session.getLastAccessedTime());
		String title = "欢迎回到我的网站";
		Integer visitCount = new Integer(0);
		String visitCountKey = new String("visitCount");
		String userIDKey = new String("userID");
		String userID = new String("ABCD");

		// 检查网页上是否有新的访问者
		if (session.isNew()) {
			title = "欢迎来到我的网站";
			session.setAttribute(userIDKey, userID);
		} else {
			visitCount = (Integer) session.getAttribute(visitCountKey);
			visitCount = visitCount + 1;
			userID = (String) session.getAttribute(userIDKey);
		}
		session.setAttribute(visitCountKey, visitCount);

		// 设置响应内容类型
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String docType = "<!doctype html public \"-//w3c//dtd html 4.0 "
				+ "transitional//en\">\n";
		out.println(docType + "<html>\n" + "<head><title>" + title
				+ "</title></head>\n" + "<body bgcolor=\"#f0f0f0\">\n"
				+ "<h1 align=\"center\">" + title + "</h1>\n"
				+ "<h2 align=\"center\">Session 信息</h2>\n"
				+ "<table border=\"1\" align=\"center\">\n"
				+ "<tr bgcolor=\"#949494\">\n"
				+ "  <th>Session 信息</th><th>值</th></tr>\n" + "<tr>\n"
				+ "  <td>id</td>\n" + "  <td>" + session.getId()
				+ "</td></tr>\n" + "<tr>\n" + "  <td>Creation Time</td>\n"
				+ "  <td>" + createTime + "  </td></tr>\n" + "<tr>\n"
				+ "  <td>Time of Last Access</td>\n" + "  <td>"
				+ lastAccessTime + "  </td></tr>\n" + "<tr>\n"
				+ "  <td>User ID</td>\n" + "  <td>" + userID + "  </td></tr>\n"
				+ "<tr>\n" + "  <td>Number of visits</td>\n" + "  <td>"
				+ visitCount + "</td></tr>\n" + "</table>\n" + "</body></html>");
	}
}