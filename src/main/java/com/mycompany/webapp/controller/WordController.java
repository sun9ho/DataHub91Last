package com.mycompany.webapp.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.core.tools.picocli.CommandLine.Help.TextTable.Cell;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.dto.WordVO;
import com.mycompany.webapp.service.IWordService;


@Controller
public class WordController {
	static final Logger logger = LoggerFactory.getLogger(WordController.class);

	@Autowired
	IWordService wordService;

	
	@RequestMapping("/word")
	public String getwordList(@RequestParam(defaultValue="1") int pageNo, Model model) {

		//페이징 대상이 되는 전체 행수 
		int totalRows = wordService.count();

		//페이징 정보가 담긴 Pager 객체 생성
		Pager pager = new Pager(7, 10, totalRows, pageNo);

		/*
		List<WordVO> wordList = wordService.getWordList();
		model.addAttribute("wordList", wordList);		
		*/
		
		//해당 페이지의 행을 가져오기
		List<WordVO> words = wordService.selectByPage(pager);

		//JSP에서 사용할 데이터를 가져오기
		model.addAttribute("pager", pager);
		model.addAttribute("words", words);

		return "word/word";
	}	
	    
	@RequestMapping(value="/word/update", method=RequestMethod.POST)
	public String updateWord(WordVO word, RedirectAttributes redirectAttributes,HttpSession session) {
		
		String mbrId = (String)session.getAttribute("mbrId");
		word.setMdfcnId(mbrId);
		wordService.updateWord(word);
		
		return "redirect:/word";
	}
	
	@RequestMapping(value="/word/updateform", method=RequestMethod.GET)
	public String updateWordform(WordVO word, HttpSession session) {		
	
		return "/word/update2";
	}
	
	@RequestMapping(value="/word/update", method=RequestMethod.GET)
	public String detailWord(@RequestParam(value="wordno") int wordno,RedirectAttributes redirectAttributes,Model model,HttpSession session) {

		WordVO word = wordService.getDetailwordNo(wordno);
		String mbrId = (String)session.getAttribute("mbrId");
		
		//session에 로그인한 아이디 값을 수정자에 넣어준다.
		word.setMdfcnId(mbrId);
		
		// 현재 날짜 구하기
        LocalDate now = LocalDate.now();
 
        // 포맷 정의
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
 
        // 포맷 적용
        String formatedNow = now.format(formatter);
 
		word.setMdfcnDt(formatedNow);
		
		model.addAttribute("word", word);
		return "word/update";
	}	
	
	@RequestMapping(value="/word/detail", method=RequestMethod.GET)
	public String updateWord(@RequestParam(value="wordno") int wordno,RedirectAttributes redirectAttributes,Model model,HttpSession session) {

		WordVO word = wordService.getDetailwordNo(wordno);
		String mbrId = (String)session.getAttribute("mbrId");
		
		//session에 로그인한 아이디 값을 수정자에 넣어준다.
		word.setMdfcnId(mbrId);
		
		// 현재 날짜 구하기
        LocalDate now = LocalDate.now();
 
        // 포맷 정의
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
 
        // 포맷 적용
        String formatedNow = now.format(formatter);
 
		word.setMdfcnDt(formatedNow);
		
		model.addAttribute("word", word);
		return "word/detail";
	}	

