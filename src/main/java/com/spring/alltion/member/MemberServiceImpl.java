package com.test.tst;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.tst.MemberVO;
import com.test.mapper.MemberMapper;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertMember(MemberVO membervo) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		String email ="";
		email = membervo.getEmail1()+"@"+membervo.getEmail2();
		membervo.setEmail(email);
		int res = memberMapper.insertMember(membervo);
		return res;
	}

	@Override
	public int userCheck(MemberVO memberVO) {
		// sqlSession 객체를 이용하여 memberMapper 객체 생성(필드로 생성)
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int res = memberMapper.userCheck(memberVO); 
		
		return res;
	}
	

	@Override
	public ArrayList<MemberVO> getMemberlist() {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<MemberVO> list = memberMapper.getMemberlist();
		return list;
	}

	@Override
	public MemberVO selectMember(MemberVO membervo) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		MemberVO vo = memberMapper.selectMember(membervo);
		return vo;
	}

	@Override
	public int deleteMember(MemberVO membervo) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int res = memberMapper.deleteMember(membervo);
		return res;
	}

	@Override
	public int updateMember(MemberVO membervo) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		int res = memberMapper.updateMember(membervo);
		return res;
	}
	
	@Override
	public int idCheckService(String member_id) {
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		
		return memberMapper.idCheck(member_id);
	}
	


}
