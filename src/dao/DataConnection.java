package dao;

import java.sql.*;

/**
 * Created by moontell on 2017/4/19.
 */
public class DataConnection {
    //private String url = "jdbc:mysql://localhost:3306/moontell?"
    //        + "user=moontell&password=moontell&useUnicode=true&characterEncoding=UTF8";
    //别激动我不用这个密码
    static String url = "jdbc:mysql://122.152.197.205:3306/moontell?user=moontell&password=!@MOONtell426543&useUnicode=true&characterEncoding=UTF8";
    private Connection conn;
    private static DataConnection dataCon;

    private DataConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("mysql驱动缺失");
        }
        try {
            conn = DriverManager.getConnection(url);
            System.out.println("数据库连接成功");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /*
    public void getUsers(){
        String sql = "SELECT * FROM mt_users";
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                System.out.println(resultSet.getString(3));
            }
            resultSet.close();
            statement.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }*/

    //单例获取Conn
    public static Connection getConn(){
        if(dataCon==null){
            dataCon=new DataConnection();
        }
        return  dataCon.conn;
    }

}
