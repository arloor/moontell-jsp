package model;

import dao.DataConnection;

import java.sql.*;

/**
 * Created by moontell on 2017/4/18.
 */
public class Cover {
    Connection conn;
    public Cover(){
        conn= DataConnection.getConn();
    }

    public String getCover(){
        String coverContent=new String();
        String sql="SELECT * FROM mt_cover WHERE cID IN (SELECT MAX(cID) FROM `mt_cover`)";
        System.out.println("获取封面内容： "+sql);

        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int cID=resultSet.getInt(1);
                String ctime=resultSet.getTimestamp(2).toString().substring(0,19);
                String ctitle="<h1 style=\"text-align:center\">"+resultSet.getString(3)+"</h1>";
                String ccontent=resultSet.getString(4);
                coverContent+=ctitle;
                coverContent+="<h4>"+ctime+"</h4>";
                coverContent+=ccontent;
                coverContent+="<br><br>";
            }
            resultSet.close();
            statement.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return coverContent;
    }

    public String getCoverPictureHtml(){
        String coverPictureHtml=new String();
        String sql="SELECT cpicture,withPicture FROM mt_cover WHERE cID IN (SELECT MAX(cID) FROM `mt_cover`)";
        System.out.println("获取封面顶部图片： "+sql);
        try {
            Statement statement=conn.createStatement();
            ResultSet resultSet=statement.executeQuery(sql);
            while (resultSet.next()){
                int withPicture=resultSet.getInt("withPicture");
                if(withPicture!=1){
                    return "";
                }else{
                    String picture=resultSet.getString("cpicture");
                    coverPictureHtml+="<img src=\""+picture+"\"  class=\"img-responsive\" alt=\"<p>顶部图片显示失败</p>\">\n";
                }
                }
            resultSet.close();
            statement.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return coverPictureHtml;
    }
}
