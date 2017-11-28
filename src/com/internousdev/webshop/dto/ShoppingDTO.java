package com.internousdev.webshop.dto;

public class ShoppingDTO {
public int itemId;
public String itemName;
public int price;

public int getItemId(){
	return itemId;
}
public void setItemId(int itemId){
	this.itemId=itemId;
}

public String getItemName(){
	return itemName;
}
public void setItemName(String itemName){
	this.itemName=itemName;
}

public int getPrice(){
	return price;
}
public void setPrice(int price){
	this.price=price;
}
}
