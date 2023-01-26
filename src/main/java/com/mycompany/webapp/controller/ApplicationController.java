package com.mycompany.webapp.controller;

import java.util.List;
import java.util.Locale;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.webapp.dto.ApplicationVO;
import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.MemberVO;
import com.mycompany.webapp.dto.WordVO;
import com.mycompany.webapp.service.IApplicationService;
import com.mycompany.webapp.service.IDomainService;
import com.mycompany.webapp.service.IMemberService;
import com.mycompany.webapp.service.IWordService;


@Controller
public class ApplicationController {
	static final Logger logger = LoggerFactory.getLogger(ApplicationController.class);
	//
	@Autowired
	IApplicationService applicationService;
	
	@Autowired
	IMemberService memberService;
	
	@Autowired
	IWordService wordService;
	
	@Autowired
	IDomainService domainService;
	
	@RequestMapping(value="/popup/wordApplication1", method=RequestMethod.GET)
	   public String popupWordApplication1(Model model) {
		model.addAttribute("currentTab", "term");	
		  
	      return "application/popup/wordApplication1";
	   }
	
	@RequestMapping(value="/popup/word/insert", method=RequestMethod.POST)
	  @ResponseBody public String popupWordInsert(@ModelAttribute("applicationVO")ApplicationVO applicationVO, BindingResult bindingResult, HttpSession session, Model model) {
		System.out.println("컨트롤러 진입");
		System.out.println("applicationVO"+ applicationVO);

	      return "1";
	   }
	
	 @RequestMapping(value="apply/parent", method=RequestMethod.GET)
	   public String parentTest(Model model) {
		  model.addAttribute("currentTab", "word");

	      return "application/parent";
	   }
	 
	 @RequestMapping(value="apply/child", method=RequestMethod.GET)
	   public String childTest(Model model) {
		  model.addAttribute("currentTab", "word");

	      return "application/child";
	   }
	
	 @RequestMapping(value="/word/insert", method=RequestMethod.GET)
	   public String insertWord1(Model model) {
		  model.addAttribute("currentTab", "word");

	      return "application/application0118";
	   }

	 @RequestMapping(value="word/insert", method=RequestMethod.POST)
	   public String insertWord2(WordVO wordVO, HttpSession session, Model model) {
		  logger.info("wordVO "+wordVO);
		  String mbrId = (String)session.getAttribute("mbrId");
		  logger.info("mbrId "+mbrId);
		  wordVO.setRegId(mbrId);
		  wordVO.setMdfcnId(mbrId);
		  logger.info("wordVO "+wordVO);
		  
		  
		  
		  applicationService.insertWord(wordVO);
	      return "redirect:/apply";      
	   }
	
