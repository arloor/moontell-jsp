package model;

import dao.DataConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by moontell on 2017/4/18.
 */
//todo：唉，设计还是不好，以后有时间重构，这按道理就是model类，但是我还是创建了PostVo类
public class DailyPost {
    Connection conn;
    public DailyPost(){
        conn= DataConnection.getConn();
    }

    public String getGuestVisiblePosts(){
        String guestVisiblePostsContents=new String();
        String sql="select visibleposts.* from (SELECT * FROM `mt_blogs` WHERE guest_visible = 1 and term = 0) visibleposts,(SELECT ID , MAX(version) as maxversion from mt_blogs where isdeleted =0 GROUP by ID) AS a where visibleposts.ID =a.ID and visibleposts.version=a.maxversion ORDER by ID DESC";
        System.out.println("获取访客可见的日常记录： "+sql);
        guestVisiblePostsContents=getPosts(sql);
        return guestVisiblePostsContents;
    }

    public String getAllPosts() {
        String allPosts=new String();
        String sql="select visibleposts.* from (SELECT * FROM `mt_blogs` WHERE term = 0) visibleposts,(SELECT ID , MAX(version) as maxversion from mt_blogs where isdeleted =0 GROUP by ID) AS a where visibleposts.ID =a.ID and visibleposts.version=a.maxversion ORDER by ID DESC";

        System.out.println("获取所有日常记录： "+sql);
        allPosts=getPosts(sql);
        return allPosts;
    }

    public List<PostVO> getLatestPostVOs(int a,int b){
        List<PostVO> postVOS=new ArrayList<>();
        String sql="select visibleposts.* from (SELECT * FROM `mt_blogs` WHERE term = 0) visibleposts, (SELECT ID , MAX(version) as maxversion from mt_blogs where isdeleted =0 GROUP by ID) AS a where visibleposts.ID =a.ID and visibleposts.version=a.maxversion ORDER by ID DESC LIMIT "+a+" , "+b;
        System.out.println("获取最后"+a+"-"+b+"个日常记录： "+sql);
        postVOS=getPostData(sql);
        return postVOS;
    }

    private List<PostVO> getPostData(String sql) {
        List<PostVO> postVOS=new ArrayList<>();
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int postId=resultSet.getInt(1);
                int version=resultSet.getInt(2);
                int post_author=resultSet.getInt(3);
                String address=resultSet.getString(5);
                int guest_visible=resultSet.getInt(7);
                String postTitle=resultSet.getString(8);
                String postsContent=resultSet.getString(9);
                int commontable=resultSet.getInt(10);
                int isDeleted=resultSet.getInt(11);
                PostVO postVO=new PostVO(postId,version,post_author,address,guest_visible,postTitle,postsContent,commontable,isDeleted);
                postVOS.add(postVO);
            }
            resultSet.close();
            statement.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return postVOS;
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
                postsContent+="<a class=\"post\" href="+link+"><h1>"+resultSet.getString("post_title")+"</h1></a>";
                postsContent+="<h4>"+dateString+"</h4>";
                postsContent+=resultSet.getString("post_content");
                postsContent+="<br><br>";

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
        System.out.println("获取id为"+id+"版本为"+version+"的日常记录："+sql);
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            if (resultSet.next()) {
                Timestamp date=resultSet.getTimestamp(6);
                String dateString=date.toString().substring(0,19);
                String link="post.jsp?id="+id+"&version="+version;
                postsContent+="<a class=\"post\" href="+link+"><h1>"+resultSet.getString("post_title")+"</h1></a>";
                postsContent+="<h4>"+dateString+"</h4>";
                postsContent+=resultSet.getString("post_content");
                postsContent+="<br><br>";

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

    public List<PostVO> getLatestPostVOsLater(int maxId, int a, int b) {
        List<PostVO> postVOS=new ArrayList<>();
        String sql="select visibleposts.* from (SELECT * FROM `mt_blogs` WHERE term = 0) visibleposts, (SELECT ID , MAX(version) as maxversion from mt_blogs where isdeleted =0 AND ID < "+maxId+" GROUP by ID) AS a where visibleposts.ID =a.ID and visibleposts.version=a.maxversion ORDER by ID DESC LIMIT "+a+" , "+b;
        System.out.println("获取最后"+a+"-"+b+"个日常记录： "+sql);
        postVOS=getPostData(sql);
        return postVOS;
    }

    public List<PostVO> getLatestPostVOsEarlier(int minId, int a, int b) {
        List<PostVO> postVOS=new ArrayList<>();
        String sql="select visibleposts.* from (SELECT * FROM `mt_blogs` WHERE term = 0) visibleposts, (SELECT ID , MAX(version) as maxversion from mt_blogs where isdeleted =0 AND ID > "+minId+" GROUP by ID) AS a where visibleposts.ID =a.ID and visibleposts.version=a.maxversion ORDER by ID DESC LIMIT "+a+" , "+b;
        System.out.println("获取最后"+a+"-"+b+"个日常记录： "+sql);
        postVOS=getPostData(sql);
        return postVOS;
    }
}
