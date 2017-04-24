package helper;

import model.Memory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by moontell on 2017/4/24.
 */
public class AjaxMemoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");//必须设置request的编码
        response.setContentType("text/html;charset=UTF-8");
        //取消ajax缓存——所有处理ajax的都要这个
        response.setHeader("Cache-Control", "no-store");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);

        String method=request.getParameter("method");
        String sID=request.getParameter("id");
        String stitle=request.getParameter("postTitle");
        String stext=request.getParameter("postContent");
        String icon=request.getParameter("icon");
        String icontheme=request.getParameter("iconTheme");
        String guest_visible=request.getParameter("visible");
        if(method.equals("add")){
            new Memory().insertMemory(stitle,stext,icon,icontheme,guest_visible);
        }else if(method.equals("update")){
            new Memory().updateMemory(sID,stitle,stext,icon,icontheme,guest_visible);
        }


        PrintWriter writer=response.getWriter();
        writer.println("asdas");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");//必须设置request的编码
        response.setContentType("text/html;charset=UTF-8");
        //取消ajax缓存——所有处理ajax的都要这个
        response.setHeader("Cache-Control", "no-store");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);

        String method=request.getParameter("method");
        String id=request.getParameter("id");
        if(method.equals("delete")){
            new Memory().deleteByID(id);
        }
    }
}
