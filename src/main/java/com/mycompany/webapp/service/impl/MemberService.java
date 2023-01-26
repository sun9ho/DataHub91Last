package com.mycompany.webapp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.IMemberRepository;
import com.mycompany.webapp.dto.MemberVO;
import com.mycompany.webapp.service.IMemberService;

@Service
public class MemberService implements IMemberService {
	
	@Autowired
	IMemberRepository memberRepository;

	@Override
	public MemberVO selectMember(String mbrId) {
		return memberRepository.selectMember(mbrId);
	}

	@Override
	public String getPassword(String mbrId) {
		return memberRepository.getPassword(mbrId);
	}

}
