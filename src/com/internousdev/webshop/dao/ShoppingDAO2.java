package com.internousdev.webshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.webshop.dto.ShoppingDTO;
import com.internousdev.webshop.util.DBConnector;

public class ShoppingDAO2 {
	List<ShoppingDTO> shoppingDTOList = new ArrayList<ShoppingDTO>();

	public List<ShoppingDTO> select() {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		String sql = "select * from tops";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ShoppingDTO dto = new ShoppingDTO();
				dto.setItemId(rs.getInt("item_id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setPrice(rs.getInt("price"));
				shoppingDTOList.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		String sql2 = "select * from skirt";
		try {
			PreparedStatement ps = con.prepareStatement(sql2);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ShoppingDTO dto = new ShoppingDTO();
				dto.setItemId(rs.getInt("item_id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setPrice(rs.getInt("price"));
				shoppingDTOList.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		String sql3 = "select * from onepiece";
		try {
			PreparedStatement ps = con.prepareStatement(sql3);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ShoppingDTO dto = new ShoppingDTO();
				dto.setItemId(rs.getInt("item_id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setPrice(rs.getInt("price"));
				shoppingDTOList.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shoppingDTOList;
	}

}
