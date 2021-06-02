package com.petnolja.petsitter.model.service;

import static com.petnolja.common.JDBCTemplate.close;
import static com.petnolja.common.JDBCTemplate.commit;
import static com.petnolja.common.JDBCTemplate.getConnection;
import static com.petnolja.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.petnolja.common.model.vo.PageInfo;
import com.petnolja.petsitter.model.dao.PetsitterDao;
import com.petnolja.petsitter.model.vo.Petsitter;

public class PetsitterService {

	// 기존 펫시터 리스트 카운트
	public int selectOldListCount() {
		
		Connection conn = getConnection();
		int listCount = new PetsitterDao().selectOldListCount(conn);
		
		close(conn);
		return listCount;
		
	}
	
	// 새로운 펫시터 리스트 카운트
	public int selectNewListCount() {
		
		Connection conn = getConnection();
		int listCount = new PetsitterDao().selectNewListCount(conn);
		
		close(conn);
		return listCount;
		
	}
	
	// 기존 펫시터 리스트
	public ArrayList<Petsitter> selectOldPetsitterList(PageInfo pi){
		
		Connection conn = getConnection();
		ArrayList<Petsitter> list = new PetsitterDao().selectOldPetsitterList(conn, pi);
		
		close(conn);
		return list;
		
	}
	
	// 새로운 펫시터 리스트
	public ArrayList<Petsitter> selectNewPetsitterList(PageInfo pi){
		
		Connection conn = getConnection();
		ArrayList<Petsitter> list = new PetsitterDao().selectNewPetsitterList(conn, pi);
		
		close(conn);
		return list;
	}
	
	// 지원서 상세내용
	public Petsitter selectNewPetsitter(int sitterNo) {
		Connection conn = getConnection();
		Petsitter p = new PetsitterDao().selectNewPetsitter(conn, sitterNo);
		close(conn);
		return p;		
	}
	
	
	//기존 펫시터 삭제
	public int blockSitter(String[] list) {
		Connection conn = getConnection();
		int result = new PetsitterDao().blockSitter(conn, list);

		if (result == list.length) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
	// 기존 펫시터 정보 업데이트
	public int updateOldSitter(int sitterNo, String updateCol, String updateVal) {
		Connection conn = getConnection();

		int result = new PetsitterDao().updateOldSitter(conn, sitterNo, updateCol, updateVal);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
	public int sitterAccept(int sitterNo) {
		
		Connection conn = getConnection();

		int result = new PetsitterDao().sitterAccept(conn, sitterNo);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public int sitterDeny(int sitterNo) {
		
		Connection conn = getConnection();

		int result = new PetsitterDao().sitterDeny(conn, sitterNo);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
}
