package com.seaove.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Platform;
import org.eclipse.rap.json.JsonArray;
import org.eclipse.rap.json.JsonObject;


public class SenchaAction extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		resp.setCharacterEncoding("UTF-8");
		
		//设置跨域请求
		resp.setHeader("Access-Control-Allow-Origin", "*");
		resp.setHeader("Access-Control-Allow-Headers","X-Requested-With");
//		PrintWriter out = resp.getWriter();
//		out.write("{\"success\":false,\"msg\":\"发生错误\",\"errors\": [{\"field\":\"name\",\"message\":\"输入的名称在数据库中已存在\"},{\"field\":\"title\",\"message\":\"输入的电影标题在数据库中已存在\"}]}");
		try {
			JsonObject obj = new JsonObject();
			obj.add("success", true);
	//		obj.add("msg", "123");
	//		obj.add("text", "hello world!");
			
//			User user = new User();
//			user.setUserName("hi~");
			
			JsonObject o = new JsonObject();
			o.add("name", "张三");
			o.add("sex", "female");
			o.add("password", "1234567");
			o.add("age", "15");
			o.add("email", "435718349@qq.com");
			o.add("url", "http://blog.csdn.net/leehong2005/article/details/12567757");
			o.add("memo", "测试");
			JsonArray array = new JsonArray();
			array.add(o);
//			array.add("2");
			obj.add("data", array);
	//		out.write(obj.toString());

	        req.getAttribute("txt_name");
			String age = req.getParameter("id");
			Enumeration<String> e = req.getParameterNames();
			
	//		User user = new User();
	//		user.setUserName("hi~");
	//		user.setUrl("http://192.168.9.83:10080");
	//		Map<String,Object> root=new HashMap<String, Object>();
	//		root.put("user", user);
			
			PrintWriter out = resp.getWriter();
			out.write(obj.toString());
	//		File file=new File(getRoot()+"/ftl");
	////		FreeMarkertUtil.analysisTemplateTwo(file,"test.ftl", "gbk", root, out);
	//		FreeMarkertUtil.analysisTemplateTwo(file,"index.ftl", "utf-8", root, out);
			System.out.println("注册");
		} catch (Exception e) {
			e.printStackTrace();
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
