package base.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import base.dto.JoinDto;
import base.oracle.DBConnectionManager;

public class JoinDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public JoinDao() {

		try {
			
			String dbURL = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbID = "scott";
			String dbPassword = "tiger";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		
		}
	}

	public int login(String userID, String userPassword) {

		String SQL = "SELECT userPassword FROM USERS WHERE userID = ?";
		try {
			
			conn = DBConnectionManager.getConnection();
			
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) 
					return 1; //로그인성공
				else
					return 0; //비밀번호 불일치
			}
			return -1; //아이디가없음
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}
	
	public int join(JoinDto user) {
		conn = DBConnectionManager.getConnection();
		
		int result = 0;
		String sql = "INSERT INTO USERS (userID, userPassword, userName, userGender, userPhone, USER_EMAIL) VALUES (?, ?, ?, ?, ?, ?)";



		try {
			
			
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserPhone());
			pstmt.setString(6, user.getUserEmail());
			result = pstmt.executeUpdate();
			System.out.println("4");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result; //데이터베이스 오류 
	}
}