	//Domain 입력 (GET)
	 @RequestMapping(value="/domain/insert", method=RequestMethod.GET)
		public String insertDomain1(HttpSession session, Model model) {
		 
		 	model.addAttribute("currentTab", "domain");				
			return "application/application0118";
		}	
			
		
	//Domain 입력 (POST)
	 @RequestMapping(value="/domain/insert", method=RequestMethod.POST)
		public String insertDomain2(DomainVO domainVO, HttpSession session, Model model) {	
		  	logger.info("domainVO "+domainVO);
		  	String mbrId = (String)session.getAttribute("mbrId");
		  	logger.info("mbrId "+mbrId);
		  	domainVO.setRegId(mbrId);
		  	domainVO.setMdfcnId(mbrId);
			applicationService.insertDomain(domainVO);
			return "redirect:/apply";
		}
	 
	 
	//Domain 입력 (GET)
		 @RequestMapping(value="/term/insert", method=RequestMethod.GET)
			public String insertTerm1(HttpSession session, Model model) {
			 logger.info("진입 ");
			 	model.addAttribute("currentTab", "term");				
				return "application/application0118";
			}	
			
			
		//Domain 입력 (POST)
		 @RequestMapping(value="/term/insert", method=RequestMethod.POST)
			public String insertTerm2(DomainVO domainVO, HttpSession session, Model model) {	
			  	logger.info("domainVO "+domainVO);
			  	String mbrId = (String)session.getAttribute("mbrId");
			  	logger.info("mbrId "+mbrId);
			  	domainVO.setRegId(mbrId);
			  	domainVO.setMdfcnId(mbrId);
				applicationService.insertDomain(domainVO);
				return "redirect:/apply";
			}
	 
	 
	@RequestMapping(value="/tothedomainapplicationform", method=RequestMethod.GET)
	public @ResponseBody Vector<String> toTheDomainApplictionForm(@RequestParam(name="wordname", required=false) String wordName, 
	HttpSession session, Model model){
	
		logger.info("wordName: "+wordName);
		List<String> domainList = applicationService.getCurrentDomain(wordName);
		System.out.println("현재 도메인 리스트: "+domainList);
		//단어신청서의 마지막 단어와 이름이 같은 도메인들의 도메인이름(이름+데이터타입+길이 형식)을 모두 가져옵니다.
		
		//Vector<Vector<String>> domainTypeAndLength = new Vector<Vector<String>>();
		//그 도메인들의 타입 벡터 길이벡터를 담을 2차원 벡터입니다.
		
		Vector<String> dataTypeVector = new Vector<String>(); 
		//브라우저에 보내줄 공통코드 데이터타입들을 담을 1차원 벡터
		
		//Vector<String> dataLengthVector = new Vector<String>(); 
		//브라우저에 보내줄 공통코드 데이터길이들을 담을 1차원 벡터
		
		//domainTypeAndLength.add(dataTypeVector);
		//domainTypeAndLength.add(dataLengthVector);
		
		
		for(int i=0; i<domainList.size(); i++)
		{
			String domainName = domainList.get(i);
			StringBuffer engSb=new StringBuffer();
			StringBuffer numSb=new StringBuffer();
			
			if(domainName!=null && domainName.length()!=0){
				
				Pattern engPattern = Pattern.compile("[A-Za-z]");
				Pattern numPattern = Pattern.compile("[0-9]");
				
				Matcher engM = engPattern.matcher(domainName);
				Matcher numM = numPattern.matcher(domainName);
				
				while(engM.find()){
					engSb.append(engM.group());
				}
				
				while(numM.find()){
					numSb.append(numM.group());
				}
			}	
			
			System.out.println(i+"번째 도메인의 데이터타입 "+engSb.toString());
			System.out.println(i+"번째 도메인의 데이터길이 "+numSb.toString());
			
			String dataType = engSb.toString(); // 공통표준 도메인명에서 데이터타입을 분리한다
			String dataLength = numSb.toString(); // 공통표준 도메인명에서 데이터 길이를 분리한다
			
			//데이터 타입
			if(dataType.equals("C"))
			{
				dataType = applicationService.getOracleDataTypeChar();
				//dataType=공통코드 테이블에서 char를 가져오는 로직
			}
			else if(dataType.equals("V"))
			{
				dataType = applicationService.getOracleDataTypeVarChar2();
				//dataType=공통코드 테이블에서 varchar를 가져오는 로직
			}
			else if(dataType.equals("N"))
			{
				dataType = applicationService.getOracleDataTypeNumber();
				//dataType=공통코드 테이블에서Number를 가져오는 로직
			}
			else if(dataType.equals("D"))
			{
				dataType = applicationService.getOracleDataTypeDate();
				//dataType=공통코드 테이블에서Date를 가져오는 로직
			}
			dataType=dataType.concat("("+dataLength+")");
			dataType=dataType.concat(" "+domainList.get(i));
			//dataType에 길이를 합쳐줍니다
			dataTypeVector.add(dataType);
//			int dataTypeVectorFlag=0;
//			for(int dti=0; i< dataTypeVector.size(); dti++)
//			{
//				if(dataTypeVector.get(dti).equals(dataType))
//				{//벡터에 같은 데이터 타입이 하나라도 있으면
//					dataTypeVectorFlag=1;
//				}
//			}
//			if(dataTypeVectorFlag == 0)
//			{//벡터에 동일한 데이터 타입 이름이 하나도 없으면
//				dataTypeVector.add(dataType);
//			}
//			
//			//데이터길이
//			int dataLengthVectorFlag=0;
//			for(int dli=0; i< dataLengthVector.size(); dli++)
//			{
//				if(dataLengthVector.get(dli).equals(dataLength))
//				{//벡터에 같은 데이터 길이 이름이 하나라도 있으면
//					dataLengthVectorFlag=1;
//				}
//			}
//			if(dataLengthVectorFlag == 0)
//			{//벡터에 같은 데이터 타입이 하나도 없으면
//				dataLengthVector.add(dataLength);
//			}
		}
		//System.out.println(domainTypeAndLength);
		System.out.println(dataTypeVector);
		return dataTypeVector;
	}
	
	
	
