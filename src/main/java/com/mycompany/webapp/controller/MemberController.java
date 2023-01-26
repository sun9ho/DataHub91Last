package com.mycompany.webapp.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.MemberVO;
import com.mycompany.webapp.service.IMemberService;

@Controller
public class MemberController {
	
	static final Logger logger = LoggerFactory.getLogger(WordController.class);
	
	
	@Autowired
	IMemberService memberService;

	@RequestMapping(value="/member/login", method=RequestMethod.GET)
	public String login(Model model) {
		return "/member/login";
	}  

	@RequestMapping(value="/member/login",   method=RequestMethod.POST)
	public String login(String mbrId, String mbrPswd, HttpSession session, Model model) {		
		
		MemberVO member = memberService.selectMember(mbrId);
		if(member != null) {
			String pswd = memberService.getPassword(mbrId);
			if(pswd == null) {
				model.addAttribute("message", "NOT_VAILD_MEMBER");
			}else {
				if(pswd.equals(mbrPswd)) {			
					
					session.setAttribute("mbrId", member.getMbrId());
					session.setAttribute("mbrPswd", member.getMbrPswd());
					session.setAttribute("MbrEml", member.getMbrEml());
					session.setAttribute("mbrYn", member.getMbrYn());
					return "redirect:/";
				}else {
					model.addAttribute("message", "WRONG_PASSWORD");
				}
			}
		}else {
			model.addAttribute("message", "MEMBER_NOT_FOUND");
			return "member/alertwrongmember";
		}
		return "redirect:/member/login";
	}

	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		session.invalidate();
		return "/home";
	}

}
