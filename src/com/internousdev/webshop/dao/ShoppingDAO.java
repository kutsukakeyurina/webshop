package com.internousdev.webshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.webshop.dto.ItemDTO;
import com.internousdev.webshop.util.DBConnector;

public class ShoppingDAO {
	List<ItemDTO> itemDTOList = new ArrayList<ItemDTO>();

	public List<ItemDTO> selectAll() {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql= "select distinct i.item_id as item_id,"
				   + "c.category_id as category_id,"
				   + "c.category as category,"
				   + "i.item_name as item_name,"
				   + "i.item_image as item_image,"
				   + "i.item_detail as item_detail,"
				   + "i.price as price "
				   + "from items as i,"
				   + "categories as c "
				   + "where c.category_id=i.category_id;";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				ItemDTO dto = new ItemDTO();
				dto.setItemId(rs.getInt("item_id"));
				dto.setCategoryId(rs.getInt("category_id"));
				dto.setCategory(rs.getString("category"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemImage(rs.getString("item_image"));
				dto.setItemDetail(rs.getString("item_detail"));
				dto.setPrice(rs.getInt("price"));
				itemDTOList.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return itemDTOList;
	}

}
