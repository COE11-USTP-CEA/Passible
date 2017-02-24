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
        }, new FreeMarkerEngine());
    }
}
