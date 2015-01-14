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
			System.out.println("��ȡAccess Token ����~");
			return;
		}
		//��ȡAccessToken token ��δ������ֵ
		String tokenPath =QQUtil.getAccessToken(App.appid, App.appkey, code, App.oauth_callback);
		
		//��ȡAccessToken ����ֵ
		Map<String, String> map = QQUtil.getAccessTokenValue(tokenPath);
		String access_token= map.get("access_token");
		
		
		//��ȡ���û�OpenID ��δ������ֵ
		String openPath = QQUtil.getOpenID(access_token);
		
		//ȡ�û�OpenID ֵ
		Map<String, String> openValue = QQUtil.getOpenidValue(openPath);
		String openid = openValue.get("openid");

		//��ȡ�û���Ϣ
		String userInfo = QQUtil.getUserInfo(App.appid, access_token, openid);
		System.out.println(userInfo);
		//��������
		try {
			JSONObject jsonInfo = new JSONObject(userInfo);
			System.out.println("�ǳƣ�"+jsonInfo.getString("nickname"));
			System.out.println("�Ա�"+jsonInfo.getString("gender"));
			System.out.println("ʡ��"+jsonInfo.getString("province"));
			System.out.println("���У�"+jsonInfo.getString("city"));
			System.out.println("�꣺"+jsonInfo.getString("year"));
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
	
	
	

}
