package InventorySystem.Controllers;

import InventorySystem.Database.Database;
import InventorySystem.Models.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;

@RestController
@RequestMapping(value = "/assets")
public class AssetsController {


    //SHOULD GET ALL THE INVENTORY ITEMS AND BE DISPLAYED SORTED BY PRODUCT NAME. CURRENT CODE IS JUST PRACTICE HERE
    @RequestMapping(value = "query/viewAll", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    GetAssetsList getAllAssets() throws SQLException {
        Database db = new Database();
        return db.SearchSorted("default");
    }

    //SHOULD GET ALL THE INVENTORY ITEMS AND BE DISPLAYED SORTED BY WHAT YOU WANT (invoice,permit,etc).
    //Gonna make a document for which parameters are needed for specific sorting
    @RequestMapping(value = "query/viewInv/{param}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    GetAssetsList getAssetsByInvDate(@PathVariable String param) throws SQLException {
        Database db = new Database();
        return db.SearchSorted(param);
    }

    //SHOULD GET SPECIFIC INVENTORY ITEMS AND BE DISPLAYED SORTED BY WHAT YOU WANT (invoice,permit,etc).
    //Gonna make a document for which parameters are needed for specific sorting
    @RequestMapping(value = "query/searchAsset/products/\"{param}\"", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    GetAssetsList searchAssetPr(@PathVariable String param) throws SQLException {
        Database db = new Database();
        return db.SearchParams(param, 3);
    }

    @RequestMapping(value = "query/searchAsset/invDate/\"{param}\"", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    GetAssetsList searchAssetInvDate(@PathVariable String param) throws SQLException {
        Database db = new Database();
        return db.SearchParams(param, 1);
    }

    @RequestMapping(value = "query/searchAsset/perDate/\"{param}\"", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    GetAssetsList searchAssetPerDate(@PathVariable String param) throws SQLException {
        Database db = new Database();
        return db.SearchParams(param, 2);
    }


    //SHOULD TAKE REQUEST, CONVERT TO Assets Model from JSON, ACCESS DB AND ADD ITEM FROM JSON POST
    @RequestMapping(value = "query/addItem", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseStatus(HttpStatus.OK)
    public @ResponseBody
    Response addItem(@RequestBody Assets params) throws SQLException {
        Database db = new Database();
        db.CreateEntry(params);
        Response res = new Response(); 
        res.setStatus("200");
        res.setMessage("Success!");
        return res;

    }

    //SHOULD TAKE REQUEST, Enter PARAMS And DELETE the Item with the given params
    @RequestMapping(value = "query/deleteItem", method = RequestMethod.DELETE, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseStatus(HttpStatus.OK)
    public @ResponseBody
    Response deleteItem(@RequestBody DeleteAssets params) throws SQLException {
        Database db = new Database();
        //Responses here are temporary.
        Response res = new Response();
        res.setStatus("200");
        res.setMessage("Success!");
        db.DeleteEntry(params.getSerialNum(), params.getSupName());
        return res;
    }

    //SHOULD TAKE REQUEST, CONVERT TO Assets Model from JSON, ACCESS DB AND UPDATE ITEM FROM JSON POST
    @RequestMapping(value = "query/updateItem", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseStatus(HttpStatus.OK)
    public @ResponseBody
    Response updateItem(@RequestBody Assets params) throws SQLException {
        Database db = new Database();
        Response res = new Response();
        res.setStatus("200");
        res.setMessage("Success!");
        db.UpdateItem(params);
        return res;
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