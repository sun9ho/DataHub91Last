package com.mycompany.webapp.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.service.ITermService;


@Controller
public class TermController {
	static final Logger logger = LoggerFactory.getLogger(TermController.class);
	@Autowired
	ITermService termService;
	
	
	//welcome page
	@RequestMapping(value="/term", method=RequestMethod.GET)
	public String getTermList(@RequestParam(defaultValue="1") int pageNo, HttpSession session, Model model) {
		
		//페이징 대상이 되는 전체 행수 
		int totalRows = termService.count();
		System.out.println(totalRows);
		
		//페이징 정보가 담긴 Pager 객체 생성
		Pager pager = new Pager(7, 10, totalRows, pageNo);

		//해당 페이지의 행을 가져오기
		List<TermVO> terms = termService.selectByPage(pager);

		//JSP에서 사용할 데이터를 가져오기
		model.addAttribute("pager", pager);
		model.addAttribute("terms", terms);		
		
		return "/term/term";
	}
	
	
	//welcome page
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String search(HttpSession session, Model model) {
		return "/search";
	}

	//check term
	@RequestMapping(value="/termcheck", method=RequestMethod.GET)
	public String searchCheck(@RequestParam("csTermName") String csTermName, HttpSession session, Model model) {
		System.out.println(termService.checkTerm(csTermName));
		if(termService.checkTerm(csTermName) == 0) {
			System.out.println("term 테이블에 "+ csTermName + "이 없습니다");
			return "/search/termview";
		} 
		TermVO term = termService.getTermDetail(csTermName);		
		model.addAttribute("term", term);
		return "/search/termview";
	}	
	
	//check word
	@RequestMapping(value="/wordcheck", method=RequestMethod.GET)
	public String searchword(@RequestParam("wordName1") String wordName1, @RequestParam("wordName2") String wordName2, HttpSession session, Model model) {
		if(termService.checkWord(wordName1) == 0) {
			System.out.println("wordName1이 없습니다.");
			model.addAttribute("wordName1", wordName1);
			return "/wordinsert";
		}else if(termService.checkWord(wordName2)==0) {
			System.out.println("wordName2가 없습니다.");
			model.addAttribute("wordName2", wordName2);
			return "/wordinsert";
		}
		model.addAttribute("wordName1", wordName1);
		model.addAttribute("wordName2", wordName2);
		return "/domainCheck";
	}
	
	//check term
	@RequestMapping(value="/domaincheck", method=RequestMethod.GET)
	public String searchDomain(@RequestParam("wordName1") String wordName1, @RequestParam("wordName2") String wordName2, HttpSession session, Model model) {
		if(termService.checkDomain(wordName2)==0) {
			model.addAttribute("wordName2", wordName2);
			return "/insertDomain";
		}		

		TermVO term = null;

		model.addAttribute("term", term);
		
		return "/insertTerm";
	}
	
	@RequestMapping(value="/term/detail", method=RequestMethod.GET)
	public String detaildomain(@RequestParam(value="termNo") int termNo,RedirectAttributes redirectAttributes,Model model,HttpSession session) {
		
		TermVO term= termService.termDetailByTermNo(termNo);
		String mbrId = (String)session.getAttribute("mbrId");
		
		//session에 로그인한 아이디 값을 수정자에 넣어준다.
		term.setMdfcnId(mbrId);
		
		// 현재 날짜 구하기
        LocalDate now = LocalDate.now();
 
        // 포맷 정의
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
 
        // 포맷 적용
        String formatedNow = now.format(formatter);
 
		term.setMdfcnDt(formatedNow);
		
		
		model.addAttribute("term", term);
		return "term/detail";
	}	
	
	@RequestMapping(value="/term/update", method=RequestMethod.GET)
	public String detailWord(@RequestParam(value="termno") int termno,RedirectAttributes redirectAttributes,Model model,HttpSession session) {

		TermVO term = termService.termDetailByTermNo(termno);
		String mbrId = (String)session.getAttribute("mbrId");
		
		//session에 로그인한 아이디 값을 수정자에 넣어준다.
		term.setMdfcnId(mbrId);
		
		// 현재 날짜 구하기
        LocalDate now = LocalDate.now();
 
        // 포맷 정의
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
 
        // 포맷 적용
        String formatedNow = now.format(formatter);
 
		term.setMdfcnDt(formatedNow);
		
		model.addAttribute("term", term);
		return "term/update";
	}	
	
