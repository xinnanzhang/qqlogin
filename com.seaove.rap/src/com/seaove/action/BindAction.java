package com.seaove.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.rap.json.JsonObject;

/**
 * 对用户传过来的参数进行处理
 * @author xinnan
 *
 */
public class BindAction extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		resp.setContentType("text/html;charset=utf-8");
		resp.setCharacterEncoding("UTF-8");
		
		//设置跨域请求
		resp.setHeader("Access-Control-Allow-Origin", "*");
		resp.setHeader("Access-Control-Allow-Headers","X-Requested-With");
		
		String name = req.getParameter("name");
		System.out.println(name+"----------");
		//{"id":2,"pic":"http://www.361y.cn:8080/Files/img.jpg","username":"test"}
		JsonObject json = new JsonObject();
		json.add("id", "2");
		json.add("name", "test");
		PrintWriter out = resp.getWriter();
		out.write(json.toString());
//		String name = "test";
//		resp.sendRedirect("http://www.baidu.com");
//		resp.sendRedirect("http://localhost:10088/bind.do");
		
//		resp.sendRedirect("http://localhost:8080/test/index.html?user="+"bigit");
		
//		resp.sendRedirect("http://127.0.0.1:8000/示例3/index.html?name="+name);
	}
}
