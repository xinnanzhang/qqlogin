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
	 * ���ʻ�����
	 */
	public void localeDis(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ��ȡ�ͻ��˵���������
		Locale locale = request.getLocale();
		String language = locale.getLanguage();
		String country = locale.getCountry();

		// ������Ӧ��������
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String title = "�����������";
		String docType = "<!doctype html public \"-//w3c//dtd html 4.0 "
				+ "transitional//en\">\n";
		out.println(docType + "<html>\n" + "<head><title>" + title
				+ "</title></head>\n" + "<body bgcolor=\"#f0f0f0\">\n"
				+ "<h1 align=\"center\">" + language + "</h1>\n"
				+ "<h2 align=\"center\">" + country + "</h2>\n"
				+ "</body></html>");
	}

	/**
	 * ���ðٷֱ�
	 */
	public void ShowSpanish(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		// ������Ӧ��������
	    response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	    // ��ȡ�ͻ��˵���������
	    Locale locale = request.getLocale( );
	    NumberFormat nft = NumberFormat.getPercentInstance(locale);
	    String formattedPerc = nft.format(0.51);

	    String title = "�ض����������õİٷֱ�";
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
	 * session����
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void sessionDis(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ��������� session �Ự���򴴽�һ�� session ����
		HttpSession session = request.getSession(true);
		// ��ȡ session ����ʱ��
		Date createTime = new Date(session.getCreationTime());
		// session.invalidate();
		// ����session����ʱ��
		session.setMaxInactiveInterval(1);
		// ��ȡ����ҳ�����һ�η���ʱ��
		Date lastAccessTime = new Date();
		// Date lastAccessTime = new Date(session.getLastAccessedTime());
		String title = "��ӭ�ص��ҵ���վ";
		Integer visitCount = new Integer(0);
		String visitCountKey = new String("visitCount");
		String userIDKey = new String("userID");
		String userID = new String("ABCD");

		// �����ҳ���Ƿ����µķ�����
		if (session.isNew()) {
			title = "��ӭ�����ҵ���վ";
			session.setAttribute(userIDKey, userID);
		} else {
			visitCount = (Integer) session.getAttribute(visitCountKey);
			visitCount = visitCount + 1;
			userID = (String) session.getAttribute(userIDKey);
		}
		session.setAttribute(visitCountKey, visitCount);

		// ������Ӧ��������
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String docType = "<!doctype html public \"-//w3c//dtd html 4.0 "
				+ "transitional//en\">\n";
		out.println(docType + "<html>\n" + "<head><title>" + title
				+ "</title></head>\n" + "<body bgcolor=\"#f0f0f0\">\n"
				+ "<h1 align=\"center\">" + title + "</h1>\n"
				+ "<h2 align=\"center\">Session ��Ϣ</h2>\n"
				+ "<table border=\"1\" align=\"center\">\n"
				+ "<tr bgcolor=\"#949494\">\n"
				+ "  <th>Session ��Ϣ</th><th>ֵ</th></tr>\n" + "<tr>\n"
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