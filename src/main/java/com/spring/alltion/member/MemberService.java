package com.test.tst;

import java.util.ArrayList;

import com.test.tst.MemberVO;

public interface MemberService {

		public int insertMember(MemberVO membervo);
		public int userCheck(MemberVO memberVO);
		public ArrayList<MemberVO> getMemberlist();
		public MemberVO selectMember(MemberVO membervo);
		public int deleteMember(MemberVO membervo);
		public int updateMember(MemberVO membervo);
		int idCheckService(String member_id);
		

}
