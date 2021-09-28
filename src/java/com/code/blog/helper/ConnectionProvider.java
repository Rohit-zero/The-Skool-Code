/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//package com.code.blog.helper;
//import java.sql.*;
//public class ConnectionProvider 
//{
//    private static Connection con;
//    public static Connection getConnection()
//    {
//        try
//        {
//            Class.forName("com.mysql.jdbc.Driver");
//            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/codelog","rohit","rohit");
//            if(con==null)
//            {
//                Class.forName("com.mysql.jdbc.Driver");
//            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/codelog","rohit","rohit");
//            }
//        }catch(Exception e)
//        {
//            e.printStackTrace();
//        }
//        return con;
//    }
//}
package com.code.blog.helper;

import java.sql.*;

public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {
        try {

            if (con == null) {
                //driver class load
                Class.forName("com.mysql.jdbc.Driver");

                //create a connection..
                con = DriverManager.
                        getConnection("jdbc:mysql://localhost:3306/codeblog", "root", "rohit");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

}