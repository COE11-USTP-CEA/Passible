package com.sample.spark.model;
import com.sample.spark.model.Contacts;

import java.util.ArrayList;

public class Contacts {

	ArrayList<Item> contacts = new ArrayList<Item>();


	public ArrayList<Item> all(){
		return contacts;
	}
<<<<<<< HEAD

=======
 
>>>>>>> 15b786590c818967770d0cf7a74adb94a43e4ac1

	public void add(Item item){
		contacts.add(item);
	}


	public Item deleteItemByCode(String code){
		for (Item item : contacts ) {
			if ( code.equals(item.code) ) {
				contacts.remove(item);
				return null;
			}
		};
		return null;
	}

	public Item findItemByCode(String code){
		for (Item item : contacts ) {
			if ( code.equals(item.code) ) {
				return item;
<<<<<<< HEAD
			}
=======
			} 
>>>>>>> 15b786590c818967770d0cf7a74adb94a43e4ac1
		};
		return null;
	}

}
