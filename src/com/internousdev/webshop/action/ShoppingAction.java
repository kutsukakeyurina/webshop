package com.internousdev.webshop.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.webshop.dao.ShoppingDAO;
import com.internousdev.webshop.dto.ItemDTO;
import com.opensymphony.xwork2.ActionSupport;


public class ShoppingAction extends ActionSupport implements SessionAware {
	private List<ItemDTO> itemDTOList = new ArrayList<ItemDTO>();
	private Map<String, Object> session;

	public String execute() {
		String ret = ERROR;
		ShoppingDAO dao = new ShoppingDAO();

		itemDTOList = dao.selectAll();

		if (itemDTOList.size() > 0) {
			session.put("itemDTOList", itemDTOList);

			ret = SUCCESS;
		} else {
			ret = ERROR;
		}
		return ret;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


}

