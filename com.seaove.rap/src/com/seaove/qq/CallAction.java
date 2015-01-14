package com.seaove.qq;

import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.qq.connect.utils.json.JSONException;
import com.qq.connect.utils.json.JSONObject;
public class CallAction extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Get.............");
		String code = req.getParameter("code");
		if(code.equals("")){
			System.out.println("获取Access Token 出错~");
			return;
		}
		//获取AccessToken token 还未解析的值
		String tokenPath =QQUtil.getAccessToken(App.appid, App.appkey, code, App.oauth_callback);
		
		//获取AccessToken 解析值
		Map<String, String> map = QQUtil.getAccessTokenValue(tokenPath);
		String access_token= map.get("access_token");
		
		
		//获取到用户OpenID 还未解析的值
		String openPath = QQUtil.getOpenID(access_token);
		
		//取用户OpenID 值
		Map<String, String> openValue = QQUtil.getOpenidValue(openPath);
		String openid = openValue.get("openid");

		//获取用户信息
		String userInfo = QQUtil.getUserInfo(App.appid, access_token, openid);
		System.out.println(userInfo);
		//解析数据
		try {
			JSONObject jsonInfo = new JSONObject(userInfo);
			System.out.println("昵称："+jsonInfo.getString("nickname"));
			System.out.println("性别："+jsonInfo.getString("gender"));
			System.out.println("省："+jsonInfo.getString("province"));
			System.out.println("城市："+jsonInfo.getString("city"));
			System.out.println("年："+jsonInfo.getString("year"));
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
	
	
	

}
