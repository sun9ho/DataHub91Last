package com.mycompany.webapp.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.webapp.dao.IDomainRepository;
import com.mycompany.webapp.dto.DomainVO;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.service.IDomainService;

@Service
public class DomainService implements IDomainService {

	@Autowired
	IDomainRepository domainRepository;
	
	@Override
	public List<DomainVO> selectDomain() {
		return domainRepository.selectDomain();
	}

	@Override
	public void insertDomain(DomainVO domain) {
		domainRepository.insertDomain(domain);
	}

	@Override
	public void updateDomain(DomainVO domain) {
		domainRepository.updateDomain(domain);
	}

	@Override
	public void deleteDomain(DomainVO domain) {
		domainRepository.deleteDomain(domain);
	}

	@Override
	public List<Map<String, Object>> searchDomain(String searchvalue) {
		return domainRepository.searchDomain(searchvalue);
	}

	@Override
	public List<DomainVO> selectByPage(Pager pager) {
		return domainRepository.selectByPage(pager);
	}

	@Override
	public int count() {
		return domainRepository.count();
	}

	@Override
	public DomainVO selectDomainDetail(String domainNm) {
		return domainRepository.selectDomainDetail(domainNm);
	}

	@Override
	public List<DomainVO> selectDomainList() {
		return domainRepository.selectDomainList();
	}

	

	@Override
	public DomainVO getDetailDomainNo(int domainNo) {
		return domainRepository.getDetailDomainNo(domainNo);
	}

}
