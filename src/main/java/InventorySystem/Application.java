package InventorySystem;

import InventorySystem.Database.Database;
import InventorySystem.Models.GetAssets;
import InventorySystem.Models.GetAssetsList;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.sql.SQLException;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {

        SpringApplication.run(Application.class, args);
        Database db = new Database();
        GetAssetsList asl = new GetAssetsList();
        try {
            asl = db.SearchAll();
            System.out.println(asl.getList().size());

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}