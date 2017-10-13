package InventorySystem.Database;



import InventorySystem.Models.Assets;

import java.sql.CallableStatement;
import java.sql.SQLException;

public class Database {
    MySQLConnections con = new MySQLConnections();
    //functions

    public void CreateEntry(Assets assets) throws SQLException {
        con.Connect();
        System.out.println(assets.getSerialNum());
        CallableStatement cs = null;
        cs = this.con.conn.prepareCall("{call INSERT_ITEM(?,?,?,?,?,?,?,?,?,?,?,?)}");

        //population of parameters
        cs.setString(1,assets.getSerialNum());
        cs.setString(2, assets.getProdBrand());
        cs.setString(3, assets.getProdModel());
        cs.setString(4, assets.getProdDesc());
        cs.setDouble(5, assets.getUnitPrice());
        cs.setInt(6, assets.getInvNum());
        cs.setInt(7, assets.getProdQuant());
        cs.setString(8, assets.getInvDate());
        cs.setInt(9, assets.getPerNum());
        cs.setString(10, assets.getPerType());
        cs.setString(11, assets.getPerDate());
        cs.setString(12, assets.getSupName());
        cs.executeQuery();

        con.conn.close();

    }

    public void SearchDb() throws SQLException {
        con.Connect();
    }

    public void UpdateDb() throws SQLException {
        con.Connect();
    }

    public void DeleteEntry() throws SQLException {
        con.Connect();
    }
}