package com.mycompany.webapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.Pager;



public interface IDomainRepository {
	
	//페이징 처리 DomainList
	public List<DomainVO> selectByPage(Pager pager);
	
	//총 행수를 가져오는 메서드
	public int count();
	
	//Domain 전체 조회
	List<DomainVO> selectDomain();	
	//특정 Domain 상세조회
	DomainVO selectDomainDetail(String domainNm);	
	//도메인 입력
	void insertDomain(DomainVO domain);	
	//도메인 수정 
	void updateDomain(DomainVO domain);	
	//도메인 삭제
	void deleteDomain(DomainVO domain);	  
	
	DomainVO getDetailDomainNo(@Param("domainNo") int domainNo);
	
	//검색창에서 검색한 도메인 상세보기
	List<Map<String, Object>> searchDomain(@Param("searchvalue") String searchvalue);
	
	//엑셀 파일 다운로드
	List<DomainVO> selectDomainList();
}