	@RequestMapping(value="/tothedomainapplicationform2", method=RequestMethod.GET)
	public @ResponseBody Vector<Vector<String>> toTheDomainApplictionForm2(@RequestParam(name="wordname", required=false) String domainName, 
	HttpSession session, Model model){

		
		//단어신청서의 마지막 단어와 이름이 같은 도메인들의 도메인이름(이름+데이터타입+길이 형식)을 모두 가져옵니다.
		
		Vector<Vector<String>> domainTypeAndLength = new Vector<Vector<String>>();
		//그 도메인들의 타입 벡터 길이벡터를 담을 2차원 벡터입니다.
		
		Vector<String> dataTypeVector = new Vector<String>(); 
		//브라우저에 보내줄 공통코드 데이터타입들을 담을 1차원 벡터
		
		Vector<String> dataLengthVector = new Vector<String>(); 
		//브라우저에 보내줄 공통코드 데이터타입들을 담을 1차원 벡터
		
		domainTypeAndLength.add(dataTypeVector);
		domainTypeAndLength.add(dataLengthVector);
		
	
			StringBuffer engSb=new StringBuffer();
			StringBuffer numSb=new StringBuffer();
			
			if(domainName!=null && domainName.length()!=0){
				
				Pattern engPattern = Pattern.compile("[A-Za-z]");
				Pattern numPattern = Pattern.compile("[0-9]");
				
				Matcher engM = engPattern.matcher(domainName);
				Matcher numM = numPattern.matcher(domainName);
				
				while(engM.find()){
					engSb.append(engM.group());
				}
				
				while(numM.find()){
					numSb.append(numM.group());
				}
			}	
			
			System.out.println("도메인의 데이터타입 "+engSb.toString());
			System.out.println("도메인의 데이터길이 "+numSb.toString());
			
			String dataType = engSb.toString(); // 공통표준 도메인명에서 데이터타입을 분리한다
			String dataLength = numSb.toString(); // 공통표준 도메인명에서 데이터 길이를 분리한다
			
			//데이터 타입
			if(dataType.equals("C"))
			{
				dataType = applicationService.getOracleDataTypeChar();
				//dataType=공통코드 테이블에서 char를 가져오는 로직
			}
			else if(dataType.equals("V"))
			{
				dataType = applicationService.getOracleDataTypeVarChar2();
				//dataType=공통코드 테이블에서 varchar를 가져오는 로직
			}
			else if(dataType.equals("N"))
			{
				dataType = applicationService.getOracleDataTypeNumber();
				//dataType=공통코드 테이블에서Number를 가져오는 로직
			}
			else if(dataType.equals("D"))
			{
				dataType = applicationService.getOracleDataTypeDate();
				//dataType=공통코드 테이블에서Date를 가져오는 로직
			}
			
			dataTypeVector.add(dataType);
			dataLengthVector.add(dataLength);
			System.out.println("도메인의 dataType "+dataType);
			System.out.println("도메인의 dataLength "+dataLength);
	
		return domainTypeAndLength;
	}
	
	
	
	
	
	@RequestMapping(value="/getdomainengabbg", method=RequestMethod.GET)
	public @ResponseBody String getDomainEngAbbg(@RequestParam(name="wordname", required=false) String wordName, 
	HttpSession session, Model model){
		
		return applicationService.getDomainEngAbbg(wordName);
	}
	
	@RequestMapping(value="/wordsearchcheck", method=RequestMethod.GET)
	public @ResponseBody String wordSearchCheck(@RequestParam(name="wordname", required=false) String wordName, 
	HttpSession session, Model model){
		logger.info("wordName "+wordName);
		
		return applicationService.wordSearchCheck(wordName);
	}
	
