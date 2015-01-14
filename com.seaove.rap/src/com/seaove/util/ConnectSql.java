package com.seaove.util;



import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.*;


public class ConnectSql {
    public static void main(String[] args) {
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "app_seaove";
        String passwrod = "51yonl0wnz";
        String userName = "iy54lwmj1y30ywmzx4lkkkxy2lhmhii4hlyzz13i";
        //w.rdc.sae.sina.com.cn:3307  -
        String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/" + dbName;
        String sql = "select * from sys_user";
 
        try {
            Class.forName(driver);
            Connection conn = (Connection) DriverManager.getConnection(url, userName,
                    passwrod);
            PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//            	rs.get
            	System.out.println("111");
//                System.out.println("id : " + rs.getInt(1) + " name : "
//                        + rs.getString(2) + " password : " + rs.getString(3));
            }
 
            // 关闭记录集
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
 
            // 关闭声明
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
 
            // 关闭链接对象
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
 
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 
}