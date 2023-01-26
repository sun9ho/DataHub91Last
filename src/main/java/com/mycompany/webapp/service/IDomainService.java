package com.mycompany.webapp.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.WordVO;


public interface IDomainService {
	
	//페이징 처리 도메인리스트
	public List<DomainVO> selectByPage(Pager pager);
	
	//총 행수를 가져오는 메소드
	public int count();
	
		//Domain 전체 조회
		List<DomainVO> selectDomain();	
		//특정 Domain 조회
		DomainVO selectDomainDetail(String domainNm);	
		//도메인 입력
		void insertDomain(DomainVO domain);	
		//도메인 수정 
		void updateDomain(DomainVO domain);	
		//도메인 삭제
		void deleteDomain(DomainVO domain);	 	
		
		DomainVO getDetailDomainNo(int domainNo);
		
		//도메인 리스트 불러오기
		List<Map<String, Object>> searchDomain(String searchvalue);
		
		//엑셀 파일 다운로드
		List<DomainVO> selectDomainList();
}
