package com.mycompany.webapp.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.dto.WordVO;

public interface ITermRepository {
	
	//페이징 처리 termList
	public List<TermVO> selectByPage(Pager pager);
	
	//총 행수를 가져오는 메서드
	public int count();
	
	//term 용어가 있는지 확인하는 메서드(용어 카운트 -> 0이면 무, 1이면 유)
	public int checkTerm(String csTermName);
	
	//word 이름이 있는지 확인하는 메서드(단어 카운트 -> 0이면 무, 1이면 유)
	public int checkWord(String csWordName);
	
	//domain이 있는지 확인하는 메서드(도메인 카운트 -> 0이면 무, 1이면 유)
	public int checkDomain(String csDomainCategory);
	
	//전달받은 word의 약어를 가져오는 메서드
	public String getWordEngAbbreviation(String csWordName);
	
	//전달받은 word의 데이터 타입 결정하는 메서드
	public String getDomainTypeLength(String csDomainCategory);	
	
	//term 테이블의 총 데이터의 개수 찾는 메서드
	public int getCountTerm();
	
	//도메인 수정 
	void updateTerm(TermVO term);	
	
	//도메인 삭제
	void deleteTerm(TermVO term);	  
	
	TermVO termDetailByTermNo(@Param("termNo") int termNo);
	
	//term 용어가 있다면 상세정보를 보여준다. 
	TermVO getTermDetail(@Param("termNm") String termNm);
	
	//상세보기
	List<Map<String, Object>> searchTerm(@Param("searchvalue") String searchvalue);
	
	//엑셀 파일 다운로드
	List<TermVO> selectTermList();
}
