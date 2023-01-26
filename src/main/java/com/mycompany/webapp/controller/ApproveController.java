package com.mycompany.webapp.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.MemberVO;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.dto.WordVO;
import com.mycompany.webapp.service.IApproveService;

@Controller
public class ApproveController {
	static final Logger logger = LoggerFactory.getLogger(ApplicationController.class);
	
	@Autowired
	IApproveService approveService;
	
	@RequestMapping("/approve")
	public String approveList(@RequestParam(defaultValue="1") int pageNo
								,@RequestParam(defaultValue="1") int pageNoD
								,@RequestParam(defaultValue="1") int pageNoT
								,@RequestParam(defaultValue="1") int pageNoM, Model model) {
		
		//word 승인대기 리스트 
		//페이징 대상이 되는 전체 행수 
		int totalRows = approveService.wordCount();
		Pager pager = new Pager(3, 5, totalRows, pageNo);
		List<WordVO> words = approveService.approveWordPage(pager);
		model.addAttribute("pager", pager);
		model.addAttribute("words", words);
		
		//domain 승인대기 리스트
		int totalRowsD = approveService.domainCount();
		Pager pagerD = new Pager(3, 5, totalRowsD, pageNoD);
		List<DomainVO> domains = approveService.approveDomainPage(pagerD);
		model.addAttribute("pagerD", pagerD);
		model.addAttribute("domains", domains);
		
		//term 승인대기 리스트
	    int totalRowsT = approveService.termCount();
	    Pager pagerT = new Pager(3, 5, totalRowsT, pageNoT);
	    List<TermVO> terms = approveService.approveTermPage(pagerT);
	    model.addAttribute("pagerT", pagerT);
	    model.addAttribute("terms", terms);
	   
	    //term 승인대기 리스트
	    int totalRowsM = approveService.memberCount();
	    Pager pagerM = new Pager(3, 5, totalRowsM, pageNoM);
	    List<MemberVO> members = approveService.approveMemberPage(pagerM);
	    model.addAttribute("pagerM", pagerM);
	    model.addAttribute("members", members);
		

		return "application/approval_list1";
	}
	
	
	//word 승인부분
	@RequestMapping(value="/wordapproval", method=RequestMethod.POST)
	public String wordApproval(@RequestParam int wordNo) {
		approveService.wordApproval(wordNo);		
		return "redirect:/approve";	
	}
	
	//word 가잘부분
	@RequestMapping(value="/wordreject", method=RequestMethod.POST)
	public String wordReject(@RequestParam int wordNo) {
		approveService.wordReject(wordNo);	
		return "redirect:/approve";	
	}
	
	//domain 승인부분
	@RequestMapping(value="/domainapproval", method=RequestMethod.POST)
	public String domainApproval(@RequestParam int domainNo) {
		approveService.domainApproval(domainNo);		
		return "redirect:/approve";	
	}
		
	//domain 가잘부분
	@RequestMapping(value="/domainreject", method=RequestMethod.POST)
	public String domainReject(@RequestParam int domainNo) {
		approveService.domainReject(domainNo);	
		return "redirect:/approve";	
	}
	
	//domain 승인부분
	@RequestMapping(value="/termapproval", method=RequestMethod.POST)
	public String termApproval(@RequestParam int termNo) {
		approveService.termApproval(termNo);		
		return "redirect:/approve";	
	}
			
	//domain 가잘부분
	@RequestMapping(value="/termreject", method=RequestMethod.POST)
	public String termReject(@RequestParam int termNo) {
		approveService.termReject(termNo);	
		return "redirect:/approve";	
	}
	
	//member 관리자승인부분
	@RequestMapping(value="/memberGrant", method=RequestMethod.POST)
	public String memberGrant(@RequestParam String mbrId) {
		approveService.memberGrant(mbrId);	
		return "redirect:/approve";	
	}
	
	//member 삭제부분
		@RequestMapping(value="/memberDelete", method=RequestMethod.POST)
		public String memberDelete(@RequestParam String mbrId) {
			approveService.memberDelete(mbrId);
			return "redirect:/approve";	
		}
	

		
	//입력한 기간동안 리스트 조회
		@RequestMapping("/approvedate")
		public String approveDateList(@RequestParam(defaultValue="1") int pageNo
									,@RequestParam(defaultValue="1") int pageNoD
									,@RequestParam(defaultValue="1") int pageNoT
									,@RequestParam(defaultValue="1") int pageNoM
									,@RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date select1
									,@RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date select2
									, Model model) throws ParseException {
			System.out.println("dateController진입");
			
			//날짜 포멧 변경 -> yyyy-mm-dd
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String dateS = dateFormat.format(select1);
			String dateE = dateFormat.format(select2);
			
			//Date dateSS = dateFormat.parse(dateS);
			//Date dateEE = dateFormat.parse(dateE);
			//System.out.println(dateSS);
			//System.out.println(dateEE);
			
			model.addAttribute("select1", dateS);
			model.addAttribute("select2", dateE);			
			
			
			//word 승인대기 리스트 
			//페이징 대상이 되는 전체 행수 
			int totalRows = approveService.wordCountDate();
			Pager pager = new Pager(3, 5, totalRows, pageNo);
			pager.setSelect1(dateS);
			pager.setSelect2(dateE);
			List<WordVO> words = approveService.approveWordDate(pager);
			model.addAttribute("pager", pager);
			model.addAttribute("words", words);
			
			//domain 승인대기 리스트
			int totalRowsD = approveService.domainCountDate();
			Pager pagerD = new Pager(3, 5, totalRowsD, pageNoD);
			pagerD.setSelect1(dateS);
			pagerD.setSelect2(dateE);
			List<DomainVO> domains = approveService.approveDomainDate(pagerD);
			model.addAttribute("pagerD", pagerD);
			model.addAttribute("domains", domains);
			
			//term 승인대기 리스트
		    int totalRowsT = approveService.termCountDate();
		    Pager pagerT = new Pager(3, 5, totalRowsT, pageNoT);
			pagerT.setSelect1(dateS);
			pagerT.setSelect2(dateE);
		    List<TermVO> terms = approveService.approveTermDate(pagerT);
		    model.addAttribute("pagerT", pagerT);
		    model.addAttribute("terms", terms);
		   
		    //term 승인대기 리스트
		    int totalRowsM = approveService.memberCount();
		    Pager pagerM = new Pager(3, 5, totalRowsM, pageNoM);
		    List<MemberVO> members = approveService.approveMemberPage(pagerM);
		    model.addAttribute("pagerM", pagerM);
		    model.addAttribute("members", members);
			

			return "application/approval_list_date";
		}
		
		
}
