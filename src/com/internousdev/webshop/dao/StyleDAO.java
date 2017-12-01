package com.internousdev.webshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.webshop.dto.StyleDTO;
import com.internousdev.webshop.util.DBConnector;

public class StyleDAO {
	List<StyleDTO> styleDTOList = new ArrayList<StyleDTO>();

	public List<StyleDTO> selectAll() {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql= "select distinct s.style_id as style_id,"
				   + "s.style_image as style_image,"
				   + "s.style_detail as style_detail,"
				   + "from styles as s,";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				StyleDTO dto = new StyleDTO();
				dto.setStyleId(rs.getInt("style_id"));
				dto.setStyleImage(rs.getString("style_image"));
				dto.setStyleDetail(rs.getString("style_detail"));
				styleDTOList.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return styleDTOList;
	}

}
