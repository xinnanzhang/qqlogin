package com.seaove.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Platform;


public class AjaxAction extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		resp.setCharacterEncoding("UTF-8");
		
		//set cross-domain request 设置跨域请求
		resp.setHeader("Access-Control-Allow-Origin", "*");
		resp.setHeader("Access-Control-Allow-Headers","X-Requested-With");
//		PrintWriter out = resp.getWriter();
//		out.write("{\"success\":false,\"msg\":\"发生错误\",\"errors\": [{\"field\":\"name\",\"message\":\"输入的名称在数据库中已存在\"},{\"field\":\"title\",\"message\":\"输入的电影标题在数据库中已存在\"}]}");
		
		try {
			StringBuffer ajax = new StringBuffer();
			ajax.append("<div id=\"pageAjax\" class=\"page out\">");
			ajax.append("<div class=\"content\">");
			ajax.append("<div>");
			ajax.append("<div class=\"contact-group\">");
			ajax.append("<div class=\"contact-list\">");
			ajax.append("<img src=\"img/head/contact-1.png\">");
			ajax.append("<nickname>new friend</nickname>");
			ajax.append("</div>");
			ajax.append("</div>");
			ajax.append("</div>");
			ajax.append("</div>");
			System.out.println("test");
			PrintWriter out = resp.getWriter();
			out.write(ajax.toString());
//			String ajax ="<div id=\"pageContacts\" class=\"page out\">";
		} catch (Exception e) {
			
		}


	}
	
	
	public static String getRoot() {
		String path = null;
		try {
			path = FileLocator.toFileURL(
					Platform.getBundle("com.seaove.rap").getEntry("")).getPath();
//			path = isLinuxReturnPerfixPath()+path.substring(path.indexOf("/") + 1, path.length());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}
}
