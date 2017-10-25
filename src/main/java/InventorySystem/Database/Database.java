package InventorySystem.Database;
import InventorySystem.Models.Assets;
import InventorySystem.Models.GetAssets;
import InventorySystem.Models.GetAssetsList;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Database {
    MySQLConnection con = new MySQLConnection();
    //functions

    public void CreateEntry(Assets assets) throws SQLException {

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


    public GetAssetsList SearchSorted(String sortType) throws SQLException {

        con.Connect();
        CallableStatement cs = null;
        switch (sortType) {
            case "INVDATE": {
                cs = con.conn.prepareCall("{CALL `Project_OJT`.`SORT_INVOICE_DATE`()}");
            }
            break;
            case "INVNUM": {
                cs = con.conn.prepareCall("{CALL `Project_OJT`.`SORT_INVOICE_NUMBER`()}");
            }
            break;
            case "PERDATE": {
                cs = con.conn.prepareCall("{CALL `Project_OJT`.`SORT_PERMIT_DATE`()}");
            }
            break;
            case "PERNUM": {
                cs = con.conn.prepareCall("{CALL `Project_OJT`.`SORT_PERMIT_NUMBER`()}");
            }
            break;
            case "SUPNAME": {
                cs = con.conn.prepareCall("{CALL `Project_OJT`.`SORT_SUPPLIER_NAME`()}");
            }
            break;
            default: {
                cs = con.conn.prepareCall("{CALL `Project_OJT`.`SORT_PRODUCT_NAME`()}");
            }
        }

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

    public GetAssetsList SearchParams(String search, int type) throws SQLException {

        con.Connect();
        CallableStatement cs = null;
        switch (type) {
            case 1: {
                cs = con.conn.prepareCall("{CALL `Project_OJT`.`SORT_INVOICE_DATE_PARAMETER`(?)}");
            }
            break;
            case 2: {
                cs = con.conn.prepareCall("{CALL `Project_OJT`.`SORT_PERMIT_DATE_PARAMETER`(?)}");
            }
            break;
            default: {
                cs = con.conn.prepareCall("{CALL `Project_OJT`.`SORT_ITEMINFO_PARAMETER`(?)}");
            }
        }
        cs.setString(1, search);
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





    public void UpdateItem(Assets assets) throws SQLException {

        con.Connect();
        CallableStatement cs = null;
        cs = con.conn.prepareCall("{call UPDATE_ITEM(?,?,?,?,?,?,?,?,?,?,?,?)}");

        //population of parameters
        cs.setString(1, assets.getSerialNum());
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
        cs.executeUpdate();
        con.conn.close();
    }

    //DELETE SPECIFIC ITEM
    public void DeleteEntry(String serialNum, String supplierId) throws SQLException {

        con.Connect();
        CallableStatement cs = null;
        cs = con.conn.prepareCall("CALL `Project_OJT`.`DELETE_ITEM`(?,?)");
        cs.setString(1, serialNum);
        cs.setString(2, supplierId);
        cs.executeUpdate();
        con.conn.close();

    }

    public int GetAllQuant() throws SQLException {

        con.Connect();
        CallableStatement cs = null;
        cs = con.conn.prepareCall("CALL `Project_OJT`.`TOTAL_QUANTITY`()");
        ResultSet rs = cs.executeQuery();
        rs.next();
        int x = rs.getInt(1);
        con.conn.close();
        return x;

    }
/*
    //Still contemplating if this is useless or not...
    private ResponseStatus getStatus(int x,int y,String z) throws SQLException {

        ResponseStatus sr = new ResponseStatus();
        sr.status = x;
        sr.status_id = y;
        sr.status_msg = z;
        return sr;
    }
*/
}