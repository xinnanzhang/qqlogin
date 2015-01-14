package com.seaove.qq;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.httpclient.ConnectTimeoutException;

import com.qq.connect.utils.json.JSONException;
import com.qq.connect.utils.json.JSONObject;

public class QQUtil {
	/**
	 * ��ȡAuthorization Code  Ĭ����Ȩ
	 * 
	 * @param client_id
	 * 					���appid
	 * @param redirect_uri
	 * 					��Ļص���ַ
	 * @return String
	 */
	public static StringBuffer getAuthorizationCode(String client_id,String redirect_uri){
		StringBuffer str = new StringBuffer();
		str.append("https://graph.qq.com/oauth2.0/authorize");
		str.append("?response_type=code");//��Ȩ���ͣ���ֵ�̶�Ϊ"code"
		str.append("&client_id="+client_id);
		str.append("&redirect_uri="+redirect_uri);
		str.append("&state=test");//scope client�˵�״ֵ̬
		return str;
	}

	/**
	 * 
	 * @param client_id	Code �����Ȩ�б�
	 * 					���磺scope=get_user_info,list_album,upload_pic,do_like
	 * @param redirect_uri
	 * 					���appid
	 * @param scope
	 * 					�û���Ҫ��Ȩ����Ϣ
	 * @return
	 */
	public static String getAuthorizationCodeList(String client_id,String redirect_uri,List<String> scope){
		StringBuffer codeStr = new StringBuffer();
		for (int i = 0; i < scope.size(); i++) {
			if(i == (scope.size()-1)){
				codeStr.append(scope.get(i));
			}else{
				codeStr.append(scope.get(i)+",");
			}
		}
		StringBuffer code = getAuthorizationCode(client_id,redirect_uri);
		code.append("?scope="+codeStr.toString());
		return code.toString();
	}
	
	public static String getAccessTokenString(String client_id,String client_secret,String code,String redirect_uri){
		StringBuffer str = new StringBuffer();
		str.append("https://graph.qq.com/oauth2.0/token");
		str.append("?grant_type=authorization_code");//��Ȩ���ͣ��ڱ������У���ֵΪ��authorization_code��
		str.append("&client_id="+client_id);
		str.append("&client_secret="+client_secret);
		str.append("&code="+code);
		str.append("&redirect_uri="+redirect_uri);
		return str.toString();
	}
	
	/**
	 * ͨ��Authorization Code��ȡAccess Token ���ﻹδ����
	 * 
	 * @param client_id  ���appid
	 * @param client_secret  ���appkey
	 * @param code	�ص��ɹ���URL�д���Authorization Code
	 * @param redirect_uri	��Ļص���ַ
	 * @return
	 */
	public static String getAccessToken(String client_id,String client_secret,String code,String redirect_uri){
		String string = getAccessTokenString(client_id,client_secret,code,redirect_uri);
		String accessToken = getUrlString(string);
		return accessToken;
	}
	
	/**
	 * ��ȡUrl ��Ϣ
	 * 
	 * @param path ��ҳ·��
	 * @return ����List
	 * @throws Exception
	 */
	public static String getUrlString(String path) {
		String tokenStr = "" ;
		try {
			URL url = new URL(path);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();// ����HttpURLConnection����,���ǿ��Դ������л�ȡ��ҳ����.
			
			conn.setConnectTimeout(5 * 1000); // ��λ�Ǻ��룬���ó�ʱʱ��Ϊ5��
			conn.setRequestMethod("GET");
			if (conn.getResponseCode() == 200) {
				InputStream is = conn.getInputStream(); // ��ȡ������
				byte[] data = readStream(is); // ��������ת�����ַ�����
				String json = new String(data); // ���ַ�����ת�����ַ���
				tokenStr = json;
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (ConnectTimeoutException cte) {
			System.out.println("����������ʱ~");
			cte.printStackTrace();
		} catch (SocketTimeoutException ste) {
			System.out.println("��������Ӧ��ʱ~�û��ύ�ɹ�����ֹ�û��ٴ��ύ ");
			ste.printStackTrace();
		}catch (IOException e) {
			e.printStackTrace();
		}catch (Exception e){
			e.printStackTrace();
		}
		return tokenStr;
	}
	
	/**
	 * ��������ת�����ַ�����
	 * 
	 * @param inputStream
	 *            ������
	 * @return �ַ�����
	 * @throws Exception
	 */
	public static byte[] readStream(InputStream inputStream) throws Exception {
		ByteArrayOutputStream bout = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int len = 0;
		while ((len = inputStream.read(buffer)) != -1) {
			bout.write(buffer, 0, len);
		}
		bout.close();
		inputStream.close();
		return bout.toByteArray();
	}
	
	/**
	 * ����access token
	 * @param path ����������������
	 * @return
	 */
	public static Map<String, String> getAccessTokenValue(String path){
		Map<String, String> map = new HashMap<String, String>();
		String[] strings = path.split("&");
		for (int i = 0; i < strings.length; i++) {
			String[] strs = strings[i].split("=");
			for (int j = 0; j < strs.length; j++) {
				map.put(strs[0], strs[1]);
			}
		}
		return map;
	}
	
	/**
	 * ƴ�ӵ�ַ
	 */
	public static String getOpenIDString(String access_token){
		StringBuffer str = new StringBuffer();
		str.append("https://graph.qq.com/oauth2.0/me");
		str.append("?access_token="+access_token);
		return str.toString();
	}
	
	/**
	 * ��ȡ�û���Ϣ��δ������ֵ
	 * @param access_token �û���token
	 * @return
	 */
	public static String getOpenID(String access_token){
		String path = getOpenIDString(access_token);
		String openid = getUrlString(path);
		return openid;
	}
	
	
	//callback( {"client_id":"101184878","openid":"F8334FBDF5C6CA3350A0344B86947219"} )
	public static Map<String,String> getOpenidValue(String path){
		Map<String, String> map = new HashMap<String, String>();
		  String s1 = "callback(";
		  String s3 = ")";
		  try {
			String getJson = path.substring(s1.length(),path.length()-s3.length()).trim();
			JSONObject json = new JSONObject(getJson);
			map.put("client_id", json.get("client_id")+"");
			map.put("openid", json.get("openid")+"");
		} catch (JSONException e) {
			e.printStackTrace();
		}
		return map;
	}
	
	/**
	 * ƴ�ӵ�ַ
	 * @param oauth_consumer_key  �����ߵ�appid
	 * @param access_token  ��ȡ��tokenֵ
	 * @param openid	��ȡ��openidֵ
	 * @return
	 */
	public static String getUserInfoString(String oauth_consumer_key,String access_token,String openid){
//		https://graph.qq.com/user/get_user_info
		StringBuffer str = new StringBuffer();
		str.append("https://graph.qq.com/user/get_user_info");
		str.append("?oauth_consumer_key="+oauth_consumer_key);
		str.append("&access_token="+access_token);
		str.append("&openid="+openid);
		str.append("&format=format");
		return str.toString();
	}
	
	/**
	 * ��ȡ�û�����Ϣ
	 * @param oauth_consumer_key  �����ߵ�appid
	 * @param access_token  ��ȡ��tokenֵ
	 * @param openid	��ȡ��openidֵ
	 * @return
	 */
	public static String getUserInfo(String oauth_consumer_key,String access_token,String openid){
		String string = getUserInfoString(oauth_consumer_key, access_token, openid);
		String userInfo = getUrlString(string);
		return userInfo;
	}
}
