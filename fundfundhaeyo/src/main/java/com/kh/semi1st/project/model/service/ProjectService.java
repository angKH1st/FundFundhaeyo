package com.kh.semi1st.project.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.semi1st.common.JDBCTemplate.*;

import com.kh.semi1st.project.model.dao.ProjectDao;
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
	 *  @param option
	 *  @return list : 옵션 반영된 리스트 반환
	 */
	public ArrayList<Project> selectRankThumbnailListByOption(int option) {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new ProjectDao().selectRankThumbnailListByOption(conn, option);
		
		close(conn);
		
		return list;
	}

	

}
