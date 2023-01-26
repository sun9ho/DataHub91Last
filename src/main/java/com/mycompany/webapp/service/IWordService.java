package com.mycompany.webapp.service;

import java.util.List;
import java.util.Map;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.WordVO;

public interface IWordService {
	
	
	public List<WordVO> selectByPage(Pager pager);
	
	public int count();
	
	/*WordVO selectWord(int wordNumber);
	// 검색 단어만 출력(조회)
*/	List<WordVO> getWordList();
	// 모든 단어 목록 출력
	WordVO getWordInfo(String wordNm);
	// 검색 단어 상세정보 조회
	void insertWord(WordVO wordVo);
	// 단어 등록
	void updateWord(WordVO wordVo);
	// 단어 수정
	void deleteWord(WordVO wordVo);
	
	WordVO getDetailwordNo(int wordNm);
	
	// 단어 삭제
	List<Map<String, Object>> searchWord(String searchvalue);
}