	@RequestMapping(value="/domainsearchcheck", method=RequestMethod.GET)
	public @ResponseBody List<String> domainSearchCheck(@RequestParam(name="domainname", required=false) String domainName, 
	HttpSession session, Model model){
		logger.info("domainName "+domainName);
		
		return applicationService.domainSearchCheck(domainName);
	}
	
	@RequestMapping(value="/termsearchcheck", method=RequestMethod.GET)
	public @ResponseBody List<String> termSearchCheck(@RequestParam(name="termname", required=false) String termName, 
	HttpSession session, Model model){
		logger.info("termName "+termName);
		
		return applicationService.termSearchCheck(termName);
	}
	
	@RequestMapping(value="/word2", method=RequestMethod.GET)
	public String getwordList(Model model) {
		logger.info("컨트롤러 진입1");
		List<WordVO> wordList = applicationService.getWordList();
		System.out.println(wordList);
		model.addAttribute("wordList", wordList);
		return "word/word";
	}	
	
	@RequestMapping(value="/apply", method=RequestMethod.GET)
	public String approval(Model model) {

		return "/application/approval_list";
	}
	
	@RequestMapping(value="/applydetail", method=RequestMethod.GET)
	public String approvalDetail(Model model) {

		return "/application/approval_detail";
	}

	@RequestMapping(value = "/applyterm", method = RequestMethod.GET)
	public String applyterm(Locale locale, Model model) {

		return "/application/apply_term";
	}

	@RequestMapping(value = "/applydomain", method = RequestMethod.GET)
	public String applydomain(Locale locale, Model model) {

		return "/application/apply_domain";
	}
	
	@RequestMapping(value = "/applyword", method = RequestMethod.GET)
	public String applyword(Locale locale, Model model) {

		return "/application/applytest5";
	}
	
	@RequestMapping(value = "/applyword1", method = RequestMethod.GET)
	public String applyword1(Locale locale, Model model) {

		return "/application/applytest6";
	}
	
	
	@RequestMapping(value = "/applytest", method = RequestMethod.GET)
	public String applytest(Locale locale, Model model) {

		return "/application/applytest_form2";
	}
	
	@RequestMapping(value = "/applytest3", method = RequestMethod.GET)
	public String applytest3(Locale locale, Model model) {

		return "/application/applytest_form3";
	}
	
	@RequestMapping(value = "/applytest4", method = RequestMethod.GET)
	public String applytest4(Locale locale, Model model) {

		return "/application/applytest_form4";
	}
	
	@RequestMapping(value = "/applytest5", method = RequestMethod.GET)
	public String applytest5(Locale locale, Model model) {

		return "/application/applytest_form5";
	}
	
	@RequestMapping(value = "/applytest6", method = RequestMethod.GET)
	public String applytest6(Locale locale, Model model) {

		return "/application/applytest_form6";
	}
		
	@RequestMapping(value = "/applytest7", method = RequestMethod.GET)
	public String applytest7(@ModelAttribute("applicationVO")ApplicationVO applicationVO,BindingResult bindingResult,Locale locale, Model model) {

		return "/application/applytest_form7";
	}
	
	@RequestMapping(value = "/applytest8", method = RequestMethod.GET)
	public String applytest8(Locale locale, Model model) {

		return "/application/applytest_form8";
	}
	
	@RequestMapping(value = "/applytest9", method = RequestMethod.GET)
	public String applytest9(Locale locale, Model model) {

		return "/application/applytest_form9";
	}
	
	@RequestMapping(value = "/applytest10", method = RequestMethod.GET)
	public String applytest10(Locale locale, Model model) {

		return "/application/apply_word";
	}
	
