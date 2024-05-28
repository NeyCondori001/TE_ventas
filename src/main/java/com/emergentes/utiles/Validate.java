package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Validate extends ConexionDB {

    public boolean checkUser(String email, String password) {
        boolean resultado = false;
        String sql = "SELECT * FROM usuarios WHERE email=? AND password=sha1(?)";
        Connection con = null;
        PreparedStatement pr = null;
        ResultSet rs = null;

        try {
            con = this.conectar();
            pr = con.prepareStatement(sql);
            pr.setString(1, email);
            pr.setString(2, password);
            rs = pr.executeQuery();
            resultado = rs.next();
        } catch (SQLException ex) {
            System.out.println("Error al autenticar: " + ex.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (pr != null) pr.close();
                if (con != null) this.desconectar();
            } catch (SQLException ex) {
                System.out.println("Error al cerrar recursos: " + ex.getMessage());
            }
        }

        return resultado;
    }
}
