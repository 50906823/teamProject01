package base.dao;

import base.dto.JoinDto;
import base.oracle.DBConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
            String sql = "SELECT * FROM USERS"; // 사용자 테이블 이름에 맞게 변경하세요.
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
}