package controller;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by moontell on 2017/4/18.
 */
public class VerifyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");//必须设置request的编码
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter writer=response.getWriter();
        writer.println("验证登陆界面");
        //todo：验证登陆，使用硬编码登陆，以后要改
        String user=request.getParameter("user");
        String password=request.getParameter("password");
        if(user.equals("yueyue")&&password.equals("yueyue")){
            Cookie cookie=new Cookie("user","yueyue");
            //cookie.setMaxAge(100);
            response.addCookie(cookie);
            response.sendRedirect("manage.jsp?loginStatus=success");
        }else{
            response.sendRedirect("manage.jsp?loginStatus=fail");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
