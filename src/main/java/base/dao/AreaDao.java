package base.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import base.dto.AreaDto;
import base.oracle.DBConnectionManager;

public class AreaDao {
	
	//select
	public List<AreaDto> selectAreaInfoList() {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		List<AreaDto> areaInfoList = null;
		
		//Select 리스트 전체
		try {
			conn = DBConnectionManager.getConnection();

			String sql = "SELECT * FROM team_area";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			areaInfoList = new ArrayList<AreaDto>();
			
			while(rs.next()) {
				AreaDto areaDto = new AreaDto();
				
				areaDto.setArea_name(rs.getString("area_name"));
				areaDto.setArea_address(rs.getString("area_address"));
				areaDto.setArea_explanation(rs.getString("area_explanation"));

				areaInfoList.add(areaDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);			
		}
		
		return areaInfoList;
	}
	
	//select
	public AreaDto selectAreaInfoByArea_num(String area_name) {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		AreaDto areaDto = null;
		
		try {
			conn = DBConnectionManager.getConnection();

			String sql = "SELECT * FROM team_area WHERE area_name = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, area_name);

			rs = psmt.executeQuery();

			if(rs.next()) { 
				areaDto = new AreaDto();
				
				areaDto.setArea_name(rs.getString("area_name"));
				areaDto.setArea_address(rs.getString("area_address"));
				areaDto.setArea_explanation(rs.getString("area_explanation"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);			
		}
		
		return areaDto;
	}
	
	//update
	public int updateAreaInfo(String area_num, String area_name) {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		int result = 0;
		
		try {
			conn = DBConnectionManager.getConnection();

			// 쿼리문!
			String sql = "update team_area"
						+" SET area_name = ?"
						+" WHERE area_num = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, area_name);
			psmt.setString(2, area_num);
			
			result = psmt.executeUpdate();
			
			System.out.println("처리결과:" + result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);
		}
		
		return result;
	}
	
	//update
		public int updateAreaInfo(AreaDto areaDto) { //수정사항이 여러개면 객체 단위로 받기

			Connection conn = null;
			PreparedStatement psmt = null;
			ResultSet rs = null;
			int result = 0;
			
			try {
				conn = DBConnectionManager.getConnection();

				// 쿼리문!
				String sql = "update team_area"
						+" SET area_name = ?"
						+" WHERE area_num = ?";


				psmt = conn.prepareStatement(sql);
				areaDto.setArea_name(rs.getString("area_name"));
				areaDto.setArea_address(rs.getString("area_address"));
				areaDto.setArea_explanation(rs.getString("area_explanation"));
				
				result = psmt.executeUpdate();
				
				
				System.out.println("처리결과:" + result);
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBConnectionManager.close(rs, psmt, conn);
			}
			
			return result;
		}
	
	//insert
	public int insertAreaInfo(String name, String address, String explanation) {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		int result = 0;
		
		try {
			conn = DBConnectionManager.getConnection();

			String sql = "INSERT INTO team_area"
						+" VALUES(?, ?, ?)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, address);
			psmt.setString(3, explanation);
			
			result = psmt.executeUpdate();
			
			
			System.out.println("처리결과:" + result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);
		}
		
		return result;
	}
	
	//delete
	public int deleteAreaInfo(String area_num) {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		int result = 0;
		
		try {
			conn = DBConnectionManager.getConnection();

			// 쿼리문!
			String sql = "DELETE FROM team_area"
						+" WHERE area_num = ?";


			psmt = conn.prepareStatement(sql);
			psmt.setString(1, area_num);
			
			result = psmt.executeUpdate();
			
			
			System.out.println("처리결과:" + result);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);
		}
		
		return result;
	}
}
