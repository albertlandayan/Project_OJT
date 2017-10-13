package InventorySystem.Controllers;

import InventorySystem.Database.Database;
import InventorySystem.Models.Assets;
import InventorySystem.Models.Greeting;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.print.attribute.standard.Media;
import java.awt.*;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

@RestController
    @RequestMapping("assets")
public class AssetsController {


    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();
    private static String nextId;
    private static Map<String,Assets> assetsMap;
    private static Assets save(Assets assets){
        if(assetsMap==null){
            assetsMap = new HashMap<String, Assets>();
            nextId = "default";
        }

        assets.setSerialNum(nextId);
        nextId = nextId.concat("x");
        assetsMap.put(assets.getSerialNum(),assets);
        return assets;
    }


    //SHOULD GET ALL THE INVENTORY ITEMS AND BE DISPLAYED IF REQUESTED. CURRENT CODE IS JUST PRACTICE HERE
    @RequestMapping(value="query/viewAll",method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Collection<Assets>> getAllAssets(){

        Collection<Assets> assets = assetsMap.values();

        return new ResponseEntity<Collection<Assets>>(assets, HttpStatus.OK);
    }


    @RequestMapping("/greeting")
    public Greeting greeting(@RequestParam(value="name", defaultValue="World") String name) {
        return new Greeting(counter.incrementAndGet(),
                String.format(template, name));
    }


    //SHOULD ACCESS DB AND ADD ITEM FROM JSON POST
    @RequestMapping(value="query/addItem",method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody Assets createCustomer(@RequestBody final Assets params) throws SQLException {
        Database db = new Database();
        db.CreateEntry(params);
        return params;
    }

    //oct 16 goal -> fix responses
}