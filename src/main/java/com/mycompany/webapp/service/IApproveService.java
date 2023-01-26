package com.mycompany.webapp.service;

import java.util.Date;
import java.util.List;

import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.MemberVO;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.dto.WordVO;

public interface IApproveService {
	
	public int wordCount();
	
	public List<WordVO> approveWordPage(Pager pager);
	
	public int domainCount();
	
	public List<DomainVO> approveDomainPage(Pager pager);

	public int termCount();
	
	public List<TermVO> approveTermPage(Pager pager);		
		
	public int memberCount();
	
	public List<MemberVO> approveMemberPage(Pager pager);
	
		
	public void wordApproval(int wordNo);

	public void wordReject(int wordNo);
		
	public void domainApproval(int domainNo);

	public void domainReject(int domainNo);
		
	public void termApproval(int termNo);

	public void termReject(int termNo);
		
	public void memberGrant(String mbrId);
	
	public void memberDelete(String mbrId);
	
	public int wordCountDate();
	public List<WordVO> approveWordDate(Pager pager);
		
	public int domainCountDate();
	public List<DomainVO> approveDomainDate(Pager pager);
		
	public int termCountDate();
	public List<TermVO> approveTermDate(Pager pager);
	
}


