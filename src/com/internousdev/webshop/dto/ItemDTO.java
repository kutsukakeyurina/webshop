package com.internousdev.webshop.dto;

public class ItemDTO {
  private int itemId;
  private int categoryId;
  private String category;
  private String itemName;
  private String itemDetail;
  private String itemImage;
  private int price;
public int getItemId() {
	return itemId;
}
public void setItemId(int itemId) {
	this.itemId = itemId;
}
public int getCategoryId() {
	return categoryId;
}
public void setCategoryId(int categoryId) {
	this.categoryId = categoryId;
}

public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getItemName() {
	return itemName;
}
public void setItemName(String itemName) {
	this.itemName = itemName;
}

public String getItemDetail() {
	return itemDetail;
}
public void setItemDetail(String itemDetail) {
	this.itemDetail = itemDetail;
}
public String getItemImage() {
	return itemImage;
}
public void setItemImage(String itemImage) {
	this.itemImage = itemImage;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}


}
