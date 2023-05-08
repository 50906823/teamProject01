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

			// 쿼리문!
			String sql = "SELECT * FROM team_area_info";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery(); //쿼리를 실행!!

			//ResultSet next() 메소드는 결과 데이터에 다음행 다음행 다음행 이동.
			//return true/false  -> 값이 있다 없다!
			areaInfoList = new ArrayList<AreaDto>();
			
			while(rs.next()) {
				AreaDto areaDto = new AreaDto(); //데이터를 만들어서
				
				areaDto.setArea_num(rs.getString("area_num"));
				areaDto.setArea_name(rs.getString("area_name"));

				areaInfoList.add(areaDto); //리스트에 추가
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);			
		}
		
		return areaInfoList;
	}
	public AreaDto selectAreaInfoByArea_num(String area_num) {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		AreaDto areaDto = null;
		
		//select 한개 단일
		try {
			conn = DBConnectionManager.getConnection();

			// 쿼리문!
			String sql = "SELECT * FROM team_area_info WHERE area_num = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, area_num);

			rs = psmt.executeQuery(); //쿼리를 실행!!

			if(rs.next()) { //데이터가 있으면 true, 없으면 false
				areaDto = new AreaDto();
				
				areaDto.setArea_num(rs.getString("area_num"));
				areaDto.setArea_name(rs.getString("area_name"));
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
			String sql = "update team_area_info"
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
				String sql = "update team_area_info"
						+" SET area_name = ?"
						+" WHERE area_num = ?";


				psmt = conn.prepareStatement(sql);
				psmt.setString(1, areaDto.getArea_name());
				psmt.setString(2, areaDto.getArea_num());
				
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
	public int insertAreaInfo(String area_num, String area_name) {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		int result = 0;
		
		try {
			conn = DBConnectionManager.getConnection();

			// 쿼리문!
			String sql = "INSERT INTO team_area_info"
						+" VALUES(?, ?)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, area_num);
			psmt.setString(2, area_name);
			
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
			String sql = "DELETE FROM team_area_info"
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
