package InventorySystem.Models;

public class GetAssets {
    private String serialNum = "";
    private String itemInfo = "";
    private String supName = "";
    private int perNum = 0;
    private String perDate = "";
    private int invNum = 0;
    private String invDate = "";
    private int prodQuant = 0;
    private double unitPrice = 0;
    private int TotalPrice = 0;


    public String getSerialNum() {
        return serialNum;
    }

    public void setSerialNum(String serialNum) {
        this.serialNum = serialNum;
    }

    public String getItemInfo() {
        return itemInfo;
    }

    public void setItemInfo(String itemInfo) {
        this.itemInfo = itemInfo;
    }

    public String getSupName() {
        return supName;
    }

    public void setSupName(String supName) {
        this.supName = supName;
    }

    public int getPerNum() {
        return perNum;
    }

    public void setPerNum(int perNum) {
        this.perNum = perNum;
    }

    public String getPerDate() {
        return perDate;
    }

    public void setPerDate(String perDate) {
        this.perDate = perDate;
    }

    public int getInvNum() {
        return invNum;
    }

    public void setInvNum(int invNum) {
        this.invNum = invNum;
    }

    public String getInvDate() {
        return invDate;
    }

    public void setInvDate(String invDate) {
        this.invDate = invDate;
    }

    public int getProdQuant() {
        return prodQuant;
    }

    public void setProdQuant(int prodQuant) {
        this.prodQuant = prodQuant;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getTotalPrice() {
        return TotalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        TotalPrice = totalPrice;
    }

}
