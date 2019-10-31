package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class EwcChargeDAO {

	private Connection conn; // 인폴트 꼭 java.sql로 해야줘야됨
	private PreparedStatement psmt;
	private ResultSet rs;

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			try {
				conn = DriverManager.getConnection(db_url, db_id, db_pw); // 드라이브매니저를 통해서 커넥션을 가져옴
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}


	public ArrayList<EwcChargeDTO> show_spots() {

		ArrayList<EwcChargeDTO> list = new ArrayList();

		getConnection();

		try {

			String sql = "select * from INFO";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {

				String num = rs.getString(1);
				String name = rs.getString(2);
				String address = rs.getString(4);
				String phonenumber = rs.getString(5);

				EwcChargeDTO dto = new EwcChargeDTO(num, name, address, phonenumber);
				list.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			close();
		}
		return list;

	}

}
