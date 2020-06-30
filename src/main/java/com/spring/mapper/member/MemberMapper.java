package com.test.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.test.tst.MemberVO;

public interface MemberMapper {

	public int insertMember(MemberVO membervo);
	public int userCheck(MemberVO memberVO);
	public ArrayList<MemberVO> getMemberlist();
	public MemberVO selectMember(MemberVO membervo);
	public int deleteMember(MemberVO membervo);
	public int updateMember(MemberVO membervo);
	int idCheck(String member_id);
	
}
