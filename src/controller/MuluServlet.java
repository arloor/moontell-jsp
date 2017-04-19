package controller;

import helper.*;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by moontell on 2017/4/18.
 */
public class MuluServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("UTF-8");//必须设置request的编码
        response.setContentType("text/html;charset=UTF-8");
        //取消ajax缓存——所有处理ajax的都要这个
        response.setHeader("Cache-Control", "no-store");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);


        String fenlei=request.getParameter("type");
        //System.out.println(fenlei);
        Fenlei fenleiEnum;
        try{//捕捉空指针异常，这说明是直接访问/mulu的，把他重定向到index.jsp(见catch)
            if(fenlei.equals("time_mail")){
                fenleiEnum=Fenlei.TIMEMAIL;
            }else if(fenlei.equals("about")){
                fenleiEnum=Fenlei.ABOUT;
            }else if(fenlei.equals("memory")){
                fenleiEnum=Fenlei.MEMORY;
            }else {
                fenleiEnum=Fenlei.NOTSET;
            }
        }catch (NullPointerException e){
            fenleiEnum=Fenlei.NOTSET;
            response.sendRedirect(WebInfo.indexAddress);
        }

        String responseText=new String();
        //根据分类不同把处理转发给不同的Servlet
        switch (fenleiEnum){
            case ABOUT:{response.sendRedirect("About");break;}
            case MEMORY:{response.sendRedirect("Memory");break;}
            case TIMEMAIL:{response.sendRedirect("TimeMail");break;}
            case NOTSET:{response.sendRedirect("Cover");break;}
            default:{responseText="<h2>没有选分类哦</h2>";}
        }

        PrintWriter writer=response.getWriter();
        writer.println(responseText);
    }
}