	@RequestMapping(value = "/submitanapplication", method = RequestMethod.POST)
	public String submitAnApplication(@ModelAttribute("applicationVO")ApplicationVO applicationVO,BindingResult bindingResult, HttpSession session) {
		
		
		logger.info("@RequestMapping(value = \"/submitanapplication\", method = RequestMethod.POST)");
		String mbrId="";
		mbrId = (String)session.getAttribute("mbrId");
		
		logger.info("진입1");
		MemberVO member = memberService.selectMember(mbrId);
		
		if(!(mbrId.equals(""))||(mbrId==null)||(mbrId.isEmpty()))
		{//로그인 상태면
		logger.info("진입2");
			
		if(member.getMbrYn().equals("Y"))
		{//관리자 로그인 상태면
			
			if(!((applicationVO.getTermNm().equals(""))||(applicationVO.getTermNm()==null)||(applicationVO.getTermNm().isEmpty())))
			{//용어 신청서를 받았고
				logger.info("용어 신청서를 받음");
				logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
				applicationVO.setTermaprvStts("승인완료");
				applicationVO.setTermregId(mbrId);
				
				//도메인 신청서를 받은 경우
				if(!((applicationVO.getDomainNm().equals(""))||(applicationVO.getDomainNm()==null)||(applicationVO.getDomainNm().isEmpty())))
				{
					logger.info("도메인 신청서를 받음");
					logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
					applicationVO.setDomainaprvStts("승인완료");
					applicationVO.setDomainregId(mbrId);
					
					//9번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm9().equals(""))||(applicationVO.getWordNm9()==null)||(applicationVO.getWordNm9().isEmpty())))
					{
						logger.info("9번째 단어 신청서 진입");
						logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
						applicationVO.setWordappvStts9("승인완료");
						applicationVO.setWordregId9(mbrId);
					}
					else {
						applicationVO.setWordappvStts9("");
					}
					//8번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm8().equals(""))||(applicationVO.getWordNm8()==null)||(applicationVO.getWordNm8().isEmpty())))
					{
						logger.info("8번째 단어 신청서 진입");
						logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
						applicationVO.setWordappvStts8("승인완료");
						applicationVO.setWordregId8(mbrId);
					}
					else {
						applicationVO.setWordappvStts8("");
					}
					//7번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm7().equals(""))||(applicationVO.getWordNm7()==null)||(applicationVO.getWordNm7().isEmpty())))
					{
						logger.info("7번째 단어 신청서 진입");
						logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
						applicationVO.setWordappvStts7("승인완료");
						applicationVO.setWordregId7(mbrId);
					}
					else {
						applicationVO.setWordappvStts7("");
					}
					//6번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm6().equals(""))||(applicationVO.getWordNm6()==null)||(applicationVO.getWordNm6().isEmpty())))
					{
						logger.info("6번째 단어 신청서 진입");
						logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
						applicationVO.setWordappvStts6("승인완료");
						applicationVO.setWordregId6(mbrId);
					}
					else {
						applicationVO.setWordappvStts6("");
					}
					//5번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm5().equals(""))||(applicationVO.getWordNm5()==null)||(applicationVO.getWordNm5().isEmpty())))
					{
						logger.info("5번째 단어 신청서 진입");
						logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
						applicationVO.setWordappvStts5("승인완료");
						applicationVO.setWordregId5(mbrId);
					}
					else {
						applicationVO.setWordappvStts5("");
					}
					//4번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm4().equals(""))||(applicationVO.getWordNm4()==null)||(applicationVO.getWordNm4().isEmpty())))
					{
						logger.info("4번째 단어 신청서 진입");
						logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
						applicationVO.setWordappvStts4("승인완료");
						applicationVO.setWordregId4(mbrId);
					}
					else {
						applicationVO.setWordappvStts4("");
					}
					//3번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm3().equals(""))||(applicationVO.getWordNm3()==null)||(applicationVO.getWordNm3().isEmpty())))
					{
						logger.info("3번째 단어 신청서 진입");
						logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
						applicationVO.setWordappvStts3("승인완료");
						applicationVO.setWordregId3(mbrId);
					}
					else {
						applicationVO.setWordappvStts3("");
					}
					//2번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm2().equals(""))||(applicationVO.getWordNm2()==null)||(applicationVO.getWordNm2().isEmpty())))
					{
						logger.info("2번째 단어 신청서 진입");
						logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
						applicationVO.setWordappvStts2("승인완료");
						applicationVO.setWordregId2(mbrId);
					}
					else {
						applicationVO.setWordappvStts2("");
					}
					//1번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm1().equals(""))||(applicationVO.getWordNm1()==null)||(applicationVO.getWordNm1().isEmpty())))
					{
						logger.info("1번째 단어 신청서 진입");
						logger.info("관리자 로그인 상태이므로 승인완료를 세팅");
						applicationVO.setWordappvStts1("승인완료");
						applicationVO.setWordregId1(mbrId);
					}
					else {
						applicationVO.setWordappvStts1("");
					}
					//단어 신청서를 받지 않은 경우
				}
				
				//도메인 신청서를 받지 않은 경우
				else if(((applicationVO.getDomainNm().equals(""))||(applicationVO.getDomainNm()==null)||(applicationVO.getDomainNm().isEmpty())))
				{
					logger.info("도메인 신청서를 받지 않은 경우");
					applicationVO.setDomainaprvStts("승인완료");
					//단어 신청서를 받은 경우
					//9번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm9().equals(""))||(applicationVO.getWordNm9()==null)||(applicationVO.getWordNm9().isEmpty())))
					{
						logger.info("9번째 단어 신청서 진입");
						applicationVO.setWordappvStts9("승인완료");
						applicationVO.setWordregId9(mbrId);
					}
					else {
						applicationVO.setWordappvStts9("");
					}
					//8번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm8().equals(""))||(applicationVO.getWordNm8()==null)||(applicationVO.getWordNm8().isEmpty())))
					{
						logger.info("8번째 단어 신청서 진입");
						applicationVO.setWordappvStts8("승인완료");
						applicationVO.setWordregId8(mbrId);
					}
					else {
						applicationVO.setWordappvStts8("");
					}
					//7번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm7().equals(""))||(applicationVO.getWordNm7()==null)||(applicationVO.getWordNm7().isEmpty())))
					{
						logger.info("7번째 단어 신청서 진입");
						applicationVO.setWordappvStts7("승인완료");
						applicationVO.setWordregId7(mbrId);
					}
					else {
						applicationVO.setWordappvStts7("");
					}
					//6번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm6().equals(""))||(applicationVO.getWordNm6()==null)||(applicationVO.getWordNm6().isEmpty())))
					{
						logger.info("6번째 단어 신청서 진입");
						applicationVO.setWordappvStts6("승인완료");
						applicationVO.setWordregId6(mbrId);
					}
					else {
						applicationVO.setWordappvStts6("");
					}
					//5번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm5().equals(""))||(applicationVO.getWordNm5()==null)||(applicationVO.getWordNm5().isEmpty())))
					{
						logger.info("5번째 단어 신청서 진입");
						applicationVO.setWordappvStts5("승인완료");
						applicationVO.setWordregId5(mbrId);
					}
					else {
						applicationVO.setWordappvStts5("");
					}
					//4번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm4().equals(""))||(applicationVO.getWordNm4()==null)||(applicationVO.getWordNm4().isEmpty())))
					{
						logger.info("4번째 단어 신청서 진입");
						applicationVO.setWordappvStts4("승인완료");
						applicationVO.setWordregId4(mbrId);
					}
					else {
						applicationVO.setWordappvStts4("");
					}
					//3번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm3().equals(""))||(applicationVO.getWordNm3()==null)||(applicationVO.getWordNm3().isEmpty())))
					{
						logger.info("3번째 단어 신청서 진입");
						applicationVO.setWordappvStts3("승인완료");
						applicationVO.setWordregId3(mbrId);
					}
					else {
						applicationVO.setWordappvStts3("");
					}
					//2번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm2().equals(""))||(applicationVO.getWordNm2()==null)||(applicationVO.getWordNm2().isEmpty())))
					{
						logger.info("2번째 단어 신청서 진입");
						applicationVO.setWordappvStts2("승인완료");
						applicationVO.setWordregId2(mbrId);
					}
					else {
						applicationVO.setWordappvStts2("");
					}
					//1번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm1().equals(""))||(applicationVO.getWordNm1()==null)||(applicationVO.getWordNm1().isEmpty())))
					{
						logger.info("1번째 단어 신청서 진입");
						applicationVO.setWordappvStts1("승인완료");
						applicationVO.setWordregId1(mbrId);
					}
					else {
						applicationVO.setWordappvStts1("");
					}
					//단어 신청서를 받지 않은 경우
					
				}
			}
		}
		else if(member.getMbrYn().equals("N")) {
			//일반 사용자 로그인 상태이므로
			
			if(!((applicationVO.getTermNm().equals(""))||(applicationVO.getTermNm()==null)||(applicationVO.getTermNm().isEmpty())))
			{//용어 신청서를 받았고
				logger.info("용어 신청서를 받음");
				logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
				applicationVO.setTermaprvStts("승인전");
				applicationVO.setTermregId(mbrId);
				
				//도메인 신청서를 받은 경우
				if(!((applicationVO.getDomainNm().equals(""))||(applicationVO.getDomainNm()==null)||(applicationVO.getDomainNm().isEmpty())))
				{
					logger.info("도메인 신청서를 받음");
					logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
					applicationVO.setDomainaprvStts("승인전");
					applicationVO.setDomainregId(mbrId);
					
					//9번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm9().equals(""))||(applicationVO.getWordNm9()==null)||(applicationVO.getWordNm9().isEmpty())))
					{
						logger.info("9번째 단어 신청서 진입");
						logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
						applicationVO.setWordappvStts9("승인전");
						applicationVO.setWordregId9(mbrId);
					}
					else {
						applicationVO.setWordappvStts9("");
					}
					//8번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm8().equals(""))||(applicationVO.getWordNm8()==null)||(applicationVO.getWordNm8().isEmpty())))
					{
						logger.info("8번째 단어 신청서 진입");
						logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
						applicationVO.setWordappvStts8("승인전");
						applicationVO.setWordregId8(mbrId);
					}
					else {
						applicationVO.setWordappvStts8("");
					}
					//7번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm7().equals(""))||(applicationVO.getWordNm7()==null)||(applicationVO.getWordNm7().isEmpty())))
					{
						logger.info("7번째 단어 신청서 진입");
						logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
						applicationVO.setWordappvStts7("승인전");
						applicationVO.setWordregId7(mbrId);
					}
					else {
						applicationVO.setWordappvStts7("");
					}
					//6번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm6().equals(""))||(applicationVO.getWordNm6()==null)||(applicationVO.getWordNm6().isEmpty())))
					{
						logger.info("6번째 단어 신청서 진입");
						logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
						applicationVO.setWordappvStts6("승인전");
						applicationVO.setWordregId6(mbrId);
					}
					else {
						applicationVO.setWordappvStts6("");
					}
					//5번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm5().equals(""))||(applicationVO.getWordNm5()==null)||(applicationVO.getWordNm5().isEmpty())))
					{
						logger.info("5번째 단어 신청서 진입");
						logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
						applicationVO.setWordappvStts5("승인전");
						applicationVO.setWordregId5(mbrId);
					}
					else {
						applicationVO.setWordappvStts5("");
					}
					//4번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm4().equals(""))||(applicationVO.getWordNm4()==null)||(applicationVO.getWordNm4().isEmpty())))
					{
						logger.info("4번째 단어 신청서 진입");
						logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
						applicationVO.setWordappvStts4("승인전");
						applicationVO.setWordregId4(mbrId);
					}
					else {
						applicationVO.setWordappvStts4("");
					}
					//3번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm3().equals(""))||(applicationVO.getWordNm3()==null)||(applicationVO.getWordNm3().isEmpty())))
					{
						logger.info("3번째 단어 신청서 진입");
						logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
						applicationVO.setWordappvStts3("승인전");
						applicationVO.setWordregId3(mbrId);
					}
					else {
						applicationVO.setWordappvStts3("");
					}
					//2번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm2().equals(""))||(applicationVO.getWordNm2()==null)||(applicationVO.getWordNm2().isEmpty())))
					{
						logger.info("2번째 단어 신청서 진입");
						logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
						applicationVO.setWordappvStts2("승인전");
						applicationVO.setWordregId2(mbrId);
					}
					else {
						applicationVO.setWordappvStts2("");
					}
					//1번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm1().equals(""))||(applicationVO.getWordNm1()==null)||(applicationVO.getWordNm1().isEmpty())))
					{
						logger.info("1번째 단어 신청서 진입");
						logger.info("일반 사용자 로그인 상태이므로 승인전을 세팅");
						applicationVO.setWordappvStts1("승인전");
						applicationVO.setWordregId1(mbrId);
					}
					else {
						applicationVO.setWordappvStts1("");
					}
					//단어 신청서를 받지 않은 경우
				}
				
				//도메인 신청서를 받지 않은 경우
				else if(((applicationVO.getDomainNm().equals(""))||(applicationVO.getDomainNm()==null)||(applicationVO.getDomainNm().isEmpty())))
				{
					logger.info("도메인 신청서를 받지 않은 경우");
					applicationVO.setDomainaprvStts("");
					//단어 신청서를 받은 경우
					//9번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm9().equals(""))||(applicationVO.getWordNm9()==null)||(applicationVO.getWordNm9().isEmpty())))
					{
						logger.info("9번째 단어 신청서 진입");
						applicationVO.setWordappvStts9("승인전");
						applicationVO.setWordregId9(mbrId);
					}
					else {
						applicationVO.setWordappvStts9("");
					}
					//8번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm8().equals(""))||(applicationVO.getWordNm8()==null)||(applicationVO.getWordNm8().isEmpty())))
					{
						logger.info("8번째 단어 신청서 진입");
						applicationVO.setWordappvStts8("승인전");
						applicationVO.setWordregId8(mbrId);
					}
					else {
						applicationVO.setWordappvStts8("");
					}
					//7번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm7().equals(""))||(applicationVO.getWordNm7()==null)||(applicationVO.getWordNm7().isEmpty())))
					{
						logger.info("7번째 단어 신청서 진입");
						applicationVO.setWordappvStts7("승인전");
						applicationVO.setWordregId7(mbrId);
					}
					else {
						applicationVO.setWordappvStts7("");
					}
					//6번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm6().equals(""))||(applicationVO.getWordNm6()==null)||(applicationVO.getWordNm6().isEmpty())))
					{
						logger.info("6번째 단어 신청서 진입");
						applicationVO.setWordappvStts6("승인전");
						applicationVO.setWordregId6(mbrId);
					}
					else {
						applicationVO.setWordappvStts6("");
					}
					//5번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm5().equals(""))||(applicationVO.getWordNm5()==null)||(applicationVO.getWordNm5().isEmpty())))
					{
						logger.info("5번째 단어 신청서 진입");
						applicationVO.setWordappvStts5("승인전");
						applicationVO.setWordregId5(mbrId);
					}
					else {
						applicationVO.setWordappvStts5("");
					}
					//4번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm4().equals(""))||(applicationVO.getWordNm4()==null)||(applicationVO.getWordNm4().isEmpty())))
					{
						logger.info("4번째 단어 신청서 진입");
						applicationVO.setWordappvStts4("승인전");
						applicationVO.setWordregId4(mbrId);
					}
					else {
						applicationVO.setWordappvStts4("");
					}
					//3번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm3().equals(""))||(applicationVO.getWordNm3()==null)||(applicationVO.getWordNm3().isEmpty())))
					{
						logger.info("3번째 단어 신청서 진입");
						applicationVO.setWordappvStts3("승인전");
						applicationVO.setWordregId3(mbrId);
					}
					else {
						applicationVO.setWordappvStts3("");
					}
					//2번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm2().equals(""))||(applicationVO.getWordNm2()==null)||(applicationVO.getWordNm2().isEmpty())))
					{
						logger.info("2번째 단어 신청서 진입");
						applicationVO.setWordappvStts2("승인전");
						applicationVO.setWordregId2(mbrId);
					}
					else {
						applicationVO.setWordappvStts2("");
					}
					//1번째 단어 신청서를 받은 경우
					if(!((applicationVO.getWordNm1().equals(""))||(applicationVO.getWordNm1()==null)||(applicationVO.getWordNm1().isEmpty())))
					{
						logger.info("1번째 단어 신청서 진입");
						applicationVO.setWordappvStts1("승인전");
						applicationVO.setWordregId1(mbrId);
					}
					else {
						applicationVO.setWordappvStts1("");
					}
					//단어 신청서를 받지 않은 경우
				}
			}
		}
		logger.info("applicationVO "+applicationVO);
		
		applicationService.submitAnApplication(applicationVO);
		return "redirect:/";
		//승인페이지로 가게 바꿔주자
	}
		else {//로그인 상태가 아니라면
			return "redirect:/";
			//홈으로
		}
	}
	
}
