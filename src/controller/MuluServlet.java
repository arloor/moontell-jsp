package controller;

import helper.WebInfo;
import model.*;

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
        response.setHeader("Cache-Control", "no-store");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);


        String fenlei=request.getParameter("type");
        //System.out.println(fenlei);
        Fenlei fenleiEnum;
        try{//捕捉空指针异常，这说明是直接访问/mulu的，把他重定向到index.jsp(见catch)
            if(fenlei.equals("daily_post")){
                fenleiEnum=Fenlei.DAILYPOST;
            }else if(fenlei.equals("time_mail")){
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
        switch (fenleiEnum){
            case ABOUT:{responseText=new About().toAjaxResponseText();break;}
            case MEMORY:{responseText=new Memory().toAjaxResponseText();break;}
            case TIMEMAIL:{responseText=new TimeMail().toAjaxResponseText();break;}
            case DAILYPOST:{responseText=new DailyPost().toAjaxResponseText();break;}
            case NOTSET:{responseText=new Cover().toAjaxResponseText();break;}
            default:{responseText="<h2>没有选分类哦</h2>";}
        }

        PrintWriter writer=response.getWriter();
        writer.println(responseText);
    }
}
