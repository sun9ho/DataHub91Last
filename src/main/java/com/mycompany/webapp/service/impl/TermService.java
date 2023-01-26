package com.mycompany.webapp.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.ITermRepository;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.dto.WordVO;
import com.mycompany.webapp.service.ITermService;



@Service
public class TermService implements ITermService {
	
	@Autowired
	ITermRepository termRepository;
	
	@Override
	public int checkTerm(String csTermName) {
		return termRepository.checkTerm(csTermName);
	}

	@Override
	public int checkWord(String wordName) {
		return termRepository.checkWord(wordName);
	}

	@Override
	public int checkDomain(String csDomainCategory) {
		return termRepository.checkDomain(csDomainCategory);
	}

	@Override
	public String getWordEngAbbreviation(String wordName) {
		return termRepository.getWordEngAbbreviation(wordName);
	}

	@Override
	public String getDomainTypeLength(String csDomainCategory) {
		return termRepository.getDomainTypeLength(csDomainCategory);
	}

	@Override
	public int getCountTerm() {
		return termRepository.getCountTerm();
	}

	@Override
	public TermVO termCreate(TermVO term) {
		return null;
	}

	@Override
	public TermVO getTermDetail(String termNm) {
		return termRepository.getTermDetail(termNm);
	}

	@Override
	public List<Map<String, Object>> searchTerm(String searchvalue) {
		return termRepository.searchTerm(searchvalue);
	}

	@Override
	public List<TermVO> selectByPage(Pager pager) {
		return termRepository.selectByPage(pager);
	}

	@Override
	public int count() {
		return termRepository.count();
	}

	@Override
	public List<TermVO> selectTermList() {
		return termRepository.selectTermList();
	}

	@Override
	public void updateTerm(TermVO term) {
		termRepository.updateTerm(term);
	}

	@Override
	public void deleteTerm(TermVO term) {
		termRepository.deleteTerm(term);
	}

	@Override
	public TermVO termDetailByTermNo(int termNo) {
		return termRepository.termDetailByTermNo(termNo);
	}

	
}
