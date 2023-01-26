package com.mycompany.webapp.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.IApproveRepository;
import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.MemberVO;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.TermVO;
import com.mycompany.webapp.dto.WordVO;
import com.mycompany.webapp.service.IApproveService;
@Service
public class ApproveService implements IApproveService {

	@Autowired
	IApproveRepository approveRepository;	
	
	@Override
	public List<WordVO> approveWordPage(Pager pager) {
		return approveRepository.approveWordPage(pager);
	}

	@Override
	public int wordCount() {
		return approveRepository.wordCount();
	}

	@Override
	public List<DomainVO> approveDomainPage(Pager pager) {
		return approveRepository.approveDomainPage(pager);
	}
	
	@Override
	public int domainCount() {
		return approveRepository.domainCount();
	}

	@Override
	public int termCount() {
		return approveRepository.termCount();
	}

	@Override
	public List<TermVO> approveTermPage(Pager pager) {
		return approveRepository.approveTermPage(pager);
	}

	@Override
	public int memberCount() {
		return approveRepository.memberCount();
	}

	@Override
	public List<MemberVO> approveMemberPage(Pager pager) {
		return approveRepository.approveMemberPage(pager);
	}

	@Override
	public void wordApproval(int wordNo) {
		approveRepository.wordApproval(wordNo);
	}

	@Override
	public void wordReject(int wordNo) {
		approveRepository.wordReject(wordNo);
	}

	@Override
	public void domainApproval(int domainNo) {
		approveRepository.domainApproval(domainNo);
	}

	@Override
	public void domainReject(int domainNo) {
		approveRepository.domainReject(domainNo);
	}

	@Override
	public void termApproval(int termNo) {
		approveRepository.termApproval(termNo);
	}

	@Override
	public void termReject(int termNo) {
		approveRepository.termReject(termNo);
	}

	@Override
	public void memberGrant(String mbrId) {
		approveRepository.memberGrant(mbrId);
	}

	@Override
	public void memberDelete(String mbrId) {
		approveRepository.memberDelete(mbrId);
	}

	@Override
	public int wordCountDate() {
		return approveRepository.wordCountDate();
	}

	@Override
	public List<WordVO> approveWordDate(Pager pager) {
		return approveRepository.approveWordDate(pager);
	}

	@Override
	public int domainCountDate() {
		return approveRepository.domainCountDate();
	}

	@Override
	public List<DomainVO> approveDomainDate(Pager pager) {
		return approveRepository.approveDomainDate(pager);
	}

	@Override
	public int termCountDate() {
		return approveRepository.termCountDate();
	}

	@Override
	public List<TermVO> approveTermDate(Pager pager) {
		return approveRepository.approveTermDate(pager);
	}
	
}
