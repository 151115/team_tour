package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Mail_DAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private void getConnection() {
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
	/////////////////////////////////////////

	// 리뷰관련 임시 메서드
	public int setMail(Mail_DTO dto) {

		int cnt = 0;
		getConnection();

		try {

			String sql = "insert into question values(seq_question.nextval, ?,?,?, sysdate,'아직 등록되지 않았습니다')"; // SQLException
																												// e
			psmt = conn.prepareStatement(sql); // sql 을 보내서 반환받음

			psmt.setString(1, dto.getQuestionName());
			psmt.setString(2, dto.getQuestionEmail());
			psmt.setString(3, dto.getQuestionText());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public ArrayList<Mail_DTO> getMailList() {

		ArrayList<Mail_DTO> list = new ArrayList();
		getConnection();

		Mail_DTO set_dto = null;

		try {
			String sql = "select * from question";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {

				String num = rs.getString(1);
				String name = rs.getString(2);

				String email = rs.getString(3);
				String text = rs.getString(4);
				String date = rs.getString(5);
				String ans = rs.getString(6);
				Mail_DTO dto = new Mail_DTO(num, name, email, text, date, ans);
				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	//

//	
//	public ArrayList<Mail_DTO> setAnswer(String input_num){
//		
//
//		ArrayList<Mail_DTO> list = new ArrayList();
//		getConnection();
//
//		int cnt = 0;
//
//		try {
//			
//			String sql = "select from question where question_num=? "; // SQLException e
//			psmt = conn.prepareStatement(sql); // sql 을 보내서 반환받음 
//
//			psmt.setString(1, input_num );
//			rs= psmt.executeQuery();
//			
//			while(rs.next()) {
//				
//				String num = rs.getString(1);
//				String name =rs.getString(2);
//				String email = rs.getString(3);
//				String text = rs.getString(4);
//				String date = rs.getString(5);
//				String ans = rs.getString(6);
//				Mail_DTO add_dto = new Mail_DTO(num , name, email , text, date ,ans);
//				list.add(add_dto);
//				
//			}
//		}
//		catch (SQLException e) { e.printStackTrace(); }
//		finally { close(); }
//		return list;
//	}
//	

	public int setAnswer(Mail_DTO dto) {


		getConnection();

		int cnt = 0;
		
		String sql = "update question set question_answer=? where question_num=?"; // SQLException e
		
		
		try {

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getQuestionAnswer() ); 
			psmt.setString(2, dto.getQuestionNum() ); 

			cnt = psmt.executeUpdate();
			System.out.println("dao > " + cnt);
				
		} catch (SQLException e) { e.printStackTrace(); } 
		finally { close(); }
		
		return cnt;
	}
	
	public Mail_DTO getAnswer(String input_num) {

		Mail_DTO list = null;
		getConnection();

		int cnt = 0;

		try {

			String sql = "select from question where question_num=? "; // SQLException e
			psmt = conn.prepareStatement(sql); // sql 을 보내서 반환받음

			psmt.setString(1, input_num);
			rs = psmt.executeQuery();

			String num = rs.getString(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String text = rs.getString(4);
			String date = rs.getString(5);
			String ans = rs.getString(6);
			list = new Mail_DTO(num, name, email, text, date, ans);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

}
