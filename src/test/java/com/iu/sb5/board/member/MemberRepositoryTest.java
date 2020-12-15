package com.iu.sb5.board.member;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.iu.sb5.member.MemberRepository;
import com.iu.sb5.member.MemberVO;

@SpringBootTest
class MemberRepositoryTest {

	@Autowired
	private MemberRepository memberRepository;
	
	@Test
	void test() {
		MemberVO memberVO = new MemberVO();
		memberVO.setId("test1");
		memberVO.setPw("test1");
		memberVO.setName("test name");
		memberVO.setAge(25);
		memberVO.setEmail("test123@naver.com");
		
		memberVO=memberRepository.save(memberVO);
		assertNotNull(memberVO);
		
		
	}

}
