package com.internousdev.webshop.dto;

public class StyleDTO {
public int styleId;
public String styleImage;
public String styleDetail;


public int getStyleId(){
	return styleId;
}
public void setStyleId(int styleId){
	this.styleId=styleId;
}

public String getStyleImage(){
	return styleImage;
}
public void setStyleImage(String styleImage){
	this.styleImage=styleImage;
}

public String getStyleDetail(){
	return styleDetail;
}
public void setStyleDetail(String styleDetail){
	this.styleDetail=styleDetail;
}
}
