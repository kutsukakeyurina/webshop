package com.internousdev.webshop.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.internousdev.webshop.dao.StyleDAO;
import com.internousdev.webshop.dto.StyleDTO;
import com.opensymphony.xwork2.ActionSupport;

public class StyleAction extends ActionSupport {
	/**
	 *
	 */
	private static final long serialVersionUID = -6646929051117668750L;
	private List<StyleDTO> styleDTOList = new ArrayList<StyleDTO>();
	private Map<String, Object> session;

	public String execute() {
		String ret = ERROR;
		StyleDAO dao = new StyleDAO();

		styleDTOList = dao.selectAll();

		if (styleDTOList.size() > 0) {
			session.put("styleDTOList", styleDTOList);

			ret = SUCCESS;
		} else {
			ret = ERROR;
		}
		return ret;
	}
}
