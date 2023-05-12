package base.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import base.dto.SearchDto;
import base.oracle.DBConnectionManager;

public class SearchDao {
	
	//select
	//검색 키워드 리스트(main)
	public List<SearchDto> selectSearchInfoList(String area, String search) {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		List<SearchDto> searchInfoList = null;
		
		searchInfoList = new ArrayList<SearchDto>();
		
		try {
			conn = DBConnectionManager.getConnection();

			//main-select-option 선택사항에 따라 테이블 변경
			String tableArea = area;
			if(area.equals("seoul")) {
				tableArea = "team_seoul_01";
			} else if(area.equals("busan")) {
				tableArea = "team_busan_01";
			} else if(area.equals("daegu")) {
				tableArea = "team_daegu_01";
			} else if(area.equals("incheon")) {
				tableArea = "team_incheon_01";
			} else if(area.equals("gwangju")) {
				tableArea = "team_gwangju_01";
			} else if(area.equals("daejeon")) {
				tableArea = "team_daejeon_01";
			} else if(area.equals("ulsan")) {
				tableArea = "team_ulsan_01";
			} else if(area.equals("sejong")) {
				tableArea = "team_sejong_01";
			} else if(area.equals("gyeongi")) {
				tableArea = "team_gyeongi_01";
			} else if(area.equals("gangwon")) {
				tableArea = "team_gangwon_01";
			} else if(area.equals("chungbuk")) {
				tableArea = "team_chungbuk_01";
			} else if(area.equals("chungnam")) {
				tableArea = "team_chungnam_01";
			} else if(area.equals("gyeongbuk")) {
				tableArea = "team_gyeongbuk_01";
			} else if(area.equals("gyeongnam")) {
				tableArea = "team_gyeongnam_01";
			} else if(area.equals("jeonbuk")) {
				tableArea = "team_jeonbuk_01";
			} else if(area.equals("jeonnam")) {
				tableArea = "team_jeonnam_01";
			} else if(area.equals("jeju")) {
				tableArea = "team_jeju_01";
			}
			
			String sql = "SELECT * FROM "+ tableArea + " WHERE name LIKE '%' || ? || '%'";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, search);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				SearchDto searchDto = new SearchDto();
				
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
	//단ㄴ일 상세 리스트(detail)
	public SearchDto selectSearchInfoByName(String area, String name) {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		SearchDto searchDto = new SearchDto();
		
		try {
			conn = DBConnectionManager.getConnection();

			//main-select-option 선택사항에 따라 테이블 변경
			String tableArea = area;
			if(area.equals("seoul")) {
				tableArea = "team_seoul_01";
			} else if(area.equals("busan")) {
				tableArea = "team_busan_01";
			} else if(area.equals("daegu")) {
				tableArea = "team_daegu_01";
			} else if(area.equals("incheon")) {
				tableArea = "team_incheon_01";
			} else if(area.equals("gwangju")) {
				tableArea = "team_gwangju_01";
			} else if(area.equals("daejeon")) {
				tableArea = "team_daejeon_01";
			} else if(area.equals("ulsan")) {
				tableArea = "team_ulsan_01";
			} else if(area.equals("sejong")) {
				tableArea = "team_sejong_01";
			} else if(area.equals("gyeongi")) {
				tableArea = "team_gyeongi_01";
			} else if(area.equals("gangwon")) {
				tableArea = "team_gangwon_01";
			} else if(area.equals("chungbuk")) {
				tableArea = "team_chungbuk_01";
			} else if(area.equals("chungnam")) {
				tableArea = "team_chungnam_01";
			} else if(area.equals("gyeongbuk")) {
				tableArea = "team_gyeongbuk_01";
			} else if(area.equals("gyeongnam")) {
				tableArea = "team_gyeongnam_01";
			} else if(area.equals("jeonbuk")) {
				tableArea = "team_jeonbuk_01";
			} else if(area.equals("jeonnam")) {
				tableArea = "team_jeonnam_01";
			} else if(area.equals("jeju")) {
				tableArea = "team_jeju_01";
			}
			
			String sql = "SELECT * FROM "+ tableArea + " WHERE name = '" + name + "'";

			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();

			if(rs.next()) {
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
