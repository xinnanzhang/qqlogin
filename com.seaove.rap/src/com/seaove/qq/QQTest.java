package com.seaove.qq;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class QQTest {

	public static void main(String[] args) {
		StringBuffer str = QQUtil.getAuthorizationCode("110", "192.168.9.83");
		System.out.println(str.toString());
		
		List<String> ll = new ArrayList<>();
		ll.add("get_user_info");
		ll.add("list_album");
		String ss = QQUtil.getAuthorizationCodeList("110", "192.168.9.83", ll);
		System.out.println(ss);
		
		String s2 =QQUtil.getAccessTokenString("110", "xxhh", "19F280B99DEE4E44B4A244704DA7B970", "192.168.9.83");
		System.out.println(s2);
		
		Map<String,String> s3 = QQUtil.getAccessTokenValue("access_token=777F3CB57377878E1C914ABD34173FF2&expires_in=7776000&refresh_token=27E7161D39DC9068DF854627DF65F8B8");
		Iterator<String> iter = s3.keySet().iterator();

		while (iter.hasNext()) {
		   String key = iter.next();
		   System.out.println(key+"  =  "+s3.get(key));
		}
		//callback( {"client_id":"101184878","openid":"F8334FBDF5C6CA3350A0344B86947219"} )
		String xx = "callback( {\"client_id\":\"101184878\",\"openid\":\"F8334FBDF5C6CA3350A0344B86947219\"} )";
		QQUtil.getOpenidValue(xx);
	}

}