	@RequestMapping(value="/worddelete/wordNo={wordNo}", method=RequestMethod.POST)
	public String deleteWord(@RequestParam("wordNo") int wordNo, Model model, HttpSession session, RedirectAttributes redirectAttributes) {
		
		WordVO wordVo = wordService.getDetailwordNo(wordNo);
		
		String mbrId = (String)session.getAttribute("mbrId");
		
		//session에 로그인한 아이디 값을 수정자에 넣어준다.
		wordVo.setMdfcnId(mbrId);
		
		wordService.deleteWord(wordVo);
		
		return "redirect:/word";
	}
	
	
	@RequestMapping(value="/excelWord")
	public void excelDown(HttpServletResponse response) throws Exception{
	
		//참고 url -> https://jhhan009.tistory.com/67
		
		//poi 라이브러리 pom.xml에 의존성 추가 
		
		// 게시판 목록조회
	    List<WordVO> list = wordService.getWordList();

	    // 워크북 생성
	    Workbook wb = new HSSFWorkbook();

	    Sheet sheet = wb.createSheet("word");
	
	    Row row = null;

	    org.apache.poi.ss.usermodel.Cell cell = null;

	    int rowNo = 0;

	    // 헤더 생성
	    // cell.setCellStyle(headStyle)
	    row = sheet.createRow(rowNo++);
	    cell = row.createCell(0);

	    cell.setCellValue("번호");
	    cell = row.createCell(1);

	    cell.setCellValue("공통표준단어명");
	    cell = row.createCell(2);

	    cell.setCellValue("공통표준단어영문약어명");	    
	    cell = row.createCell(3);

	    cell.setCellValue("공통표준단어 영문명");	    
	    cell = row.createCell(4);

	    cell.setCellValue("공통표준단어 설명");	    
	    cell = row.createCell(5);

	    cell.setCellValue("승인상태");	    
	    cell = row.createCell(6);

	    cell.setCellValue("등록일");	    
	    cell = row.createCell(7);

	    cell.setCellValue("수정일");	    
	    cell = row.createCell(8);

	    cell.setCellValue("수정자");	    
	    cell = row.createCell(9);

	    cell.setCellValue("등록자");	    
	    cell = row.createCell(10);

	    cell.setCellValue("삭제여부");
	    


	    // 데이터 부분 생성
	    //cell.setCellStyle(bodyStyle); body스타일 지정할 때 사용
	    for(WordVO vo : list) {
	    	
	    	
	        row = sheet.createRow(rowNo++);
	        cell = row.createCell(0);
	        cell.setCellValue(rowNo-1);
	     
	        cell = row.createCell(1);
	        cell.setCellValue(vo.getWordNm());
	        
	        cell = row.createCell(2);
	        cell.setCellValue(vo.getWordEngAbbn());
	        
	        cell = row.createCell(3);
	        cell.setCellValue(vo.getWordEngNm());	        
	        
	        cell = row.createCell(4);
	        cell.setCellValue(vo.getWordExpln());	        
	        
	        cell = row.createCell(5);
	        cell.setCellValue(vo.getAprvStts());	        
	        
	        cell = row.createCell(6); 
	        cell.setCellValue(vo.getRegDt());		       	        
	       
	        cell = row.createCell(7);
	        cell.setCellValue(vo.getMdfcnDt());	        
	  
	        cell = row.createCell(8);
	        cell.setCellValue(vo.getMdfcnId());          
	       
	        cell = row.createCell(9);   
	        cell.setCellValue(vo.getRegId());	        
	               
	        cell = row.createCell(10);   
	        cell.setCellValue(vo.getDelYn());	           
	    }

	    // 컨텐츠 타입과 파일명 지정
	    response.setContentType("ms-vnd/excel");
	    response.setHeader("Content-Disposition", "attachment;filename=word.xls");

	    // 엑셀 출력
	    wb.write(response.getOutputStream());
	    wb.close();		
	}
	

	@RequestMapping(value = "/ajax/autocomplete")
	public @ResponseBody List<Map<String, Object>> autocomplete
	(@RequestParam String searchvalue) throws Exception{
		
		//////////// 임의의 데이터(db라 가정하자) ////////////  
		List<Map<String, Object>> result = wordService.searchWord(searchvalue);

	
		return result;
	}


	//word 입력받고 입력한 단어에 대한 상세 정보를 비동기로 데이터 가져오는 부분
	@RequestMapping(value = "ajax/worddetail")
	public @ResponseBody WordVO detailView(@RequestParam String autocompleteText,Model model) throws Exception{
		
		WordVO word = wordService.getWordInfo(autocompleteText);
		model.addAttribute("word", word);
		System.out.println(word);
		return word;
	}

}
