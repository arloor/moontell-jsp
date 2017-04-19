package model;

import dao.DataConnection;

import java.sql.*;

/**
 * Created by moontell on 2017/4/18.
 */
public class DailyPost {
    Connection conn;
    public DailyPost(){
        conn= DataConnection.getConn();
    }

    public String getGuestVisiblePosts(){
        String guestVisiblePostsContents=new String();
        String sql="select visibleposts.* from (SELECT * FROM `mt_blogs` WHERE guest_visible = 1 and term = 0) visibleposts,(SELECT ID , MAX(version) as maxversion from mt_blogs GROUP by ID) AS a where visibleposts.ID =a.ID and visibleposts.version=a.maxversion ORDER by ID DESC";
        System.out.println(sql);
        guestVisiblePostsContents=getPosts(sql);
        return guestVisiblePostsContents;
    }

    public String getAllPosts() {
        String allPosts=new String();
        String sql="select visibleposts.* from (SELECT * FROM `mt_blogs` WHERE term = 0) visibleposts,(SELECT ID , MAX(version) as maxversion from mt_blogs GROUP by ID) AS a where visibleposts.ID =a.ID and visibleposts.version=a.maxversion ORDER by ID DESC";

        System.out.println(sql);
        allPosts=getPosts(sql);
        return allPosts;
    }

    public String getPosts(String sql){
        String postsContent=new String();
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int postId=resultSet.getInt(1);
                int version=resultSet.getInt(2);
                Timestamp date=resultSet.getTimestamp(6);
                String dateString=date.toString().substring(0,19);
                String link="post.jsp?id="+postId+"&version="+version;
                postsContent+="<a href="+link+"><h1>"+resultSet.getString("post_title")+"</h1></a>";
                postsContent+="<h4>"+dateString+"</h4>";
                postsContent+=resultSet.getString("post_content");
                postsContent+="<br><br><br>";

            }
            resultSet.close();
            statement.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return postsContent;
    }


    public String getCertainPost(String id, String version) {
        String postsContent=new String();
        String sql="SELECT * FROM `mt_blogs` where id= "+id+" and version = "+version;
        System.out.println(sql);
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            if (resultSet.next()) {
                Timestamp date=resultSet.getTimestamp(6);
                String dateString=date.toString().substring(0,19);
                String link="post.jsp?id="+id+"&version="+version;
                postsContent+="<a href="+link+"><h1>"+resultSet.getString("post_title")+"</h1></a>";
                postsContent+="<h4>"+dateString+"</h4>";
                postsContent+=resultSet.getString("post_content");
                postsContent+="<br><br><br>";

            }else{
                postsContent="<h1>没有这篇文章哦<h1>";
            }
            resultSet.close();
            statement.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return postsContent;
    }
}
