package Assets.Controllers;

import Assets.Database.Database;
import Assets.Models.Greeting;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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
    @RequestMapping(value="/viewAll",method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
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
    @RequestMapping(value="/addItem",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public Assets createCustomer(final Assets params) throws SQLException {
        Database db = new Database();
        db.CreateEntry(params);
        return params;
    }
}