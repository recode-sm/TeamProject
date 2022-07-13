package com.team.dao;

import java.util.List;

import com.team.domain.MemberDTO;

public interface MemberDAO {

	// 회원가입
	public void insertMember(MemberDTO memberDTO);
	
	// 가입 유무 확인
	public MemberDTO userCheck(MemberDTO memberDTO);
	
	// 특정 유저 정보 가져오기
	public MemberDTO getMember(String id);
	
	// 회원정보 수정
	public void updateMember(MemberDTO memberDTO);
	
	// 회원 삭제
	public void deleteMember(MemberDTO memberDTO);
	
	// 전체 회원 정보 가져오기
	public List<MemberDTO> getMemberList();
	
	// 비밀번호 변경
	public void updatePass(MemberDTO memberDTO);
}
