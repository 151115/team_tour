package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReviewDAO {

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

	public int insert_review(ReviewDTO dto) {
		getConnection();
		int cnt = 0;

		try {

			String sql = "insert into Review_Board values(seq_review_num.nextval,?,?,?,?,sysdate)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPlace_title());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getText());
			psmt.setString(4, dto.getEmail());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		}

		finally {
			close();
		}
		return cnt;

	}

	public ArrayList<ReviewDTO> show_Review() {

		ArrayList<ReviewDTO> list = new ArrayList();

		getConnection();

		try {

			String sql = "select * from Review_Board";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {

				String num = rs.getString(1);
				String place_title = rs.getString(2);
				String title = rs.getString(3);
				String text = rs.getString(4);
				String email = rs.getString(5);
				String date = rs.getString(6);
				ReviewDTO dto = new ReviewDTO(place_title, title, text, email, num, date);
				
				list.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

}
