/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

import Conexion.Conexion;
import Interfaces.CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author reysegovia
 */
public class ImplementacionDAO implements CRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Libros l = new Libros();

    @Override
    public List listar() {
        ArrayList<Libros> list = new ArrayList<>();
        String sql = "SELECT * FROM supplier.supplier_detail";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Libros lib = new Libros();
                lib.setId(rs.getInt("id"));
                lib.setSupplier(rs.getString("supplier"));
                lib.setPart_number(rs.getString("part_number"));
                lib.setManager(rs.getString("manager"));
                list.add(lib);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Libros list(int id) {
        String sql = "SELECT * FROM supplier.supplier_detail WHERE id=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                l.setId(rs.getInt("id"));
                l.setSupplier(rs.getString("supplier"));
                l.setPart_number(rs.getString("part_number"));
                l.setManager(rs.getString("manager"));

            }
        } catch (Exception e) {
        }
        return l;
    }
}
