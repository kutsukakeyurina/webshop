package com.internousdev.webshop.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.webshop.dao.ShoppingDetailDAO;
import com.internousdev.webshop.dto.ItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ShoppingDetailAction extends ActionSupport implements SessionAware {
	/**
	 *
	 */
	/**
	 *
	 */
	private static final long serialVersionUID = -7366791511155327910L;
	private List<ItemDTO> itemDTOList = new ArrayList<ItemDTO>();
	private Map<String, Object> session;
	private int ItemId;

	public String execute() {
		String ret = ERROR;
		ShoppingDetailDAO dao = new ShoppingDetailDAO();

		if (ItemId > 0) {
			itemDTOList = dao.selectByItemId(ItemId);
		} else {
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

	public int getItemId() {
		return ItemId;
	}

	public void setItemId(int itemId) {
		this.ItemId = itemId;
	}

	public List<ItemDTO> getItemDTOList() {
		return itemDTOList;
	}

	public void setItemDTOList(List<ItemDTO> itemDTOList) {
		this.itemDTOList = itemDTOList;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
