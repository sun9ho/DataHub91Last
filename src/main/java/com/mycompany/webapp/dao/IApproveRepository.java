package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.MemberVO;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.dto.WordVO;

@Mapper
public interface IApproveRepository {
		
	//word 부분
	public int wordCount();
	public List<WordVO> approveWordPage(Pager pager);
	
	
	//domain부분
	public int domainCount();
	public List<DomainVO> approveDomainPage(Pager pager);
	
	//term부분
	public int termCount();
	public List<TermVO> approveTermPage(Pager pager);
	
	
	//member부분
	public int memberCount();
	public List<MemberVO> approveMemberPage(Pager pager);
	
	//word승인
	public void wordApproval(int wordNo);
	//word반려
	public void wordReject(int wordNo);
	
	//domain승인
	public void domainApproval(int domainNo);
	//domain반려
	public void domainReject(int domainNo);
	
	//term승인
	public void termApproval(int termNo);
	//term반려
	public void termReject(int termNo);
	
	//member 관리자로 바꾸는 메서드
	public void memberGrant(String mbrId);
	
	//member 삭제하는 메서드
	public void memberDelete(String mbrId);
	
	//word 특정 기간동안 신청된 리스트 가져오는 메서드
	public int wordCountDate();
	public List<WordVO> approveWordDate(Pager pager);
	
	//domain 특정 기간동안 신청된 리스트 가져오는 메서드
	public int domainCountDate();
	public List<DomainVO> approveDomainDate(Pager pager);
	
	//term 특정 기간동안 신청된 리스트 가져오는 메서드
	public int termCountDate();
	public List<TermVO> approveTermDate(Pager pager);
	
	
}
