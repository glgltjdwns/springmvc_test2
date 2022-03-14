package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
	public String memberList(Model model) throws Exception {

		List<Member> list = service.selectList();
		model.addAttribute("list", list);

		return "member/memberList";
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {

		return "member/memberForm";
	}
	
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Member dto) throws Exception {
		
	
		// 입력을 작동시킨다.
		int itme = service.insert(dto);
		
		System.out.println("itme" + itme);

		return "";
	}
	

	@RequestMapping(value = "/Member/MemberView")
	public String memberView(MemberVo vo ,Model model) throws Exception {
		
		System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq());
		
		// 디비까지 가서 한 건의 데이터 값을 가지고 온다, VO
		Member rt = service.selectOne(vo);
		
		//가지고 온값을 jsp로 넘겨준다
		model.addAttribute("item",rt);
		return "member/memberView";
		
	}
	@RequestMapping(value = "/member/memberForm2")
	public String memberForm2(MemberVo vo , Model model) throws Exception {
		
		Member rt = service.selectOne(vo);
	
			
		
		model.addAttribute("item", rt);
		
		return"member/memberForm2";
	}
	
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(Member dto) throws Exception {
		
		service.update(dto);
		
		return"";
	}
	
	
}