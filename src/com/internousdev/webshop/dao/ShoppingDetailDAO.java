package com.internousdev.webshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.webshop.dto.ItemDTO;
import com.internousdev.webshop.util.DBConnector;

public class ShoppingDetailDAO {
	List<ItemDTO> itemDTOList = new ArrayList<ItemDTO>();

	public List<ItemDTO> selectAll() {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql= "select distinct "
				+"i.item_id as item_id,"
				+"c.category_id as category_id,"
				+"c.category as category,"
				+"i.item_name as item_name,"
				+"i.item_image as item_image,"
				+"i.item_detail as item_detail,"
				+"i.price as price,"
				+"s.item_size_id as item_size_id,"
				+"s.length_s as length_s,"
				+"s.length_m as length_m,"
				+"s.length_l as length_l,"
				+"s.bust_s as bust_s,"
				+"s.bust_m as bust_m,"
				+"s.bust_l as bust_l,"
				+"s.sleeve_s as sleeve_s,"
				+"s.sleeve_m as sleeve_m,"
				+"s.sleeve_l as sleeve_l,"
				+"d.item_description_id as item_description_id,"
				+"d.detail as detail,"
				+"d.material as material"
				+"from items as i,"
				+"categories as c ,"
				+"item_size as s,"
				+"item_description as d "
				+"where c.category_id=i.category_id"
				+"and i.item_id=s.item_id"
				+"and i.item_id=d.item_id;";

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
				dto.setItemSizeId(rs.getInt("item_size_id"));
				dto.setLengthS(rs.getInt("length_s"));
				dto.setLengthM(rs.getInt("length_m"));
				dto.setLengthL(rs.getInt("length_l"));
				dto.setBustS(rs.getInt("bust_s"));
				dto.setBustM(rs.getInt("bust_m"));
				dto.setBustL(rs.getInt("bust_l"));
				dto.setSleeveS(rs.getInt("sleeve_s"));
				dto.setSleeveM(rs.getInt("sleeve_m"));
				dto.setSleeveL(rs.getInt("sleeve_l"));
				dto.setItemDescriptionId(rs.getInt("item_description_id"));
				dto.setDetail(rs.getString("detail"));
				dto.setMaterial(rs.getString("material"));

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

	public List<ItemDTO> selectByItemId(int ItemId) {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql= "select distinct "
				+"i.item_id as item_id,"
				+"c.category_id as category_id,"

				+"c.category as category,"
				+"i.item_name as item_name,"
				+"i.item_image as item_image,"
				+"i.item_detail as item_detail,"
				+"i.price as price,"
				+"s.item_size_id as item_size_id,"
				+"s.length_s as length_s,"
				+"s.length_m as length_m,"
				+"s.length_l as length_l,"
				+"s.bust_s as bust_s,"
				+"s.bust_m as bust_m,"
				+"s.bust_l as bust_l,"
				+"s.sleeve_s as sleeve_s,"
				+"s.sleeve_m as sleeve_m,"
				+"s.sleeve_l as sleeve_l,"
				+"d.item_description_id as item_description_id,"
				+"d.detail as detail,"
				+"d.material as material "
				+"from items as i,"
				+"categories as c ,"
				+"item_size as s,"
				+"item_description as d "
				+"where c.category_id=i.category_id "
				+"and i.item_id=? "
				+"and s.item_id=? "
				+"and d.item_id=?";


		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, ItemId);
			ps.setInt(2, ItemId);
			ps.setInt(3, ItemId);


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
				dto.setItemSizeId(rs.getInt("item_size_id"));
				dto.setLengthS(rs.getInt("length_s"));
				dto.setLengthM(rs.getInt("length_m"));
				dto.setLengthL(rs.getInt("length_l"));
				dto.setBustS(rs.getInt("bust_s"));
				dto.setBustM(rs.getInt("bust_m"));
				dto.setBustL(rs.getInt("bust_l"));
				dto.setSleeveS(rs.getInt("sleeve_s"));
				dto.setSleeveM(rs.getInt("sleeve_m"));
				dto.setSleeveL(rs.getInt("sleeve_l"));
				dto.setItemDescriptionId(rs.getInt("item_description_id"));
				dto.setDetail(rs.getString("detail"));
				dto.setMaterial(rs.getString("material"));

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


