package com.internousdev.webshop.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.webshop.dao.ShoppingDAO;
import com.internousdev.webshop.dto.ItemDTO;
import com.opensymphony.xwork2.ActionSupport;


public class ShoppingAction extends ActionSupport implements SessionAware {
	/**
	 *
	 */
	private static final long serialVersionUID = 1674985479222824880L;
	private List<ItemDTO> itemDTOList = new ArrayList<ItemDTO>();
	private Map<String, Object> session;
	private int categoryId;

	public String execute() {
		String ret = ERROR;
		ShoppingDAO dao = new ShoppingDAO();

		if(categoryId>0){
			itemDTOList = dao.selectByCategoryId(categoryId);
		}else{
			itemDTOList = dao.selectAll();
		}

		if (itemDTOList.size() > 0) {
			session.put("itemDTOList", itemDTOList);

			ret = SUCCESS;
		} else {
			ret = ERROR;
		}
		return ret;
	}



	public List<ItemDTO> getItemDTOList() {
		return itemDTOList;
	}



	public void setItemDTOList(List<ItemDTO> itemDTOList) {
		this.itemDTOList = itemDTOList;
	}



	public int getCategoryId() {
		return categoryId;
	}



	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}



	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


}

