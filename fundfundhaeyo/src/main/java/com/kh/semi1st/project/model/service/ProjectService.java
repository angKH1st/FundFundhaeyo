package com.kh.semi1st.project.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.semi1st.common.JDBCTemplate.*;

import com.kh.semi1st.member.model.vo.Attachment;
import com.kh.semi1st.project.model.dao.ProjectDao;
import com.kh.semi1st.project.model.vo.PjCategory;
import com.kh.semi1st.project.model.vo.Project;

public class ProjectService {

	/** 프로젝트 현황 조회하여, 프로젝트 시작일 / 프로젝트 번호 순으로 내림차순 정렬하여 조회하는 메소드
	 *  @return list : 썸네일 사진 포함된 리스트 반환
	 */
	public ArrayList<Project> selectThumbnailList() {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new ProjectDao().selectThumbnailList(conn);
		
		close(conn);
		
		return list;
	}
	
	/** 옵션이 반영된 프로젝트 현황 조회하여, 프로젝트 시작일 / 프로젝트 번호 순으로 내림차순 정렬하여 조회하는 메소드
	 *  @param option : 조회/정렬기준
	 *  @return list : 옵션 반영된 리스트 반환
	 */
	public ArrayList<Project> selectThumbnailListByOption(int option) {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new ProjectDao().selectThumbnailListByOption(conn, option);
		
		close(conn);
		
		return list;
	}

	/** 프로젝트 현황 조회하여, 프로젝트 실시간 펀딩금기준 내림차순 정렬하여 조회하는 메소드
	 *  @return list : 썸네일 사진 포함된 리스트 반환
	 */
	public ArrayList<Project> selectRankThumbnailList() {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new ProjectDao().selectRankThumbnailList(conn);
		
		close(conn);
		
		return list;
	}

	/** 옵션이 반영된 프로젝트 현황 조회하여, 프로젝트 실시간 펀딩금기준 내림차순 정렬하여 조회하는 메소드
	 *  @param option : 조회/정렬기준
	 *  @return list : 옵션 반영된 리스트 반환
	 */
	public ArrayList<Project> selectRankThumbnailListByOption(int option) {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new ProjectDao().selectRankThumbnailListByOption(conn, option);
		
		close(conn);
		
		return list;
	}

	/** 프로젝트 카테고리 현황 조회하는 메소드
	 *  @return list : 카테고리 리스트 반환
	 */
	public ArrayList<PjCategory> selectCategoryList() {
		Connection conn = getConnection();
		
		ArrayList<PjCategory> list = new ProjectDao().selectCategoryList(conn);
		
		close(conn);
		
		return list;
	}

	/** 카테고리에 해당하는 프로젝트 현황 조회하여, 프로젝트 시작일 / 프로젝트 번호 순으로 내림차순 정렬하여 조회하는 메소드
	 *  @param cno : 카테고리 번호
	 *  @return list : 카테고리 반영된 프로젝트 리스트 반환
	 */
	public ArrayList<Project> selectCategoryThumbnailList(int cno) {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new ProjectDao().selectCategoryThumbnailList(conn, cno);
		
		close(conn);
		
		return list;
	}

	/** 카테고리에 해당 및 옵션이 반영된 프로젝트 현황 조회하여, 프로젝트 실시간 펀딩금기준 내림차순 정렬하여 조회하는 메소드
	 *  @param option : 조회/정렬기준
	 *  @param cno : 카테고리 번호
	 *  @return list : 카테고리 및 옵션 반영된 프로젝트 리스트 반환
	 */
	public ArrayList<Project> selectCategoryThumbnailListByOption(int option, int cno) {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new ProjectDao().selectCategoryThumbnailListByOption(conn, option, cno);
		
		close(conn);
		
		return list;
	}

	/** 프로젝트 상세조회하는 메소드
	 *  @param pno : 조회하고자 하는 프로젝트 번호
	 *  @return p : 조회된 프로젝트
	 */
	public Project selectProject(int pno) {
		Connection conn = getConnection();
		
		Project p = new ProjectDao().selectProject(conn, pno);
		
		close(conn);
		
		return p;
	}

	/** 프로젝트 첨부파일 리스트조회하는 메소드
	 *  @param pno : 조회하고자 하는 프로젝트 번호
	 *  @return list : 조회된 첨부파일
	 */
	public ArrayList<Attachment> selectAttachmentList(int pno) {
		Connection conn = getConnection();

		ArrayList<Attachment> list = new ProjectDao().selectAttachmentList(conn, pno);
		
		close(conn);
		
		return list;
	}

	/** 프로젝트 후원자 수를 조회하는 메소드
	 *  @param pno : 조회하고자 하는 프로젝트 번호
	 *  @return result : 해당 프로젝트의 후원자들의 수
	 */
	public int selectProjectBuyer(int pno) {
		Connection conn = getConnection();
		
		int result = new ProjectDao().selectProjectBuyer(conn, pno); 
		
		close(conn);
		
		return result;
	}

	/** 프로젝트 찜한 회원들의 수를 조회하는 메소드
	 *  @param pno : 조회하고자 하는 프로젝트 번호
	 *  @return result : 해당 프로젝트를 찜한 회원들의 수
	 */
	public int selectProjectLiker(int pno) {
		Connection conn = getConnection();
		
		int result = new ProjectDao().selectProjectLiker(conn, pno);
		
		close(conn);
		
		return result;
	}

}
