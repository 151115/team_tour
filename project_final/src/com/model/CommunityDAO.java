package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommunityDAO {

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

	

	public int insrt_Community(CommunityDTO dto) {

		getConnection();
		int cnt = 0;

		try {

			String sql = "insert into FREE_BOARD values(seq_review_num.nextval,?,?,?,?,sysdate)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getFree_title());
			psmt.setString(2, dto.getFree_contents());
			psmt.setString(3, dto.getEmail());
			psmt.setString(4, dto.getFree_pw());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		}

		finally {
			close();
		}
		return cnt;

	}
	
	
	
	public ArrayList<CommunityDTO> Community_list() {

		ArrayList<CommunityDTO> list = new ArrayList();

		getConnection();

		try {

			String sql = "select * from FREE_BOARD";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {

				String num = rs.getString(1);
				String Free_title = rs.getString(2);
				String Free_contents = rs.getString(3);
				String email = rs.getString(4);
				String date = rs.getString(6);
				CommunityDTO dto = new CommunityDTO(num, Free_title, Free_contents, email, date);
				list.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

}
