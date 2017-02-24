package com.sample.sparkdemo;

import java.util.HashMap;
import java.util.Map;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class MainNgaClass {

    public static void main(String[] args) {
        staticFiles.location("/css"); // Static files
        
        get("/Home", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
        model.put("title","PASSIBLE CORP.");  
            return new ModelAndView(model, "Home.ftl"); // located in src/test/resources/spark/template/freemarker
       
       


get("/", (request, response) -> {

    return "<h1>hello world123testing</h1>";

    
});


get("/form", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("Title", "Form");
            return new ModelAndView(model, "Login.html");
        }, new FreeMarkerEngine());




     post("/sub", (req,res) -> {
                String from_input1;
                String from_input2;

                from_input1 = req.QueryParams("Item");
                from_input2 = req.QueryParams("Details");
            
                Map<String, Object> model = new HashMap<>();
            model.put("item_name", from_input1);
            model.put("item_details", from_input2);
            return new ModelAndView(model, "ReqForm.html");
        }, new FreeMarkerEngine());

    }
}
