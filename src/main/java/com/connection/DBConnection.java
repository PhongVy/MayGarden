/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC
 */
public class DBConnection {
 
public static Connection conn = null;

    public static Connection getConnection() {
        if (conn == null) {

            try {

//                  sql server
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                String url = "jdbc:sqlserver:LAPTOP-H8EFJKAB\\SQLEXPRESS:1433;databaseName=Project;user=sa;password=123;encrypt=true;trustServerCertificate=true;";
                try {
                    conn = DriverManager.getConnection(url);
                } catch (SQLException ex) {
                    Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
                }
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return conn;
    }

    public static void closeConnection() {
        try {
            if (!conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
//    public static void main(String[] args) {
//        Connection connection = null;
//        try {
//            connection = DBConnection.getConnection();
//            System.out.println("Connected to the database!");
//        } catch (Exception e) {
//            System.err.println("Failed to connect to the database.");
//            e.printStackTrace();
//        } finally {
//            if (connection != null) {
//                try {
//                    connection.close();
//                    System.out.println("Connection closed.");
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                }
//            }
//        }
//    }
}
