/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.util;

/**
 *
 * @author Lenovo
 */
import java.io.*;
import java.sql.*;
public class DBConnection {
   private static Connection myConnection = null;
   private static String myURL = "jdbc:mysql://localhost:3306/csm3023_lab7";
   
   DBConnection(){
       
   }
   public static Connection getConnection() throws ClassNotFoundException{
       if(myConnection != null){
           return myConnection;
       }else
           try{
               //Establish and open MySQL database connection...
               Class.forName("com.mysql.cj.jdbc.Driver");
               myConnection = DriverManager.getConnection(myURL, "root", "admin");
           }catch(SQLException e){
               e.printStackTrace();
           }
       return myConnection;
   }
   public void closeConnection() throws ClassNotFoundException{
       try{
           myConnection.close();
       }catch(SQLException e){
           e.printStackTrace();
       }
   }
}
