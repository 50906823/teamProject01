package base.dao;

import base.dto.JoinDto;
import base.oracle.DBConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUserID());
            pstmt.setString(2, user.getUserPassword());
            pstmt.setString(3, user.getUserName());
            pstmt.setString(4, user.getUserGender());
            pstmt.setString(5, user.getUserPhone());
            pstmt.setString(6, user.getUserEmail());
            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result; //데이터베이스 오류 
    }


    // 새로 추가된 getUserList() 메서드
    public List<JoinDto> getUserList() {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<JoinDto> userList = new ArrayList<>();

        try {
            conn = DBConnectionManager.getConnection();
            String sql = "SELECT * FROM USERS ORDER BY userId"; // 사용자 테이블 이름에 맞게 변경하세요.
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                JoinDto user = new JoinDto();
                user.setUserID(rs.getString("userID"));
                user.setUserPassword(rs.getString("userPassword"));
                user.setUserName(rs.getString("userName"));
                user.setUserGender(rs.getString("userGender"));
                user.setUserPhone(rs.getString("userPhone"));
                user.setUserEmail(rs.getString("USER_EMAIL"));

                userList.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
            if (pstmt != null) try { pstmt.close(); } catch (Exception e) { e.printStackTrace(); }
            
            if (conn != null) try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
        }

        return userList;
    }
    
    // 회원정보 삭제 기능을 위한 deleteUser() 메서드 추가
    public int deleteUser(String userID) {
        conn = DBConnectionManager.getConnection();
        int result = 0;
        String sql = "DELETE FROM USERS WHERE userID = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userID);
            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result; // 1: 성공, 0: 실패
    }
    
	//update
	public int updateMemberInfo(JoinDto joinDto) {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		int result = 0;

		try {
			conn = DBConnectionManager.getConnection();

			// 쿼리문!
			String sql = "UPDATE USERS"
					+" SET username = ?, userpassword = ?, usergender = ?, userphone = ?, user_email = ?"
					+" WHERE userID = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, joinDto.getUserName());
			psmt.setString(2, joinDto.getUserPassword());
			psmt.setString(3, joinDto.getUserGender());
			psmt.setString(4, joinDto.getUserPhone());
			psmt.setString(5, joinDto.getUserEmail());
			psmt.setString(6, joinDto.getUserID());

			result = psmt.executeUpdate();

			System.out.println("처리결과:" + result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);
		}

		return result;
	}
    
	public JoinDto selectMemberInfoById(String id) {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		JoinDto joinDto = null;

		try {
			conn = DBConnectionManager.getConnection();

			String sql = "select * from users"
					+" WHERE userid = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();

			if(rs.next()) {
				joinDto = new JoinDto();

				joinDto.setUserID(rs.getString("userid"));
				joinDto.setUserName(rs.getString("username"));
				joinDto.setUserPassword(rs.getString("userpassword"));
				joinDto.setUserGender(rs.getString("usergender"));
				joinDto.setUserPhone(rs.getString("userphone"));
				joinDto.setUserEmail(rs.getString("user_email"));
				
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);			
		}

		return joinDto;
	}
    
}