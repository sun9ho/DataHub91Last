package com.mycompany.webapp.service.impl;

import java.util.List;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.webapp.dao.IApplicationRepository;
import com.mycompany.webapp.dto.ApplicationVO;
import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.dto.WordVO;
import com.mycompany.webapp.service.IApplicationService;

@Service
public class applicationService implements IApplicationService {
	static final Logger logger = LoggerFactory.getLogger(applicationService.class);
	
	@Autowired
	@Qualifier("IApplicationRepository")
	IApplicationRepository applicationRepository;
	
	@Override
	public void insertWord(WordVO wordVO) {
		// TODO Auto-generated method stub
		wordVO.setWordNo(applicationRepository.getMaxWordNo()+1);
		applicationRepository.insertWord(wordVO);
	}
	
	@Override
	public void insertDomain(DomainVO domainVO) {
		// TODO Auto-generated method stub
		domainVO.setDomainNo(applicationRepository.getMaxDomainNo()+1);
		applicationRepository.insertDomain(domainVO);
	}
	
	@Override
	public void insertTerm(TermVO termVO) {
		// TODO Auto-generated method stub
		applicationRepository.insertTerm(termVO);
	}

	@Transactional
	@Override
	public void submitAnApplication(ApplicationVO applicationVO) {
		// TODO Auto-generated method stub
		
		int wordApplicationNum=0;
		
		logger.info("용어 신청서를 받음");
		if(!((applicationVO.getTermNm().equals(""))||(applicationVO.getTermNm()==null)||(applicationVO.getTermNm().isEmpty())))
		{//용어 신청서를 받았고
			logger.info("용어 신청서를 받음");
			applicationVO.setTermNo(applicationRepository.getMaxTermNo()+1);
			logger.info("applicationVO.toString() "+applicationVO.toString());
			applicationRepository.insertTermApplication(applicationVO);
			
			
			//도메인 신청서를 받은 경우
			if(!((applicationVO.getDomainNm().equals(""))||(applicationVO.getDomainNm()==null)||(applicationVO.getDomainNm().isEmpty())))
			{
				logger.info("도메인 신청서를 받음");
				applicationVO.setDomainNo(applicationRepository.getMaxDomainNo()+1);
				applicationRepository.insertDomainApplication(applicationVO);
			
				//9번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm9().equals(""))||(applicationVO.getWordNm9()==null)||(applicationVO.getWordNm9().isEmpty())))
				{
					logger.info("9번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo9(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication9(applicationVO);
				}
				//8번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm8().equals(""))||(applicationVO.getWordNm8()==null)||(applicationVO.getWordNm8().isEmpty())))
				{
					logger.info("8번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo8(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication8(applicationVO);
				}
				//7번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm7().equals(""))||(applicationVO.getWordNm7()==null)||(applicationVO.getWordNm7().isEmpty())))
				{
					logger.info("7번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo7(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication7(applicationVO);
				}
				//6번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm6().equals(""))||(applicationVO.getWordNm6()==null)||(applicationVO.getWordNm6().isEmpty())))
				{
					logger.info("6번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo6(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication6(applicationVO);
				}
				//5번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm5().equals(""))||(applicationVO.getWordNm5()==null)||(applicationVO.getWordNm5().isEmpty())))
				{
					logger.info("5번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo5(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication5(applicationVO);
				}
				//4번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm4().equals(""))||(applicationVO.getWordNm4()==null)||(applicationVO.getWordNm4().isEmpty())))
				{
					logger.info("4번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo4(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication4(applicationVO);
				}
				//3번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm3().equals(""))||(applicationVO.getWordNm3()==null)||(applicationVO.getWordNm3().isEmpty())))
				{
					logger.info("3번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo3(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication3(applicationVO);
				}
				//2번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm2().equals(""))||(applicationVO.getWordNm2()==null)||(applicationVO.getWordNm2().isEmpty())))
				{
					logger.info("2번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo2(applicationRepository.getMaxWordNo()+wordApplicationNum);
					logger.info("applicationVO.toString() "+applicationVO.toString());
					applicationRepository.insertWordApplication2(applicationVO);
				}
				//1번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm1().equals(""))||(applicationVO.getWordNm1()==null)||(applicationVO.getWordNm1().isEmpty())))
				{
					logger.info("1번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo1(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication1(applicationVO);
				}
				
				//단어 신청서를 받지 않은 경우
			}
			
			//도메인 신청서를 받지 않은 경우
			else if(((applicationVO.getDomainNm().equals(""))||(applicationVO.getDomainNm()==null)||(applicationVO.getDomainNm().isEmpty())))
			{
				logger.info("도메인 신청서를 받지 않은 경우");
				
				//단어 신청서를 받은 경우
				//9번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm9().equals(""))||(applicationVO.getWordNm9()==null)||(applicationVO.getWordNm9().isEmpty())))
				{
					logger.info("9번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo9(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication9(applicationVO);	
				}
				//8번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm8().equals(""))||(applicationVO.getWordNm8()==null)||(applicationVO.getWordNm8().isEmpty())))
				{
					logger.info("8번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo8(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication8(applicationVO);
		
				}
				//7번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm7().equals(""))||(applicationVO.getWordNm7()==null)||(applicationVO.getWordNm7().isEmpty())))
				{
					logger.info("7번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo7(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication7(applicationVO);
				}
				//6번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm6().equals(""))||(applicationVO.getWordNm6()==null)||(applicationVO.getWordNm6().isEmpty())))
				{
					logger.info("6번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo6(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication6(applicationVO);
				
				}
				//5번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm5().equals(""))||(applicationVO.getWordNm5()==null)||(applicationVO.getWordNm5().isEmpty())))
				{
					logger.info("5번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo5(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication5(applicationVO);
					
				}
				//4번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm4().equals(""))||(applicationVO.getWordNm4()==null)||(applicationVO.getWordNm4().isEmpty())))
				{
					logger.info("4번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo4(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication4(applicationVO);
				}
				//3번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm3().equals(""))||(applicationVO.getWordNm3()==null)||(applicationVO.getWordNm3().isEmpty())))
				{
					logger.info("3번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo3(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication3(applicationVO);
				}
				//2번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm2().equals(""))||(applicationVO.getWordNm2()==null)||(applicationVO.getWordNm2().isEmpty())))
				{
					logger.info("2번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo2(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication2(applicationVO);
				}
				//1번째 단어 신청서를 받은 경우
				if(!((applicationVO.getWordNm1().equals(""))||(applicationVO.getWordNm1()==null)||(applicationVO.getWordNm1().isEmpty())))
				{
					logger.info("1번째 단어 신청서 진입");
					wordApplicationNum++;
					applicationVO.setWordNo1(applicationRepository.getMaxWordNo()+wordApplicationNum);
					applicationRepository.insertWordApplication1(applicationVO);
				}
				
				//단어 신청서를 받지 않은 경우
			}
		}
	}

	@Override
	public int getMaxWordNo() {
		// TODO Auto-generated method stub
		return applicationRepository.getMaxWordNo();
	}

	@Override
	public int getMaxDomainNo() {
		// TODO Auto-generated method stub
		return applicationRepository.getMaxDomainNo();
	}

	@Override
	public int getMaxTermNo() {
		// TODO Auto-generated method stub
		return applicationRepository.getMaxTermNo();
	}

	@Override
	public String getDomainEngAbbg(String wordName) {
		// TODO Auto-generated method stub
		return applicationRepository.getDomainEngAbbg(wordName);
	}

	@Override
	public String getOracleDataTypeChar() {
		// TODO Auto-generated method stub
		return applicationRepository.getOracleDataTypeChar();
	}

	@Override
	public String getOracleDataTypeVarChar2() {
		// TODO Auto-generated method stub
		return applicationRepository.getOracleDataTypeVarChar2();
	}

	@Override
	public String getOracleDataTypeNumber() {
		// TODO Auto-generated method stub
		return applicationRepository.getOracleDataTypeNumber();
	}

	@Override
	public String getOracleDataTypeDate() {
		// TODO Auto-generated method stub
		return applicationRepository.getOracleDataTypeDate();
	}

	@Override
	public String wordSearchCheck(String wordName) {
		// TODO Auto-generated method stub
		logger.info("서비스 진입 wordName "+wordName);
		String result = applicationRepository.wordSearchCheck(wordName);
		System.out.println("result "+result);
		return result;
	}
	
	@Override
	public List<String> domainSearchCheck(String domainName) {
		// TODO Auto-generated method stub
		List<String> result = applicationRepository.domainSearchCheck(domainName);
		return result;
	}
	
	@Override
	public List<String> termSearchCheck(String termName) {
		// TODO Auto-generated method stub
		List<String> result = applicationRepository.termSearchCheck(termName);
		return result;
	}


	@Override
	public List<String> getCurrentDomain(String wordName) {
		// TODO Auto-generated method stub
		String wordName1 = "^";	
		logger.info("넘어온 단어 wordName "+wordName);
		wordName = wordName.concat("[a-zA-Z0-9]");
		logger.info("wordName "+wordName);
		wordName1 = wordName1.concat(wordName);
		logger.info("넘길 단어 wordName1 "+wordName1);
		return applicationRepository.getCurrentDomain(wordName1);
	}
	
	

	@Override
	public List<WordVO> getWordList() {
		// TODO Auto-generated method stub
		logger.info("서비스 진입");
		return applicationRepository.getWordList();
	}

}
