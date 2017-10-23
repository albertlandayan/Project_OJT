package InventorySystem.Controllers;

import InventorySystem.Database.Database;
import InventorySystem.Models.Assets;
import InventorySystem.Models.GetAssetsList;
import InventorySystem.Models.Greeting;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.print.attribute.standard.Media;
import javax.xml.ws.RequestWrapper;
import java.awt.*;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

@RestController
    @RequestMapping(value = "/assets")
public class AssetsController {


    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();
    private static String nextId;




    //SHOULD GET ALL THE INVENTORY ITEMS AND BE DISPLAYED SORTED BY PRODUCT NAME. CURRENT CODE IS JUST PRACTICE HERE
    @RequestMapping(value="query/viewAll",method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody GetAssetsList getAllAssets() throws SQLException {
        Database db = new Database();
        return db.SearchAll();
    }


    @RequestMapping("/greeting")
    public Greeting greeting(@RequestParam(value="name", defaultValue="World") String name) {
        return new Greeting(counter.incrementAndGet(),
                String.format(template, name));
    }


    //SHOULD TAKE REQUEST, CONVERT TO Assets Model from JSON, ACCESS DB AND ADD ITEM FROM JSON POST
    @RequestMapping(value="query/addItem",method = RequestMethod.POST,consumes = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody ResponseEntity<Assets> createCustomer(@RequestBody Assets params) throws SQLException {
        Database db = new Database();
        db.CreateEntry(params);
        return new ResponseEntity<Assets>(params, HttpStatus.OK);
    }


}