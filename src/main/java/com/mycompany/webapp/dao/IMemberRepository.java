package com.mycompany.webapp.dao;

import com.mycompany.webapp.dto.MemberVO;

public interface IMemberRepository {
	
	//member 존재하는지 찾는 메서드
	MemberVO selectMember(String mbrId);
	
	//member 비밀번호를 가져오는 메서드
	String getPassword(String mbrId);
}
