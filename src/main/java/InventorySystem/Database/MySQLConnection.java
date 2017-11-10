package InventorySystem.Database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnection {
    Connection conn;
    String hostname = "127.0.0.1";
    String username = "root";
    String password = "1234";
    String url = "jdbc:mysql://127.0.0.1:3307/Project_OJT";


    public void Connect() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(
                    url, username, password);
            System.out.println("Connected");


        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex.getMessage());

            System.out.println("Not Connected");

        } finally {


        }

    }


}