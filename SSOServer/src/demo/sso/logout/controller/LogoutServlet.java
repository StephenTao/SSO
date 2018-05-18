package demo.sso.logout.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo.sso.TokenUserData;
import demo.sso.common.CookieUtil;

/**
 * 用户注销
 */
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private static final String SSO_LOGIN_URL = "/server/login";

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String token = CookieUtil.getCookie(request, "token");
        if (token != null) {
            TokenUserData.removeToken(token);
        }

        CookieUtil.removeCookie(response, "token", "/", null);
        
//      response.getWriter().write("logout success");
        // 本次请求的完整路径
        String origUrl = request.getRequestURL().toString();
        String queryStr = request.getQueryString();
        if (queryStr != null) {
            origUrl += "?" + queryStr;
        }
        response.sendRedirect(SSO_LOGIN_URL);
    }

}
