package com.laptrinhjavaweb.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtils {

    public static final String DB_URL = "jdbc:sqlserver://localhost:1433;databaseName=duantotnghiep;" +
            "encrypt=true;trustServerCertificate=true;";

    public static final String USER = "sa";

    public static final String PASS = "123456";

    public static final Connection getConection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return con;
    }
}
