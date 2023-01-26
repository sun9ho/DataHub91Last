package com.mycompany.webapp.service;

import com.mycompany.webapp.dto.MemberVO;

public interface IMemberService {
	
	MemberVO selectMember(String mbrId);

	String getPassword(String mbrId);
}
