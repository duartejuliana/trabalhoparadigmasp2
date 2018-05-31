package com.trabalhoparadigmasp2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static Connection connection;

    public static Connection get() throws SQLException, ClassNotFoundException {
        final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost/trabalhoparadigmasp2?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";

        //  Database credentials
        final String USER = "paradigmasp2";
        final String PASS = "paradigmasp2";
//
//        final String USER = "root";
//        final String PASS = "root";

        //STEP 2: Register JDBC driver
        Class.forName(JDBC_DRIVER);

        //STEP 3: Open a connection
        System.out.println("Connecting to a selected database...");
        connection = DriverManager.getConnection(DB_URL, USER, PASS);
        System.out.println("Connected database successfully...");

        return connection;
    }

    public static void close() {
        try {
            if (connection != null)
                connection.close();
        } catch (SQLException ignored) {

        }
    }
}
