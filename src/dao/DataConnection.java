package dao;

import java.sql.*;

/**
 * Created by moontell on 2017/4/19.
 */
public class DataConnection {
    //private String url = "jdbc:mysql://localhost:3306/moontell?"
    //        + "user=moontell&password=moontell&useUnicode=true&characterEncoding=UTF8";

    static String url = "jdbc:mysql://115.159.161.236:3306/moontell?user=lgh&password=lgh8023lfy&useUnicode=true&characterEncoding=UTF8";
    private Connection conn;
    private static DataConnection dataCon;

    public DataConnection() {
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
