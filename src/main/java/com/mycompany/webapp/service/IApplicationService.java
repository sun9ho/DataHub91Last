package com.mycompany.webapp.service;
//
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.ApplicationVO;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.dto.WordVO;
import com.mycompany.webapp.dto.DomainVO;

public interface IApplicationService {
	
	
	public void insertWord(WordVO word);
	public void insertDomain(DomainVO word);
	public void insertTerm(TermVO word);
	//
	public void submitAnApplication(ApplicationVO applicationVO);
	
	public String getOracleDataTypeChar();
	public String getOracleDataTypeVarChar2();
	public String getOracleDataTypeNumber();
	public String getOracleDataTypeDate();
	
	public int getMaxWordNo();
	public int getMaxDomainNo();
	public int getMaxTermNo();
	
	//검색창에 입력한 단어가 있는지 확인해준다 이 값으로 신청서에서 OX 표시해줌
	public String wordSearchCheck(String wordName);
	
	//검색창에 입력한 도메인이 있는지 확인해준다 이 값으로 신청서에서 OX 표시해줌
	public List<String> domainSearchCheck(String domainName);
	
	//검색창에 입력한 용어가 있는지 확인해준다 이 값으로 신청서에서 OX 표시해줌
	public List<String> termSearchCheck(String termName);
	
	//매개변수로 넘겨준 단어명과 도메인명이 일치하는 도메인 객체의 리스트를 반환해준다.
	//왜 리스트를 반환해줄까? 그것을 같은 도메인명이어도 데이터타입이 다른 게 많이 있는 경우가 있어서 그렇다
	public List<String> getCurrentDomain(String wordName);
	
	public String getDomainEngAbbg(String wordName);
	
	//단어 리스트 출력
	List<WordVO> getWordList();
	
}
