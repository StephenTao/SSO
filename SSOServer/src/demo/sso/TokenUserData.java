package demo.sso;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import demo.sso.model.User;

/**
 * token user数据维护静态工具类
 * 
 * @author Administrator
 *
 */
public class TokenUserData {

	private TokenUserData() {
	}

	// 存储数据的对象
	private static Map<String, User> dataMap = new HashMap<String, User>();

	/**
	 * 新增令牌存储
	 * 
	 * @param token
	 * @param user
	 */
	public static void addToken(String token, User user) {
		dataMap.put(token, user);
		showCurrentToken();
	}

	/**
	 * 验证令牌，如果令牌有效返回User对象，否则返回空
	 * 
	 * @param token
	 * @return
	 */
	public static User validateToken(String token) {
		showCurrentToken();
		return dataMap.get(token);
	}

	/**
	 * 移除token项
	 * 
	 * @param token
	 */
	public static void removeToken(String token) {
		dataMap.remove(token);
		showCurrentToken();
	}
	
	private static void showCurrentToken() {
		System.out.println("Current tokens:");
		
		Iterator<String> keys = dataMap.keySet().iterator();
		while (keys.hasNext()) {
			String key = keys.next();
			User user = dataMap.get(key);
			System.out.println(key + "=" + user.toString());
		}
		
		//java 8
//		dataMap.forEach((k, v) -> {
//		    System.out.println(key + "=" + user.toString());
//		});
		
	}
}
