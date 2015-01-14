package com.seaove.qq;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginAction extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//��ȡĬ����Ϣ��Ȩ
		//response.sendRedirect(QQUtil.getAuthorizationCode(App.appid, App.oauth_callback).toString());
		//��ȡ�û�������Ȩ��Ϣ
		List<String> list = new ArrayList<String>();
		list.add("get_user_info");
		String loginUrl = QQUtil.getAuthorizationCodeList(App.appid, App.oauth_callback, list).toString();
		response.sendRedirect(loginUrl);
	}

}
