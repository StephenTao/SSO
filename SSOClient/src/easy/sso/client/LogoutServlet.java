package easy.sso.client;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * User logout
 */
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        //TODO get logout app URL
//        String origUrl = request.getRequestURL().toString();
//        String queryStr = request.getQueryString();
//        if (queryStr != null) {
//            origUrl += "?" + queryStr;
//        }
        response.sendRedirect(Constants.SSO_LOGOUT_URL);

    }

}
