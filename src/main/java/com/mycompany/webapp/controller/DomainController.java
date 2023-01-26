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
import com.mycompany.webapp.dto.WordVO;
import com.mycompany.webapp.service.IDomainService;


@Controller
public class DomainController {

	static final Logger logger = LoggerFactory.getLogger(DomainController.class);

	@Autowired
	IDomainService domainService;
	
	
	@RequestMapping(value="/domain/detail", method=RequestMethod.GET)
	public String detaildomain(@RequestParam(value="domainNo") int domainNo,RedirectAttributes redirectAttributes,Model model,HttpSession session) {
		System.out.println(domainNo);
		
		DomainVO domain= domainService.getDetailDomainNo(domainNo);
		String mbrId = (String)session.getAttribute("mbrId");
		
		//session에 로그인한 아이디 값을 수정자에 넣어준다.
		domain.setMdfcnId(mbrId);
		
		// 현재 날짜 구하기
        LocalDate now = LocalDate.now();
 
        // 포맷 정의
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
 
        // 포맷 적용
        String formatedNow = now.format(formatter);
 
		domain.setMdfcnDt(formatedNow);
		
		System.out.println(domain);
		
		model.addAttribute("domain", domain);
		return "domain/detail";
	}	
	
	@RequestMapping(value="/domain/update", method=RequestMethod.GET)
	public String detailWord(@RequestParam(value="domainno") int domainno,RedirectAttributes redirectAttributes,Model model,HttpSession session) {

		DomainVO domain = domainService.getDetailDomainNo(domainno);
		String mbrId = (String)session.getAttribute("mbrId");
		
		//session에 로그인한 아이디 값을 수정자에 넣어준다.
		domain.setMdfcnId(mbrId);
		
		// 현재 날짜 구하기
        LocalDate now = LocalDate.now();
 
        // 포맷 정의
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
 
        // 포맷 적용
        String formatedNow = now.format(formatter);
 
		domain.setMdfcnDt(formatedNow);
		
		model.addAttribute("domain", domain);
		return "domain/update";
	}	
	
	@RequestMapping(value="/domain/update", method=RequestMethod.POST)
	public String updateWord(DomainVO domain, RedirectAttributes redirectAttributes,HttpSession session) {
		
		String mbrId = (String)session.getAttribute("mbrId");
		domain.setMdfcnId(mbrId);
		domainService.updateDomain(domain);
		
		return "redirect:/domain";
	}
	
	@RequestMapping(value="/domaindelete/domainNo={domainNo}", method=RequestMethod.POST)
	public String deleteDomain(@RequestParam("domainNo") int domainNo, Model model, HttpSession session, RedirectAttributes redirectAttributes) {
		
		DomainVO domain = domainService.getDetailDomainNo(domainNo);
		
		String mbrId = (String)session.getAttribute("mbrId");
		
		//session에 로그인한 아이디 값을 수정자에 넣어준다.
		domain.setMdfcnId(mbrId);
		
		domainService.deleteDomain(domain);
		
		return "redirect:/domain";
	}	
	
	@RequestMapping(value = "/ajax/autocomplete/domain")
	public @ResponseBody List<Map<String, Object>> autocomplete(@RequestParam String searchvalue) throws Exception{
		System.out.println("autocomplete controller 진입");
		logger.info("searchValue" + searchvalue);
		
		//임의의 데이터(db라면)
		List<Map<String, Object>> result = domainService.searchDomain(searchvalue);
		System.out.println(result);
		
		return result;
	}
	
	@RequestMapping("/domain")
	public String getDomainList(@RequestParam(defaultValue="1") int pageNo, Model model) {
		//페이징 대상이 되는 전체 행수
		int totalRows = domainService.count();
		
		//페이징 정보가 담긴 Pager 객체 생성
		Pager pager = new Pager(7, 10, totalRows, pageNo);
		
		//해당 페이지의 행을 가져오기
		List<DomainVO> domains = domainService.selectByPage(pager);
		
		//JSP에서 사용할 데이터를 가져오기
		model.addAttribute("pager", pager);
		model.addAttribute("domains", domains);
		
		return "domain/domain";
	}
	
