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
	 * 获取Authorization Code  默认授权
	 * 
	 * @param client_id
	 * 					你的appid
	 * @param redirect_uri
	 * 					你的回调地址
	 * @return String
	 */
	public static StringBuffer getAuthorizationCode(String client_id,String redirect_uri){
		StringBuffer str = new StringBuffer();
		str.append("https://graph.qq.com/oauth2.0/authorize");
		str.append("?response_type=code");//授权类型，此值固定为"code"
		str.append("&client_id="+client_id);
		str.append("&redirect_uri="+redirect_uri);
		str.append("&state=test");//scope client端的状态值
		return str;
	}

	/**
	 * 
	 * @param client_id	Code 多个授权列表
	 * 					例如：scope=get_user_info,list_album,upload_pic,do_like
	 * @param redirect_uri
	 * 					你的appid
	 * @param scope
	 * 					用户需要授权的信息
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
		str.append("?grant_type=authorization_code");//授权类型，在本步骤中，此值为“authorization_code”
		str.append("&client_id="+client_id);
		str.append("&client_secret="+client_secret);
		str.append("&code="+code);
		str.append("&redirect_uri="+redirect_uri);
		return str.toString();
	}
	
	/**
	 * 通过Authorization Code获取Access Token 这里还未解析
	 * 
	 * @param client_id  你的appid
	 * @param client_secret  你的appkey
	 * @param code	回调成功后URL中带上Authorization Code
	 * @param redirect_uri	你的回调地址
	 * @return
	 */
	public static String getAccessToken(String client_id,String client_secret,String code,String redirect_uri){
		String string = getAccessTokenString(client_id,client_secret,code,redirect_uri);
		String accessToken = getUrlString(string);
		return accessToken;
	}
	
	/**
	 * 获取Url 信息
	 * 
	 * @param path 网页路径
	 * @return 返回List
	 * @throws Exception
	 */
	public static String getUrlString(String path) {
		String tokenStr = "" ;
		try {
			URL url = new URL(path);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();// 利用HttpURLConnection对象,我们可以从网络中获取网页数据.
			
			conn.setConnectTimeout(5 * 1000); // 单位是毫秒，设置超时时间为5秒
			conn.setRequestMethod("GET");
			if (conn.getResponseCode() == 200) {
				InputStream is = conn.getInputStream(); // 获取输入流
				byte[] data = readStream(is); // 把输入流转换成字符数组
				String json = new String(data); // 把字符数组转换成字符串
				tokenStr = json;
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (ConnectTimeoutException cte) {
			System.out.println("服务器请求超时~");
			cte.printStackTrace();
		} catch (SocketTimeoutException ste) {
			System.out.println("服务器响应超时~用户提交成功，防止用户再次提交 ");
			ste.printStackTrace();
		}catch (IOException e) {
			e.printStackTrace();
		}catch (Exception e){
			e.printStackTrace();
		}
		return tokenStr;
	}
	
	/**
	 * 把输入流转换成字符数组
	 * 
	 * @param inputStream
	 *            输入流
	 * @return 字符数组
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
	 * 解析access token
	 * @param path 解析传过来的数据
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
	 * 拼接地址
	 */
	public static String getOpenIDString(String access_token){
		StringBuffer str = new StringBuffer();
		str.append("https://graph.qq.com/oauth2.0/me");
		str.append("?access_token="+access_token);
		return str.toString();
	}
	
	/**
	 * 获取用户信息还未解析的值
	 * @param access_token 用户的token
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
	 * 拼接地址
	 * @param oauth_consumer_key  开发者的appid
	 * @param access_token  获取的token值
	 * @param openid	获取的openid值
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
	 * 获取用户的信息
	 * @param oauth_consumer_key  开发者的appid
	 * @param access_token  获取的token值
	 * @param openid	获取的openid值
	 * @return
	 */
	public static String getUserInfo(String oauth_consumer_key,String access_token,String openid){
		String string = getUserInfoString(oauth_consumer_key, access_token, openid);
		String userInfo = getUrlString(string);
		return userInfo;
	}
}
