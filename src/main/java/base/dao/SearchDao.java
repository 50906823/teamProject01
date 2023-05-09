package base.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import base.dto.SearchlDto;
import base.oracle.DBConnectionManager;

public class SearchDao {
	
	//select
	public List<SearchlDto> selectSearchInfoList(String search) {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		List<SearchlDto> searchInfoList = null;
		
		searchInfoList = new ArrayList<SearchlDto>();
		
		//Select 검색 키워드 리스트
		try {
			conn = DBConnectionManager.getConnection();

			//테이블 옵션 들어가게 변경해야 함!! 서울은 테스트용
			String sql = "SELECT * FROM team_seoul_01 WHERE name LIKE '%' || ? || '%'";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, search);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				SearchlDto searchDto = new SearchlDto();
				
				searchDto.setName(rs.getString("name"));
				searchDto.setAddress(rs.getString("address"));
				searchDto.setTel(rs.getString("tel"));
				
				searchInfoList.add(searchDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);			
		}
		return searchInfoList;
	}
	
	//select
	public List<SearchlDto> selectSearchInfoList() {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		List<SearchlDto> searchInfoList = null;
		
		//Select 리스트 전체
		try {
			conn = DBConnectionManager.getConnection();

			//테이블 옵션 들어가게 변경해야 함!!
			String sql = "SELECT * FROM team_search_01";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			searchInfoList = new ArrayList<SearchlDto>();
			
			while(rs.next()) {
				SearchlDto searchDto = new SearchlDto();
				
				searchDto.setName(rs.getString("name"));
				searchDto.setAddress(rs.getString("address"));
				searchDto.setTel(rs.getString("tel"));

				searchInfoList.add(searchDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);			
		}
		return searchInfoList;
	}
	
	//확인 필요
	public SearchlDto selectSearchInfoByName(String name) {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		SearchlDto searchDto = null;
		
		//select 한개 단일
		try {
			conn = DBConnectionManager.getConnection();

			//테이블 옵션 들어가게 변경해야 함!!
			String sql = "SELECT * FROM team_search_01 WHERE name = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);

			rs = psmt.executeQuery();

			if(rs.next()) {
				searchDto = new SearchlDto();
				
				searchDto.setName(rs.getString("name"));					 //명칭
				searchDto.setPostNum(rs.getString("postNum"));				 //우편번호
				searchDto.setAddress(rs.getString("address"));				 //주소
				searchDto.setOutline(rs.getString("outline"));				 //개요
				searchDto.setTel(rs.getString("tel"));						 //문의및안내
				searchDto.setOpening(rs.getString("opening"));				 //개장일
				searchDto.setDayOff(rs.getString("dayOff"));				 //쉬는날
				searchDto.setExperienceInfo(rs.getString("experienceInfo")); //체험안내
				searchDto.setExperienceAge(rs.getString("experienceAge"));	 //체험가능연령
				searchDto.setLimitPeople(rs.getString("limitPeople"));		 //수용인원
				searchDto.setPeriod(rs.getString("period"));				 //이용시기
				searchDto.setHours(rs.getString("hours"));					 //이용시간
				searchDto.setParking(rs.getString("parking"));				 //주차시설
				searchDto.setRentalStroller(rs.getString("rentalStroller")); //유모차대여여부
				searchDto.setWithPet(rs.getString("withPet"));				 //애완동물동반가능여부
				searchDto.setDetailInfo(rs.getString("detailInfo"));		 //상세정보
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionManager.close(rs, psmt, conn);			
		}
		return searchDto;
	}
	

}