	@RequestMapping(value="/ajax/domaindetail")
	public @ResponseBody DomainVO detailView(@RequestParam String autocompleteText) throws Exception{
		System.out.println("domaindetail controller진입");
		logger.info("autocompleteTextdomain" + autocompleteText);
		
		DomainVO domain = domainService.selectDomainDetail(autocompleteText);
		System.out.println(domain);
		
		return domain;
	}
	
	@RequestMapping(value="/excelDomain")
	public void excelDown(HttpServletResponse response) throws Exception{
		//참고 url -> http://jhhan009.tistory.com/67
		//poi 라이브러리 pom.xml에 의존성 추가
		
		//게시판 목록조회
		List<DomainVO> list = domainService.selectDomainList();
		
		//워크북 생성
		Workbook wb = new HSSFWorkbook();
		
		Sheet sheet = wb.createSheet("domain");
		
		Row row = null;
		
		org.apache.poi.ss.usermodel.Cell cell = null;
		
		int rowNo = 0;
		
		//헤더 생성
		// cell.setCellStyle(headStyle)
		row = sheet.createRow(rowNo++);
		cell = row.createCell(0);
		
		cell.setCellValue("번호");
		cell = row.createCell(1);
		
		cell.setCellValue("공통표준도메인명");
		cell = row.createCell(2);
		
		cell.setCellValue("공통표준도메인그룹명");
		cell = row.createCell(3);
		
		cell.setCellValue("공통표준도메인설명");
		cell = row.createCell(4);
		
		cell.setCellValue("공통표준도메인분류명");
		cell = row.createCell(5);
		
		cell.setCellValue("도메인데이터타입");
		cell = row.createCell(6);
		
		cell.setCellValue("도메인데이터길이");
		cell = row.createCell(7);
		
		cell.setCellValue("승인상태");
		cell = row.createCell(8);
		
		cell.setCellValue("등록일");
		cell = row.createCell(9);
		
		cell.setCellValue("수정일");
		cell = row.createCell(10);
		
		cell.setCellValue("수정자");
		cell = row.createCell(11);
		
		cell.setCellValue("등록자");
		cell = row.createCell(12);
		
		cell.setCellValue("삭제여부");
		/*cell = row.createCell(13);*/
		
		//데이터 부분 생성
		//cell.setCellStyle(bodyStyle); bodyStyle 지정할 때 사용
		
		for(DomainVO vo : list) {
			row = sheet.createRow(rowNo++);
			cell = row.createCell(0);
			cell.setCellValue(rowNo-1);
			
			cell = row.createCell(1);
			cell.setCellValue(vo.getDomainNm());
			
			cell = row.createCell(2);
			cell.setCellValue(vo.getDomainGnm());
			
			cell = row.createCell(3);
			cell.setCellValue(vo.getDomainExpln());
			
			cell = row.createCell(4);
			cell.setCellValue(vo.getDomainCatg());
			
			cell = row.createCell(5);
			cell.setCellValue(vo.getDomainType());
			
			cell = row.createCell(6);
			cell.setCellValue(vo.getDomainLength());
			
			cell = row.createCell(7);
			cell.setCellValue(vo.getAprvStts());
			
			cell = row.createCell(8);
			cell.setCellValue(vo.getRegDt());
			
			cell = row.createCell(9);
			cell.setCellValue(vo.getMdfcnDt());
			
			cell = row.createCell(10);
			cell.setCellValue(vo.getMdfcnId());
			
			cell = row.createCell(11);
			cell.setCellValue(vo.getRegId());
			
			cell = row.createCell(12);
			cell.setCellValue(vo.getDelYn());
		}
		
		//콘텐츠 타입과 파일명 지정
		response.setContentType("ms-vnd/excel");
		response.setHeader("Content-Disposition", "attachment;filename=domain.xls");
		
		//엑셀 출력
		wb.write(response.getOutputStream());
		wb.close();		
	}
}
