package com.kh.semi1st.project.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.member.model.vo.Attachment;
import com.kh.semi1st.project.model.vo.PjCategory;
import com.kh.semi1st.project.model.vo.Project;

import static com.kh.semi1st.common.JDBCTemplate.*;

public class ProjectDao {
	
	private Properties prop = new Properties();
	
	public ProjectDao() {
		String filePath = ProjectDao.class.getResource("/db/sql/tb_project-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/** 프로젝트 현황 조회하여, 프로젝트 시작일 / 프로젝트 번호 순으로 내림차순 정렬하여 조회하는 메소드
	 *  @param conn
	 *  @return list : 썸네일 사진 포함된 리스트 반환
	 */
	public ArrayList<Project> selectThumbnailList(Connection conn) {
		ArrayList<Project> list = new ArrayList<Project>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectThumbnailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Project p = new Project();
				p.setProjectNo(rset.getInt("project_no"));
				p.setProjectCategoryNo(rset.getInt("pj_category_no"));
				p.setProjectCategoryName(rset.getString("pj_category_name"));
				p.setProjectTitle(rset.getString("project_title"));
				p.setProjectOverview(rset.getString("project_overview"));
				p.setProjectTitleImg(rset.getString("titleimg"));
				p.setProjectFunding(rset.getInt("funding"));
				p.setProjectEnd(rset.getDate("project_end"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	/** 옵션이 반영된 프로젝트 현황 조회하여, 프로젝트 시작일 / 프로젝트 번호 순으로 내림차순 정렬하여 조회하는 메소드
	 *  @param conn
	 *  @param option
	 *  @return
	 */
	public ArrayList<Project> selectThumbnailListByOption(Connection conn, int option) {
		ArrayList<Project> list = new ArrayList<Project>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = null;
		
		switch(option) {
		case 50 : sql = prop.getProperty("selectThumbnailListByOptionA"); break;
		case 150 : sql = prop.getProperty("selectThumbnailListByOptionB"); break;
		case 100 : sql = prop.getProperty("selectThumbnailListByOptionC"); break;
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Project p = new Project();
				p.setProjectNo(rset.getInt("project_no"));
				p.setProjectCategoryNo(rset.getInt("pj_category_no"));
				p.setProjectCategoryName(rset.getString("pj_category_name"));
				p.setProjectTitle(rset.getString("project_title"));
				p.setProjectOverview(rset.getString("project_overview"));
				p.setProjectTitleImg(rset.getString("titleimg"));
				p.setProjectFunding(rset.getInt("funding"));
				p.setProjectEnd(rset.getDate("project_end"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** 프로젝트 현황 조회하여, 프로젝트 실시간 펀딩금기준 내림차순 정렬하여 조회하는 메소드
	 *  @param conn
	 *  @return list : 썸네일 사진 포함된 리스트 반환
	 */
	public ArrayList<Project> selectRankThumbnailList(Connection conn) {
		ArrayList<Project> list = new ArrayList<Project>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectRankThumbnailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Project p = new Project();
				p.setProjectNo(rset.getInt("project_no"));
				p.setProjectCategoryNo(rset.getInt("pj_category_no"));
				p.setProjectCategoryName(rset.getString("pj_category_name"));
				p.setProjectTitle(rset.getString("project_title"));
				p.setProjectOverview(rset.getString("project_overview"));
				p.setProjectTitleImg(rset.getString("titleimg"));
				p.setProjectFunding(rset.getInt("funding"));
				p.setProjectEnd(rset.getDate("project_end"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** 옵션이 반영된 프로젝트 현황 조회하여, 프로젝트 실시간 펀딩금기준 내림차순 정렬하여 조회하는 메소드
	 *  @param conn
	 *  @param option
	 *  @return list : 옵션 반영된 리스트 반환
	 */
	public ArrayList<Project> selectRankThumbnailListByOption(Connection conn, int option) {
		ArrayList<Project> list = new ArrayList<Project>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = null;
		
		switch(option) {
		case 50 : sql = prop.getProperty("selectRankThumbnailListByOptionA"); break;
		case 150 : sql = prop.getProperty("selectRankThumbnailListByOptionB"); break;
		case 100 : sql = prop.getProperty("selectRankThumbnailListByOptionC"); break;
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Project p = new Project();
				p.setProjectNo(rset.getInt("project_no"));
				p.setProjectCategoryNo(rset.getInt("pj_category_no"));
				p.setProjectCategoryName(rset.getString("pj_category_name"));
				p.setProjectTitle(rset.getString("project_title"));
				p.setProjectOverview(rset.getString("project_overview"));
				p.setProjectTitleImg(rset.getString("titleimg"));
				p.setProjectFunding(rset.getInt("funding"));
				p.setProjectEnd(rset.getDate("project_end"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** 프로젝트 카테고리 현황 조회하는 메소드
	 *  @param conn
	 *  @return list : 카테고리 리스트 반환
	 */
	public ArrayList<PjCategory> selectCategoryList(Connection conn) {
		ArrayList<PjCategory> list = new ArrayList<PjCategory>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCategoryList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new PjCategory(rset.getInt("pj_category_no"),
								        rset.getString("pj_category_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	/** 카테고리에 해당하는 프로젝트 현황 조회하여, 프로젝트 시작일 / 프로젝트 번호 순으로 내림차순 정렬하여 조회하는 메소드
	 *  @param conn
	 *  @param cno : 카테고리 번호
	 *  @return list : 카테고리 반영된 프로젝트 리스트 반환
	 */
	public ArrayList<Project> selectCategoryThumbnailList(Connection conn, int cno) {
		ArrayList<Project> list = new ArrayList<Project>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCategoryThumbnailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, cno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Project p = new Project();
				p.setProjectNo(rset.getInt("project_no"));
				p.setProjectCategoryNo(rset.getInt("pj_category_no"));
				p.setProjectCategoryName(rset.getString("pj_category_name"));
				p.setProjectTitle(rset.getString("project_title"));
				p.setProjectOverview(rset.getString("project_overview"));
				p.setProjectTitleImg(rset.getString("titleimg"));
				p.setProjectFunding(rset.getInt("funding"));
				p.setProjectEnd(rset.getDate("project_end"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** 카테고리에 해당 및 옵션이 반영된 프로젝트 현황 조회하여, 프로젝트 실시간 펀딩금기준 내림차순 정렬하여 조회하는 메소드
	 *  @param conn
	 *  @param option : 조회/정렬기준
	 *  @param cno : 카테고리 번호
	 *  @return list : 카테고리 및 옵션 반영된 프로젝트 리스트 반환
	 */
	public ArrayList<Project> selectCategoryThumbnailListByOption(Connection conn, int option, int cno) {
		ArrayList<Project> list = new ArrayList<Project>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = null;
		
		switch(option) {
		case 50 : sql = prop.getProperty("selectCategoryThumbnailListByOptionA"); break;
		case 150 : sql = prop.getProperty("selectCategoryThumbnailListByOptionB"); break;
		case 100 : sql = prop.getProperty("selectCategoryThumbnailListByOptionC"); break;
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, cno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Project p = new Project();
				p.setProjectNo(rset.getInt("project_no"));
				p.setProjectCategoryNo(rset.getInt("pj_category_no"));
				p.setProjectCategoryName(rset.getString("pj_category_name"));
				p.setProjectTitle(rset.getString("project_title"));
				p.setProjectOverview(rset.getString("project_overview"));
				p.setProjectTitleImg(rset.getString("titleimg"));
				p.setProjectFunding(rset.getInt("funding"));
				p.setProjectEnd(rset.getDate("project_end"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	/** 프로젝트 상세조회하는 메소드
	 *  @param conn
	 *  @return p : 조회된 프로젝트
	 */
	public Project selectProject(Connection conn, int pno) {
		Project p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProject");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Project();
				p.setProjectNo(rset.getInt("project_no"));
				p.setProjectSeller(rset.getString("project_seller"));
				p.setProjectOverview(rset.getString("project_overview"));
				p.setProjectTitle(rset.getString("project_title"));
				p.setProjectContent(rset.getString("project_content"));
				p.setProjectTag(rset.getString("project_tag"));
				p.setProjectPrice(rset.getInt("project_price"));
				p.setProjectStart(rset.getDate("project_start"));
				p.setProjectEnd(rset.getDate("project_end"));
				p.setProjectPaymentBuyer(rset.getDate("project_payment_buyer"));
				p.setProjectPaymentSeller(rset.getDate("project_payment_seller"));
				p.setProjectCategoryNo(rset.getInt("pj_category_no"));
				p.setProjectCategoryName(rset.getString("pj_category_name"));
				p.setProjectSellerFunding(rset.getInt("seller_funding"));
				p.setProjectFunding(rset.getInt("funding"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return p;
	}

	public ArrayList<Attachment> selectAttachmentList(Connection conn, int pno) {
		ArrayList<Attachment> list = new ArrayList<Attachment>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAttachmentList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Attachment at = new Attachment();
				at.setAttachmentNo(rset.getInt("attachment_no"));
				at.setAttachmentUpdateName(rset.getString("attachment_update_name"));
				at.setAttachmentPath(rset.getString("attachment_path"));
				
				list.add(at);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int selectProjectBuyer(Connection conn, int pno) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProjectBuyer");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}

	/** 프로젝트 찜한 회원들의 수를 조회하는 메소드
	 *  @param conn
	 *  @param pno : 조회하고자 하는 프로젝트 번호
	 *  @return result : 해당 프로젝트를 찜한 회원들의 수
	 */
	public int selectProjectLiker(Connection conn, int pno) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProjectLiker");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
	
	/** 카테고리 번호 조회하는 메소드
	 *  @param conn
	 *  @param pjCno : 조회하고자 하는 카테고리명
	 *  @return no : 조회된 카테고리 번호
	 */
	public int selectCategoryNo(Connection conn, String pjCno) {
		int no = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCategoryNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, pjCno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				no = rset.getInt("pj_category_no");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return no;
	}

	/** 프로젝트 등록과 첨부파일 등록을 처리해주는 메소드
	 *  @param conn
	 *  @param p : 등록하고자 하는 프로젝트
	 *  @return result : 처리 결과 (1 : 성공 / 0 : 실패)
	 */
	public int insertProject(Connection conn, Project p) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertProject");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, Integer.parseInt(p.getProjectSeller()));
			pstmt.setInt(2, p.getProjectCategoryNo());
			pstmt.setString(3, p.getProjectOverview());
			pstmt.setString(4, p.getProjectTitle());
			pstmt.setString(5, p.getProjectContent());
			pstmt.setString(6, p.getProjectTag());
			pstmt.setInt(7, p.getProjectPrice());
			pstmt.setDate(8, p.getProjectStart());
			pstmt.setDate(9, p.getProjectEnd());
			pstmt.setDate(10, p.getProjectPaymentBuyer());
			pstmt.setDate(11, p.getProjectPaymentSeller());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	

}
