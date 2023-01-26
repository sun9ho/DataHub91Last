package com.mycompany.webapp.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.webapp.dao.IWordRepository;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.WordVO;
import com.mycompany.webapp.service.IWordService;


@Service
public class WordService implements IWordService {
	
	@Autowired
	IWordRepository wordRepository;

/*	@Override
	public WordVO selectWord(int wordNumber) {
		return wordRepository.selectWord(wordNumber);
	}
*/
	@Override
	public List<WordVO> getWordList() {
		return wordRepository.getWordList();
	}

	@Override
	public void insertWord(WordVO wordVo) {
		wordRepository.insertWord(wordVo);

	}

	@Override
	public void updateWord(WordVO wordVo) {
		
		wordRepository.updateWord(wordVo);

	}

	@Override
	public WordVO getWordInfo(String wordNm) {
		return wordRepository.getWordInfo(wordNm);
	}

	@Override
	@Transactional
	public void deleteWord(WordVO wordVo) {
		wordRepository.deleteWord(wordVo);
	}

	@Override
	public List<Map<String, Object>> searchWord(String searchvalue) {
		return wordRepository.searchWord(searchvalue);
	}

	@Override
	public List<WordVO> selectByPage(Pager pager) {
		return wordRepository.selectByPage(pager);
	}

	@Override
	public int count() {
		return wordRepository.count();
	}

	@Override
	public WordVO getDetailwordNo(int wordNm) {
		return wordRepository.getDetailwordNo(wordNm);
	}

	
}
