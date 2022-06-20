package com.team.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.dao.MemberDAO;
import com.team.domain.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO memberDAO;

	@Override
	public void insertMember(MemberDTO memberDTO) {
		// 날짜
		memberDTO.setDate(new Timestamp(System.currentTimeMillis()));
		
		memberDAO.insertMember(memberDTO);
	}

	@Override
	public MemberDTO userCheck(MemberDTO memberDTO) {
		return memberDAO.userCheck(memberDTO);
	}

	@Override
	public MemberDTO getMember(String id) {
		return memberDAO.getMember(id);
	}

	@Override
	public void updateMember(MemberDTO memberDTO) {
		memberDAO.updateMember(memberDTO);
	}

	@Override
	public void deleteMember(MemberDTO memberDTO) {
		memberDAO.deleteMember(memberDTO);
	}

	@Override
	public List<MemberDTO> getMemberList() {
		return memberDAO.getMemberList();
	}
	
	
}
