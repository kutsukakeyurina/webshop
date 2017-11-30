package com.internousdev.webshop.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.webshop.dao.ShoppingDAO;
import com.internousdev.webshop.dto.ItemDTO;
import com.internousdev.webshop.util.AllPages;
import com.internousdev.webshop.util.AllPages.PageObject;
import com.opensymphony.xwork2.ActionSupport;

public class ShoppingAction extends ActionSupport implements SessionAware {

	private int categoryId;
	private int maxPage;
	private int pageNum = 1;
	private int number;
	public ArrayList<ItemDTO> displayList = new ArrayList<ItemDTO>();
    public List<ItemDTO> itemDTOList = new ArrayList<ItemDTO>();
	private Map<String, Object> session;

	public String execute() {
		String ret = ERROR;
		ShoppingDAO dao = new ShoppingDAO();

		number = itemDTOList.size();
		if (number > 0) {
			// ページネーション処理
			ArrayList<PageObject> allPages = new ArrayList<PageObject>();
			AllPages allp = new AllPages();
			allPages = allp.paginate(itemDTOList, 10);
			maxPage = allp.getMaxPage(itemDTOList, 10);
			displayList = allPages.get(pageNum - 1).getPaginatedList();
//			itemDTOList = allPages.get(pageNum - 1).getPaginatedList();
			ret = SUCCESS;
		}

		if (categoryId > 0) {
			displayList = dao.selectByCategoryId(categoryId);
		} else {
			displayList = dao.selectAll();
		}

		if (displayList.size() > 0) {
			session.put("displayList", displayList);

			ret = SUCCESS;
		} else {
			ret = ERROR;
		}
		return ret;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public ArrayList<ItemDTO> getDisplayList() {
		return displayList;
	}

	public void setDisplayList(ArrayList<ItemDTO> displayList) {
		this.displayList = displayList;
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
