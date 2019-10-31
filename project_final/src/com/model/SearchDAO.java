package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SearchDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	public void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	// finally close ≥÷¿∏∏È æ»µ≈
	public void close() {
		try {

			if (rs != null) {
				rs.close();
			}

			if (psmt != null) {
				psmt.close();
			}

			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public ArrayList<SearchDTO> search(String input) {
		ArrayList<SearchDTO> list = new ArrayList<SearchDTO>();
		getConnection();
		String sql = "select * from tourist_spot where spot_region like ? or spot_name like ? or spot_address like ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%" + input + "%");
			psmt.setString(2, "%" + input + "%");
			psmt.setString(3, "%" + input + "%");
			rs = psmt.executeQuery();
			boolean found = rs.next();
			if (found)
				while (rs.next()) {
					SearchDTO dto = new SearchDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
							rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),
							rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18), rs.getString(19));
					list.add(dto);
				}
			else
				list = null;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public ArrayList<SearchDTO> filter(String[] checks) {
		ArrayList<SearchDTO> list = new ArrayList<SearchDTO>();
		getConnection();
		String sql = "select * from tourist_spot where ";
		String sqlOpt = "";

		for (String check : checks) {
			if (sqlOpt.equals(""))
				sqlOpt += check + "=1";
			else
				sqlOpt += " and " + check + "=1";
		}
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql + sqlOpt);
			boolean found = rs.next();
			if (found)
				while (rs.next()) {
					SearchDTO dto = new SearchDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
							rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),
							rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18), rs.getString(19));
					list.add(dto);
				}
			else
				list = null;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public ArrayList<SearchDTO> all() {
		ArrayList<SearchDTO> list = new ArrayList<SearchDTO>();
		getConnection();
		String sql = "select * from tourist_spot";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				SearchDTO dto = new SearchDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
						rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14),
						rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18), rs.getString(19));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	public ArrayList<String> selectbox() {
		ArrayList<String> list = new ArrayList<String>();
		getConnection();
		String sql = "select spot_name from tourist_spot";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
}
