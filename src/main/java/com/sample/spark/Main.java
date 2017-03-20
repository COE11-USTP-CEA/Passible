package com.sample.spark;


import java.util.List;
import java.util.ArrayList;
import java.util.Date;

import java.util.HashMap;
import java.util.Map;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

public class Main {

    public static void main(String[] args) {
        staticFiles.location("/css"); // Static files

        get("/home", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title", "Home");
 
            return new ModelAndView(model, "home.ftl"); // located in src/main/resources/spark/template/freemarker
        }, new FreeMarkerEngine());
		
		
        get("/submit", (req, res) -> {
            Map<String, Object> model = new HashMap<>();

            model.put("title", "Add Contact");
            
            return new ModelAndView(model, "login.ftl");
        }, new FreeMarkerEngine());

        post("/submit", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            String name, email, number, web, message;

            name = req.queryParams("name");
            email = req.queryParams("email");
            number = req.queryParams("number");
            web = req.queryParams("web");
            message = req.queryParams("message");
            
            model.put("title", "create");
            model.put("name", name);
            model.put("email", email);
            model.put("number", number);
            model.put("web",web );
            model.put("message", message);
            

            return new ModelAndView(model, "home-update.ftl"); // located in src/main/resources/spark/template/freemarker
        }, new FreeMarkerEngine());

    }
}
 