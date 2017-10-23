package InventorySystem.Database;
import InventorySystem.Models.Assets;
import InventorySystem.Models.GetAssets;
import InventorySystem.Models.GetAssetsList;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Database {

    //functions

    public void CreateEntry(Assets assets) throws SQLException {
        MySQLConnection con = new MySQLConnection();
        con.Connect();
        CallableStatement cs = null;
        cs = con.conn.prepareCall("{call INSERT_ITEM(?,?,?,?,?,?,?,?,?,?,?,?)}");

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

    public GetAssetsList SearchAll() throws SQLException {
        MySQLConnection con = new MySQLConnection();
        con.Connect();
        CallableStatement cs = null;
        cs = con.conn.prepareCall("{CALL `Project_OJT`.`SORT_PRODUCT_NAME`()}");
        ResultSet result = cs.executeQuery();
        GetAssetsList asl = new GetAssetsList();
        ArrayList<GetAssets> list = new ArrayList<>();
        while (result.next()) {
            GetAssets al = new GetAssets();
            al.setSerialNum(result.getString(1));
            al.setItemInfo(result.getString(2));
            al.setSupName(result.getString(3));
            al.setPerNum(Integer.parseInt(result.getString(4)));
            al.setPerDate(result.getString(5));
            al.setInvNum(Integer.parseInt(result.getString(6)));
            al.setInvDate(result.getString(7));
            al.setProdQuant(Integer.parseInt(result.getString(8)));
            al.setUnitPrice(Double.parseDouble(result.getString(9)));
            al.setTotalPrice(Integer.parseInt(result.getString(10)));
            list.add(al);
        }
        asl.setList(list);
        con.conn.close();
        return asl;

    }

    public void UpdateDb() throws SQLException {
        MySQLConnection con = new MySQLConnection();
        con.Connect();
    }

    public void DeleteEntry() throws SQLException {
        MySQLConnection con = new MySQLConnection();
        con.Connect();
    }
}