package model;

import dao.DataConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by moontell on 2017/4/18.
 */
public class Memory {

    Connection conn;
    public Memory(){
        conn= DataConnection.getConn();
    }

    //---------------开始  插入Memory--------------------
    public void insertMemory(String stitle,String stext,String icon,String icontheme,String guest_visible){
        String sql="INSERT INTO `moontell`.`mt_souvenir` (`sID`, `stitle`, `stext`, `icon`, `icontheme`, `sdate`, `guest_visible`) VALUES (NULL, '"+stitle+"', '"+stext+"', '"+icon+"', '"+icontheme+"', CURRENT_TIMESTAMP, '"+guest_visible+"');";
        System.out.println(sql);
        try {
            Statement statement=conn.createStatement();
            statement.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //----------------结束 出入Memory--------------------

    public void updateMemory(String sID,String stitle, String stext, String icon, String icontheme, String guest_visible) {
        String sql="UPDATE `mt_souvenir` SET `stitle`=\""+stitle+"\",`stext`=\""+stext+"\",`icon`=\""+icon+"\",`icontheme`=\""+icontheme+"\",`guest_visible`=\""+guest_visible+"\" WHERE `sID`= "+sID;
        System.out.println(sql);
        try {
            Statement statement=conn.createStatement();
            statement.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteByID(String id) {
        String sql="DELETE FROM `mt_souvenir` WHERE sID = "+id;
        System.out.println(sql);
        try {
            Statement statement=conn.createStatement();
            statement.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    //------------开始     获取String 格式的纪念日内容----------------------------------------
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
    //--------------结束  获取String 格式的纪念日内容---------------------------------------------

    //---------------开始   获取纪念日ID的最大最小值------------------------------------
    public int getMaxMemoryID() {
        String sql="SELECT MAX(sID) FROM `mt_souvenir";
        System.out.println("获取所有纪念日的最大值： "+sql);
        int maxMemoryID=getMemoryID(sql);
        return maxMemoryID;
    }

    public int getMinMemoryID() {
        String sql="SELECT MIN(sID) FROM `mt_souvenir";
        System.out.println("获取所有纪念日的最小值： "+sql);
        int minxMemoryID=getMemoryID(sql);
        return minxMemoryID;
    }

    public int getMemoryID(String sql){
        int id=0;
        try {
            Statement statement=conn.createStatement();
            ResultSet resultSet=statement.executeQuery(sql);
            while(resultSet.next()){
                id=resultSet.getInt(1);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }
    //---------------结束   获取纪念日ID的最大最小值----------------------------------------


    //---------------开始   根据不同的需求获得List<MemoryVO> 或者MemoryVO----------------------------------------
    //参数是sql 代码上的功能其实就是一个创建
    public List<MemoryVO> getMemoryVOs(String sql){
        List<MemoryVO> memoryVOS=new ArrayList<>();
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int sID=resultSet.getInt(1);
                String stitle=resultSet.getString(2);
                String stext=resultSet.getString(3);
                String icon=resultSet.getString(4);
                String icontheme=resultSet.getString(5);
                String sdate=resultSet.getString(6).substring(0,10);
                int guest_visible= resultSet.getInt(7);
                MemoryVO memoryVO=new MemoryVO(sID,stitle,stext,icon,icontheme,sdate,guest_visible);
                memoryVOS.add(memoryVO);
            }
            resultSet.close();
            statement.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return memoryVOS;
    }

    public List<MemoryVO> getLatestMemoryVOs(int memoryShowedNum) {
        String sql="select * from `mt_souvenir` ORDER by sID DESC LIMIT 0 , "+memoryShowedNum;
        System.out.println("获取最后"+memoryShowedNum+"个纪念日： "+sql);
        List<MemoryVO> memoryVOS=getMemoryVOs(sql);
        return memoryVOS;
    }

    public List<MemoryVO> getLatestMemoryVOsOlder(int id, int memoryShowedNum) {
        String sql="select * FROM `mt_souvenir` WHERE sID < "+id+" ORDER BY sID DESC LIMIT 0 , "+memoryShowedNum;
        System.out.println("获取id大于"+id+"的最后"+memoryShowedNum+"个日常记录： "+sql);
        List<MemoryVO> memoryVOS=getMemoryVOs(sql);
        return memoryVOS;
    }

    public List<MemoryVO> getLatestMemoryVOsNewer(int id, int memoryShowedNum) {
        //String sql="select * FROM `mt_souvenir` WHERE sID > "+minid+" ORDER BY sID DESC LIMIT 0 , "+memoryShowedNum;
        String sql="SELECT * FROM (select * FROM `mt_souvenir` WHERE sID > "+id+" ORDER BY sID ASC LIMIT 0 , "+memoryShowedNum+" ) a ORDER BY sID DESC";
        System.out.println("获取id大于"+id+"的最后"+memoryShowedNum+"个日常记录： "+sql);
        List<MemoryVO> memoryVOS=getMemoryVOs(sql);
        return memoryVOS;
    }

    public List<MemoryVO> getLatestMemoryVOsNewerAndEqual(int id, int memoryShowedNum) {
        String sql="SELECT * FROM (select * FROM `mt_souvenir` WHERE sID >= "+id+" ORDER BY sID ASC LIMIT 0 , "+memoryShowedNum+" ) a ORDER BY sID DESC";
        System.out.println("获取id大于等于"+id+"的最后"+memoryShowedNum+"个日常记录： "+sql);
        List<MemoryVO> memoryVOS=getMemoryVOs(sql);
        return memoryVOS;
    }

    public MemoryVO getCertainMemoryVO(String id) {
        String sql="SELECT * from `mt_souvenir` where sID = "+id;
        System.out.println("获取ID为"+id+"的纪念日： "+sql);
        List<MemoryVO> memoryVOS=getMemoryVOs(sql);
        return memoryVOS.get(0);
    }




    //---------------结束   根据不同的需求获得List<MemoryVO>-------------------------------------
}
