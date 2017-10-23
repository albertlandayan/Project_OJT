package InventorySystem.Controllers;

import InventorySystem.Database.Database;
import InventorySystem.Models.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
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
    @ResponseStatus(HttpStatus.OK)
    public @ResponseBody
    void addItem(@RequestBody Assets params) throws SQLException {
        Database db = new Database();
        db.CreateEntry(params);

    }

    //SHOULD TAKE REQUEST, Enter PARAMS And DELETE the Item with the given params
    @RequestMapping(value = "query/deleteItem", method = RequestMethod.DELETE, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseStatus(HttpStatus.OK)
    public @ResponseBody
    void deleteItem(@RequestBody DeleteAssets params) throws SQLException {
        Database db = new Database();
        db.DeleteEntry(params.getSerialNum(), params.getSupName());
    }

    //SHOULD TAKE REQUEST, CONVERT TO Assets Model from JSON, ACCESS DB AND UPDATE ITEM FROM JSON POST
    @RequestMapping(value = "query/updateItem", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseStatus(HttpStatus.OK)
    public @ResponseBody
    void updateItem(@RequestBody Assets params) throws SQLException {
        Database db = new Database();
        db.UpdateItem(params);
    }

    //SHOULD GET THE TOTAL QUANTITY OF THE ITEMS IN THE INVENTORY
    @RequestMapping(value = "query/totalItems", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    GetTotalQuant totalAssets() throws SQLException {
        Database db = new Database();
        GetTotalQuant obj = new GetTotalQuant();
        obj.setTotal(db.GetAllQuant());
        return obj;
    }



}