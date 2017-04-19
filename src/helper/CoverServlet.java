package helper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by moontell on 2017/4/19.
 */
@WebServlet(name = "CoverServlet",urlPatterns = "/Cover")
public class CoverServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Cache-Control", "no-store");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);

        PrintWriter writer=response.getWriter();
        writer.println("<h1>moontell封面内容</h1><p>来自Cover的消息</p><p>这个封面内容应该是可以定制的，也就是说，以后这段文字应该从数据库读取</p>");
    }


}
