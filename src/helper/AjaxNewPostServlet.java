package helper;

import model.DailyPost;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by moontell on 2017/4/24.
 */
public class AjaxNewPostServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");//必须设置request的编码
        response.setContentType("text/html;charset=UTF-8");
        //取消ajax缓存——所有处理ajax的都要这个
        response.setHeader("Cache-Control", "no-store");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);

        PrintWriter writer=response.getWriter();
        String id=request.getParameter("id");
        String version=request.getParameter("version");
        String post_time=request.getParameter("post_time");
        String visible=request.getParameter("visible");
        String commontable=request.getParameter("commontable");
        String isdeleted=request.getParameter("isdeleted");
        String postTitle=request.getParameter("postTitle");
        String postContent=request.getParameter("postContent");
        new DailyPost().insertPost(id,version,post_time,visible,commontable,isdeleted,postTitle,postContent);
        writer.println("成功");



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
