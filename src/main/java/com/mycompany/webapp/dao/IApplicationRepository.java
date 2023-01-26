package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.ApplicationVO;
import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.dto.WordVO;


public interface IApplicationRepository {
//

	public void insertWord(@Param("wordVO")WordVO wordVO);
	public void insertDomain(@Param("domainVO")DomainVO domainVO);
	public void insertTerm(@Param("termVO")TermVO termVO);
	
	public String getOracleDataTypeChar();
	public String getOracleDataTypeVarChar2();
	public String getOracleDataTypeNumber();
	public String getOracleDataTypeDate();
	
	public int getMaxWordNo();
	public int getMaxDomainNo();
	public int getMaxTermNo();

	void insertTermApplication(ApplicationVO applicationVO);
	void insertDomainApplication(ApplicationVO applicationVO);
	
	void insertWordApplication1(ApplicationVO applicationVO);	
	void insertWordApplication2(ApplicationVO applicationVO);	
	void insertWordApplication3(ApplicationVO applicationVO);	
	void insertWordApplication4(ApplicationVO applicationVO);	
	void insertWordApplication5(ApplicationVO applicationVO);	
	void insertWordApplication6(ApplicationVO applicationVO);	
	void insertWordApplication7(ApplicationVO applicationVO);	
	void insertWordApplication8(ApplicationVO applicationVO);	
	void insertWordApplication9(ApplicationVO applicationVO);	
		
	public String getDomainEngAbbg(@Param("wordName") String wordName);
	
	
	public String wordSearchCheck(@Param("wordName") String wordName);
	
	public List<String> domainSearchCheck(@Param("domainName") String domainName);
	
	public List<String> termSearchCheck(@Param("termName") String termName);
	
	List<String> getCurrentDomain(@Param("wordName") String wordName);
	List<WordVO> getWordList();
	
	
}