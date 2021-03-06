package demo.sso.auth.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo.sso.TokenUserData;
import demo.sso.common.CookieUtil;
import demo.sso.model.User;

/**
 * 登录成功页
 */
@WebServlet("/login_success")
public class LoginSuccessServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String token = CookieUtil.getCookie(request, "token");
        User user = TokenUserData.validateToken(token);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/view/my-apps.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
