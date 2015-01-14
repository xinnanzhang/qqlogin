package com.seaove.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seaove.entity.User;
import com.seaove.freemarker.FreeMarkertUtil;
import com.seaove.util.ContextUtil;

public class RegisterAction extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.service(req, resp);
		resp.setContentType("text/html;charset=utf-8");
		resp.setCharacterEncoding("UTF-8");
		
		User user = new User();
		user.setUserName("hi~");
		user.setUrl("http://192.168.9.83:10080");
		Map<String,Object> root=new HashMap<String, Object>();
		root.put("user", user);
		
		PrintWriter out = resp.getWriter();
		File file=new File(ContextUtil.getRoot()+"/ftl");
//		FreeMarkertUtil.analysisTemplateTwo(file,"test.ftl", "gbk", root, out);
		FreeMarkertUtil.analysisTemplateTwo(file,"index.ftl", "utf-8", root, out);
		System.out.println("зЂВс");
	}

}
