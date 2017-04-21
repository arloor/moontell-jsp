package model;

import dao.DataConnection;

import java.sql.*;

/**
 * Created by moontell on 2017/4/18.
 */
public class Memory {
    Connection conn;
    public Memory(){
        conn= DataConnection.getConn();
    }

    public String getAllJinianris() {
        String allJinianris=new String();
        String sql="select * from `mt_souvenir` ORDER by sID DESC";
        System.out.println("获取所有纪念日： "+sql);
        allJinianris=getJinianris(sql);
        return allJinianris;
    }

    public String getGuestVisibleJinianris() {
        String guestVisibleJinianris=new String();
        String sql="select * from `mt_souvenir` where guest_visible = 1 ORDER by sID DESC";
        System.out.println("获取访客可见的纪念日： "+sql);
        guestVisibleJinianris=getJinianris(sql);
        return guestVisibleJinianris;

    }

    public String getJinianris(String sql){
        String jinianriContent=new String();
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int Id=resultSet.getInt(1);
                String  stitle=resultSet.getString(2);
                String  stext=resultSet.getString(3);
                String  iconAddress=resultSet.getString(4);
                String iconTheme=resultSet.getString(5);
                Timestamp timestamp=resultSet.getTimestamp(6);
                String dateString=timestamp.toString().substring(0,10);

                jinianriContent+="<div class=\"cd-timeline-block\">\n" +
                        "                        <div class=\"cd-timeline-img cd-"+iconTheme+"\">\n" +
                        "                            <img src=\"";
                jinianriContent+=iconAddress;
                jinianriContent+="\" alt=\"Location\">\n" +
                        "                        </div>\n" +
                        "\n" +
                        "                        <div class=\"cd-timeline-content\">\n" +
                        "                            <h2>";
                jinianriContent+=stitle;
                jinianriContent+="</h2>\n" +
                        "                            ";
                jinianriContent+=stext;
                jinianriContent+="\n" +
                        "                            <!--<a href=\"http://www.helloweba.com/view-blog-285.html\" class=\"cd-read-more\" target=\"_blank\">阅读全文</a>-->\n" +
                        "                            <span class=\"cd-date\">";
                jinianriContent+=dateString;
                jinianriContent+="</span>\n" +
                        "                        </div>\n" +
                        "                    </div>";
            }
            resultSet.close();
            statement.close();
        }catch (SQLException e){
            e.printStackTrace();
           }
        return jinianriContent;
    }
}
