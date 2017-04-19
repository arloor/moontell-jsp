package helper;

import model.DailyPost;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by moontell on 2017/4/19.
 */
@WebServlet(name = "DailyPostServlet",urlPatterns = "/DailyPost")
public class DailyPostServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Cache-Control", "no-store");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);

        PrintWriter writer=response.getWriter();
        //writer.println("来自DailyPost的消息");

        //todo：进行登陆验证，验证的逻辑还没有写。这里是只要有名为user的cookie就是认为登陆了（单用户）
        boolean hasLogin=false;
        Cookie[] cookies=request.getCookies();
        if(cookies!=null){
            for (Cookie cookie:cookies
                    ) {
                if(cookie.getName().equals("user")){
                    cookie.getValue().equals("yueyue");
                    hasLogin=true;
                }
            }
        }else{
            hasLogin=false;
        }

        String ajaxResponseText;
        if(!hasLogin){
            ajaxResponseText=new DailyPost().getGuestVisiblePosts();
        }else{
            ajaxResponseText=new DailyPost().getAllPosts();
        }
        writer.println(ajaxResponseText);

    }


}
