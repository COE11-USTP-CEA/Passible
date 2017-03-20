package com.sample.spark;

import com.sample.spark.model.Item;
import com.sample.spark.model.Contacts;
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
          Contacts contacts = new Contacts();


        get("/home", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title", "Home");
 
            return new ModelAndView(model, "home.ftl"); // located in src/main/resources/spark/template/freemarker
        }, new FreeMarkerEngine());
	

        get("/submit", (req, res) -> {
            Map<String, Object> model = new HashMap<>();

            model.put("title", "Add Contact");
            
            return new ModelAndView(model, "add.ftl");
        }, new FreeMarkerEngine());

      //  post("/submit", (req, res) -> {
         //   Map<String, Object> model = new HashMap<>();
         //   String name, email, number, web, message;

          //  name = req.queryParams("name");
          //  email = req.queryParams("email");
            //number = req.queryParams("number");
           // web = req.queryParams("web");
           // message = req.queryParams("message");
            
            //model.put("title", "create");
           // model.put("name", name);
           // model.put("email", email);
           // model.put("number", number);
            //model.put("web",web );
            //model.put("message", message);
            

            //return new ModelAndView(model, "home-update.ftl"); // located in src/main/resources/spark/template/freemarker
       // }, new FreeMarkerEngine());

     post("/submit", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            String code = req.queryParams("code");
            String name = req.queryParams("name");

            Item item = new Item();
            item.setCode(code);
            item.setName(name);

            contacts.add(item);

            model.put("title", "Show Item");
            model.put("item", item);
            // response.redirect("/show/"+code);
            // return "";
            return new ModelAndView(model, "view.ftl");
        }, new FreeMarkerEngine());

         get("/view/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Item item = contacts.findItemByCode(code);
            
            model.put("title", "Show Item");
            model.put("item", item);
            // model.put("searchcode", code);
            // model.put("founditem", item);
          return new ModelAndView(model, "view.ftl");
        }, new FreeMarkerEngine());

         get("/list", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "Your Contacts");
            model.put("contacts", contacts.all());
            return new ModelAndView(model, "list.ftl");
        }, new FreeMarkerEngine());

         get("/delete/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Item item = contacts.findItemByCode(code);
            
            model.put("title", "Delete Contacts");
            model.put("item", item);
            return new ModelAndView(model, "remove.ftl");
        }, new FreeMarkerEngine());

         post("/delete", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.queryParams("code");
            Item item = contacts.findItemByCode(code);
            contacts.deleteItemByCode(code);
            
            model.put("title", "Deleted Contacts");
            model.put("item", item);

           return new ModelAndView(model, "removed.ftl");
        }, new FreeMarkerEngine());

    }
}
 