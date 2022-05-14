/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Conexion;

import java.sql.*;

/**
 *
 * @author reysegovia
 */
public class Conexion {
    Connection con = null;
    Statement stmt = null;
    public Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/supplier","rey","some_pass");
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
    }

    public Connection getConnection() {
        return con;
    }

}