	@RequestMapping(value="/term/update", method=RequestMethod.POST)
	public String updateWord(TermVO term, RedirectAttributes redirectAttributes,HttpSession session) {
		
		String mbrId = (String)session.getAttribute("mbrId");
		term.setMdfcnId(mbrId);
		termService.updateTerm(term);
		
		return "redirect:/term";
	}
	
	@RequestMapping(value="/termdelete/termNo={termNo}", method=RequestMethod.POST)
	public String deleteDomain(@RequestParam("termNo") int termNo, Model model, HttpSession session, RedirectAttributes redirectAttributes) {
		
		TermVO term = termService.termDetailByTermNo(termNo);
		
		String mbrId = (String)session.getAttribute("mbrId");
		
		//session에 로그인한 아이디 값을 수정자에 넣어준다.
		term.setMdfcnId(mbrId);
		
		termService.deleteTerm(term);
		
		return "redirect:/term";
	}
	
	
	
	
	
	@RequestMapping(value = "/ajax/autocomplete/main")
	public @ResponseBody List<Map<String, Object>> autocompletemain
    						(@RequestParam String searchvalue) throws Exception{
						
	   //입력한 값이 오른쪽 + 양쪽 + 왼쪽 TERM TABLE에서 TERN_NM 모두 가져옴
	    List<Map<String, Object>> result = termService.searchTerm(searchvalue);
   
	    return result;
	}
	
	
	//term 입력받고 입력한 용어에 대한 상세 정보를 비동기로 데이터 가져오는 부분
	@RequestMapping(value = "ajax/termdetail")
	public @ResponseBody TermVO detailView(@RequestParam String autocompleteText) throws Exception{
		System.out.println("termdetail controller진입");
		logger.info("autocompleteText "+autocompleteText);
		
		TermVO term = termService.getTermDetail(autocompleteText);	
		
	    return term;
	}
	
	@RequestMapping(value="/excelTerm")
	public void excelDown(HttpServletResponse response) throws Exception{
		//참고 url ->https://jhhan009.tistory.com/67
		
		//poi 라이브러리 pom.xml에 추가
		
		//게시판 목록 조회
		List<TermVO> list = termService.selectTermList();
		
		//워크북 생성filename
		Workbook wb = new HSSFWorkbook();
		
		Sheet sheet = wb.createSheet("term");
		
		Row row = null;
		
		org.apache.poi.ss.usermodel.Cell cell = null;
		
		int rowNo = 0;
		
		//헤더 생성
		//cell.setCellStyle(headStyle)
		row = sheet.createRow(rowNo++);
		cell = row.createCell(0);
		
		cell.setCellValue("번호");
		cell = row.createCell(1);
		
		cell.setCellValue("공통표준용어명");
		cell = row.createCell(2);
		
		cell.setCellValue("공통표준용어설명");
		cell = row.createCell(3);
		
		cell.setCellValue("공통표준용어영문약어명");
		cell = row.createCell(4);
		
		cell.setCellValue("공통표준도메인명");
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

		
		//데이터 부분 생성
		//cell.setCellStyle(bodyStyle); bodyStyle 지정할 때 사용
		
		for(TermVO vo : list) {
			row = sheet.createRow(rowNo++);
			cell = row.createCell(0);
			cell.setCellValue(rowNo-1);
			
			cell = row.createCell(1);
			cell.setCellValue(vo.getTermNm());
			
			cell = row.createCell(2);
			cell.setCellValue(vo.getTermExpln());
			
			cell = row.createCell(3);
			cell.setCellValue(vo.getTermEngAbbn());
			
			cell = row.createCell(4);
			cell.setCellValue(vo.getTermDnm());
			
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
		
		//콘텐츠 타입과 파일명 지정
		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition", "attachment;filename=term.xls");
		
		//엑셀 출력
		wb.write(response.getOutputStream());
		wb.close();		
	}
	
}
