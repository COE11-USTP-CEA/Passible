package com.sample.spark.model;
import java.util.ArrayList;

public class Item {
	public String name, code, number;

    public void setName(String name){
		this.name = name;
	}

	public String getName(){
			return name;
		}
	 public void setNumber(String number){
		this.number = number;
	}

	public String getNumber(){
			return number;
		}
	

	public String getCode(){
		return code;
	}

	public void setCode(String code){
		this.code = code;
	} 
}
