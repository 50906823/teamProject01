package base.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import base.dto.SeoulDto;
import base.oracle.DBConnectionManager;

public class SeoulDao {
	//select
	public List<SeoulDto> selectSeoulInfoList(String search) {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		List<SeoulDto> seoulInfoList = null;
		
		seoulInfoList = new ArrayList<SeoulDto>();
		
		//Select 검색 키워드 리스트
		try {
			conn = DBConnectionManager.getConnection();

			// 쿼리문!
			String sql = "SELECT * FROM team_seoul_01 WHERE seoul_name LIKE '%' || ? || '%'";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, search);

			rs = psmt.executeQuery(); //쿼리를 실행!!
			
			while(rs.next()) {
				SeoulDto seoulDto = new SeoulDto(); //데이터를 만들어서
				
				seoulDto.setSeoul_name(rs.getString("seoul_name"));
				seoulDto.setSeoul_address(rs.getString("seoul_address"));
				seoulDto.setSeoul_tel(rs.getString("seoul_tel"));
				
				seoulInfoList.add(seoulDto); //리스트에 추가
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);			
		}
		
		return seoulInfoList;
	}
	
//	//select
	public List<SeoulDto> selectSeoulInfoList() {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		List<SeoulDto> seoulInfoList = null;
		
		//Select 리스트 전체
		try {
			conn = DBConnectionManager.getConnection();

			// 쿼리문!
			String sql = "SELECT * FROM team_seoul_01";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery(); //쿼리를 실행!!

			//ResultSet next() 메소드는 결과 데이터에 다음행 다음행 다음행 이동.
			//return true/false  -> 값이 있다 없다!
			seoulInfoList = new ArrayList<SeoulDto>();
			
			while(rs.next()) {
				SeoulDto seoulDto = new SeoulDto(); //데이터를 만들어서
				
				seoulDto.setSeoul_name(rs.getString("seoul_name"));
				seoulDto.setSeoul_address(rs.getString("seoul_address"));
				seoulDto.setSeoul_tel(rs.getString("seoul_tel"));

				seoulInfoList.add(seoulDto); //리스트에 추가
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);			
		}
		
		return seoulInfoList;
	}
	public SeoulDto selectSeoulInfoBySeoul_name(String seoul_name) {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		SeoulDto seoulDto = null;
		
		//select 한개 단일
		try {
			conn = DBConnectionManager.getConnection();

			// 쿼리문!
			String sql = "SELECT * FROM team_seoul_01 WHERE seoul_name = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, seoul_name);

			rs = psmt.executeQuery(); //쿼리를 실행!!

			if(rs.next()) { //데이터가 있으면 true, 없으면 false
				seoulDto = new SeoulDto();
				
				seoulDto.setSeoul_name(rs.getString("seoul_name"));						//명칭
				seoulDto.setSeoul_postNum(rs.getString("seoul_postNum"));				//우편번호
				seoulDto.setSeoul_address(rs.getString("seoul_address"));				//주소
				seoulDto.setSeoul_outline(rs.getString("seoul_outline"));				//개요
				seoulDto.setSeoul_tel(rs.getString("seoul_tel"));						//문의및안내
				seoulDto.setSeoul_opening(rs.getString("seoul_opening"));				//개장일
				seoulDto.setSeoul_dayOff(rs.getString("seoul_dayOff"));					//쉬는날
				seoulDto.setSeoul_experienceInfo(rs.getString("seoul_experienceInfo")); //체험안내
				seoulDto.setSeoul_experienceAge(rs.getString("seoul_experienceAge"));	//체험가능연령
				seoulDto.setSeoul_limitPeople(rs.getString("seoul_limitPeople"));		//수용인원
				seoulDto.setSeoul_period(rs.getString("seoul_period"));					//이용시기
				seoulDto.setSeoul_hours(rs.getString("seoul_hours"));					//이용시간
				seoulDto.setSeoul_parking(rs.getString("seoul_parking"));				//주차시설
				seoulDto.setSeoul_rentalStroller(rs.getString("seoul_rentalStroller")); //유모차대여여부
				seoulDto.setSeoul_withPet(rs.getString("seoul_withPet"));				//애완동물동반가능여부
				seoulDto.setSeoul_detailInfo(rs.getString("seoul_detailInfo"));			//상세정보
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);			
		}
		
		return seoulDto;
	}
	
	

}
