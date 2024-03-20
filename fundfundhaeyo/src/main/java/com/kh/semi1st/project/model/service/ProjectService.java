package com.kh.semi1st.project.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.semi1st.common.JDBCTemplate.*;

import com.kh.semi1st.common.model.vo.PageInfo;
import com.kh.semi1st.member.model.vo.Attachment;
import com.kh.semi1st.member.model.vo.Order;
import com.kh.semi1st.member.model.vo.Payment;
import com.kh.semi1st.project.model.dao.ProjectDao;
import com.kh.semi1st.project.model.vo.Chat;
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
	
	/** 카테고리 번호 조회하는 메소드
	 *  @param pjCno : 조회하고자 하는 카테고리명
	 *  @return no : 조회된 카테고리 번호
	 */
	public int selectCategoryNo(String pjCno) {
		Connection conn = getConnection();
		
		int no = new ProjectDao().selectCategoryNo(conn, pjCno);
		
		close(conn);
		
		return no;
	}

	/** 프로젝트 등록과 첨부파일 등록을 처리해주는 메소드
	 *  @param p : 등록하고자 하는 프로젝트
	 *  @param list : 첨부파일 리스트
	 *  @return result : 처리 결과 (1 : 성공 / 0 : 실패)
	 */
	public int insertProject(Project p, ArrayList<Attachment> list) {
		Connection conn = getConnection();
		
		int result1 = new ProjectDao().insertProject(conn, p);
		int result2 = new ProjectDao().insertAttachmentList(conn, p, list);
		int result3 = new ProjectDao().insertProjectNotice(conn, p);
		
		if(result1 > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2 * result3;
	}

	/** 전체 프로젝트 숫자 조회
	 *  @return listCount : 전체 프로젝트 숫자
	 */
	public int selectProjectListCount() {
		Connection conn = getConnection();
		
		int listCount = new ProjectDao().selectProjectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	/** 전체 찜 한 프로젝트 숫자 조회
	 *  @param userNo : 찜 한 회원 번호
	 *  @return listCount : 전체 프로젝트 숫자
	 */
	public int selectProjectLikesListCount(int userNo) {
		Connection conn = getConnection();
		
		int listCount = new ProjectDao().selectProjectLikesListCount(conn, userNo);
		
		close(conn);
		
		return listCount;
	}

	/** 프로젝트 제한 조회
	 *  @param pi : 페이징 처리 객체
	 *  @return list : 프로젝트 제한 list
	 */
	public ArrayList<Project> selectProjectList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new ProjectDao().selectProjectList(conn, pi);
		
		close(conn);
		
		return list;
	}

	/** 심사 대상 프로젝트 제한 조회
	 *  @param pi : 페이징 처리 객체
	 *  @return list : 프로젝트 제한 list
	 */
	public ArrayList<Project> selectProjectUpdateList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new ProjectDao().selectProjectUpdateList(conn, pi);
		
		close(conn);
		
		return list;
	}

	/** 심사 대상 프로젝트 상세조회하는 메소드
	 *  @param pno : 조회하고자 하는 프로젝트 번호
	 *  @return p : 조회된 프로젝트
	 */
	public Project projectSearchNo(int searchNo) {
		Connection conn = getConnection();
		
		Project p = new ProjectDao().projectSearchNo(conn, searchNo);
		
		close(conn);
		
		return p;
	}

	/** 프로젝트의 승인/반려를 처리하는 메소드
	 *  @param projectNo : 승인/반려 하고자 하는 프로젝트의 no
	 *  @param projectStatus : 해당 프로젝트의 승인/반려 상태값
	 *  @param projectReason : 승인/반려 알림 내용
	 *  @param projectPrice : 해당 프로젝트의 목표 금액
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int updateProjectBanAllow(int projectNo, String projectStatus, String projectReason, int projectPrice) {
		Connection conn = getConnection();
		
		int projectSeller = Integer.parseInt(new ProjectDao().projectSearchNo(conn, projectNo).getProjectSeller());
		
		int result1 = new ProjectDao().updateProjectBanAllow(conn, projectNo, projectStatus);
		int result2 = 1;
		int result3 = 1;
		if(projectStatus.equals("W")){
			result2 = new ProjectDao().insertProjectSellerList(conn, projectSeller, projectNo);
			result3 = new ProjectDao().insertProjectOption(conn, projectNo, projectPrice);
		}
		int result4 = new ProjectDao().insertProjectBanAllowNotice(conn, projectSeller, projectReason, projectNo);
	
		if(result1 > 0 && result2 > 0 && result3 > 0 && result4 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
	
		return result1 * result2 * result3 * result4;
	}
	
	/** 전체 심사중인 프로젝트 숫자 조회
	 * @param userNo : 조회하고자 하는 회원의 no
	 *  @return listCount : 해당 회원의 프로젝트 숫자
	 */
	public int selectTestingProjectListCount(int userNo) {
		Connection conn = getConnection();
		
		int listCount = new ProjectDao().selectTestingProjectListCount(conn, userNo);
		
		close(conn);
		
		return listCount;
	}
	
	/** 전체 진행중인 프로젝트 숫자 조회
	 *  @param userNo : 조회하고자 하는 회원의 no
	 *  @return listCount : 해당 회원의 프로젝트 숫자
	 */
	public int selectOngoingProjectListCount(int userNo) {
		Connection conn = getConnection();
		
		int listCount = new ProjectDao().selectOngoingProjectListCount(conn, userNo);
		
		close(conn);
		
		return listCount;
	}
	
	/** 전체 반려된 프로젝트 숫자 조회
	 *  @param userNo : 조회하고자 하는 회원의 no
	 *  @return listCount : 해당 회원의 프로젝트 숫자
	 */
	public int selectBanProjectListCount(int userNo) {
		Connection conn = getConnection();
		
		int listCount = new ProjectDao().selectBanProjectListCount(conn, userNo);
		
		close(conn);
		
		return listCount;
	}

	/** 채팅 삽입을 처리해주는 메소드
	 *  @param c : 채팅 객체 c
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertProjectChat(Chat c) {
		Connection conn = getConnection();
		
		int result = new ProjectDao().insertProjectChat(conn, c);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	/** 프로젝트의 채팅 리스트를 조회해주는 메소드
	 *  @param projectNo : 조회하고자 하는 프로젝트 no
	 *  @return list : 채팅 리스트
	 */
	public ArrayList<Chat> selectChatList(int projectNo){
		Connection conn = getConnection();
		
		ArrayList<Chat> list = new ProjectDao().selectChatList(conn, projectNo);
		
		close(conn);
		
		return list;
	}
	
	/** 프로젝트의 옵션 정보와 결제 정보가 일치하는지 검사해주는 메소드
	 *  @param pno : 조회하고자 하는 프로젝트 no
	 *  @param amount : 결제 금액
	 *  @return result : 조회 결과 (1 = 일치 / 0 = 불일치) 
	 */
	public int selectProjectOption(int pno, int amount) {
		Connection conn = getConnection();
		
		int result = new ProjectDao().selectProjectOption(conn, pno, amount);
		
		close(conn);
		
		return result;
	}

	/** 프로젝트 후원자 정보를 추가해주는 메소드
	 *  @param userNo : 추가하고자 하는 회원 번호
	 *  @param pno : 추가하고자 하는 프로젝트 번호
	 *  @param amount : 추가하고자 하는 후원 금액
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertProjectBuyer(int userNo, int pno, int amount) {
		Connection conn = getConnection();
		
		int result = new ProjectDao().insertProjectBuyer(conn, userNo, pno, amount);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	/** 프로젝트 창작자 정보를 추가해주는 메소드
	 *  @param sno : 추가하고자 하는 회원 번호
	 *  @param pno : 추가하고자 하는 프로젝트 번호
	 *  @param amount : 추가하고자 하는 실시간 모금액
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int updateProjectSeller(int sno, int pno, int amount) {
		Connection conn = getConnection();
		
		int resultO = new ProjectDao().selectProjectSeller(conn, sno, pno);
		
		int result = 0;
		
		if(resultO == 0) {
			result = new ProjectDao().insertProjectSeller(conn, sno, pno, amount);
		}else {
			result = new ProjectDao().updateProjectSeller(conn, sno, pno, amount);
		}
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}

	/** 주문 및 결제 정보를 추가해주는 메소드
	 *  @param o : 주문 정보
	 *  @param p : 결제 정보
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패) 
	 */
	public int insertProjectOrderPayment(Order o, Payment p) {
		Connection conn = getConnection();
		
		int result1 = new ProjectDao().insertProjectPayment(conn, o, p);
		int result2 = new ProjectDao().insertProjectOrder(conn, o);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result1 * result2;
	}
	
	/** 프로젝트 검색해주는 메소드 
	 *  @param keyword : 검색하고자 하는 키워드
	 *  @return list : 검색된 프로젝트
	 */
	public ArrayList<Project> searchPageList(String keyword) {
		Connection conn = getConnection();
		
		ArrayList<Project> list = new ProjectDao().searchPageList(conn, keyword);
		
		close(conn);
		
		return list;
	}

	/** 프로젝트의 공유 횟수를 조회해주는 메소드
	 *  @param projectNo : 조회하고자 하는 프로젝트 번호
	 *  @return result : 공유 횟수 조회 결과
	 */
	public int selectProjectShareCount(int projectNo) {
		Connection conn = getConnection();
		
		int result = new ProjectDao().selectProjectShareCount(conn, projectNo);
		
		close(conn);
		
		return result;
	}

	/** 프로젝트의 공유 횟수를 증가해주는 메소드
	 *  @param projectNo : 증가하고자 하는 프로젝트 번호
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int updateProjectShareCount(int projectNo) {
		Connection conn = getConnection();
		
		int result = 0;
		
		int nowCnt = new ProjectDao().selectProjectShareCount(conn, projectNo);
		if(nowCnt == 0) {
			result = new ProjectDao().insertProjectShareCount(conn, projectNo);
		}else {
			result = new ProjectDao().updateProjectShareCount(conn, projectNo);
		}
		
		close(conn);
		
		return result;
	}
	
	/** 프로젝트의 박수 횟수를 조회해주는 메소드
	 *  @param projectNo : 조회하고자 하는 프로젝트 번호
	 *  @return result : 박수 횟수 조회 결과
	 */
	public int selectProjectClapCount(int projectNo) {
		Connection conn = getConnection();
		
		int result = new ProjectDao().selectProjectClapCount(conn, projectNo);
		
		close(conn);
		
		return result;
	}

	/** 프로젝트의 박수 횟수를 증가해주는 메소드
	 *  @param projectNo : 증가하고자 하는 프로젝트 번호
	 *  @return result : 처리 결과 (1 = 성공 / 0 = 실패)
	 */
	public int updateProjectClapCount(int projectNo) {
		Connection conn = getConnection();
		
		int result = 0;
		
		int nowCnt = new ProjectDao().selectProjectClapCount(conn, projectNo);
		if(nowCnt == 0) {
			result = new ProjectDao().insertProjectClapCount(conn, projectNo);
		}else {
			result = new ProjectDao().updateProjectClapCount(conn, projectNo);
		}
		
		close(conn);
		
		return result;
	}

}
