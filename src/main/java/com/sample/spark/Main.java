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

         get("/aboutus", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title", "About Us ");
 
            return new ModelAndView(model, "aboutus.ftl"); // located in src/main/resources/spark/template/freemarker
        }, new FreeMarkerEngine());  

         get("/video", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title", "Video ");
 
            return new ModelAndView(model, "video.ftl"); // located in src/main/resources/spark/template/freemarker
        }, new FreeMarkerEngine());
	

        get("/submit", (req, res) -> {
            Map<String, Object> model = new HashMap<>();

            model.put("title", "Add Contact");
            
            return new ModelAndView(model, "add.ftl");
        }, new FreeMarkerEngine());

     

     post("/submit", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            String code = req.queryParams("code");
            String name = req.queryParams("name");
            String number = req.queryParams("number");

            Item item = new Item();
            item.setCode(code);
            item.setName(name);
            item.setNumber(number);

            contacts.add(item);

            model.put("title", "Show Item");
            model.put("item", item);
           
            return new ModelAndView(model, "view.ftl");
        }, new FreeMarkerEngine());

         get("/view/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Item item = contacts.findItemByCode(code);
            
            model.put("title", "Show Item");
            model.put("item", item);
            
          return new ModelAndView(model, "view.ftl");
        }, new FreeMarkerEngine());

         get("/list", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "Your Contacts");
            model.put("contacts", contacts.all());
            return new ModelAndView(model, "list.ftl");
        }, new FreeMarkerEngine());

          get("/post", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "Your Contacts");
            model.put("contacts", contacts.all());
            return new ModelAndView(model, "delete.ftl");
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
 