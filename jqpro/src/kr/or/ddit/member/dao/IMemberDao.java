package kr.or.ddit.member.dao;

import java.util.List;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.ZipVO;

public interface IMemberDao {
	
	// 중복검사
		public String idSearch(String userId);
		// 저장하기 - 회원가입하기
		public String insertMember(MemberVO memvo);
		// 우편번호 검색
		public List<ZipVO>selectZipcode(String dong);
}
