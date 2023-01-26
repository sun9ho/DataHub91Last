package com.mycompany.webapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.WordVO;

@Mapper
public interface IWordRepository {
	
	//페이징 처리 wordList
	public List<WordVO> selectByPage(Pager pager);
	
	//총 행수를 가져오는 메서드
	public int count();
	
/*	WordVO selectWord(int wordNumber);
	// 검색 단어만 출력(조회)*/	
	List<WordVO> getWordList();
	// 모든 단어 목록 출력
	WordVO getWordInfo(String wordNm);
	// 검색 단어 상세정보 조회
	void insertWord(WordVO wordVo);
	// 단어 등록
	void updateWord(WordVO wordVo);
	// 단어 수정
	void deleteWord(WordVO wordVo);
	// 단어 삭제
	
	WordVO getDetailwordNo(@Param("wordNo") int wordNo);
	
	//상세보기
	List<Map<String, Object>> searchWord(@Param("searchvalue") String searchvalue);
}
