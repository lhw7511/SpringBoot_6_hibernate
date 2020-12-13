package com.iu.sb5.board.notice;


import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class NoticeRepositoryTest {

	@Autowired
	private NoticeRepository noticeRepository;
	
	//@Test
	void test1()throws Exception{
		List<NoticeVO> ar = noticeRepository.findByNumGreaterThanOrderByNumDesc(0L);
		System.out.println(ar.get(0).getNum());
		System.out.println(ar.get(1).getNum());
		System.out.println(ar.get(2).getNum());
	}
	
	//@Test
	void test2()throws Exception{
		List<NoticeVO> ar = noticeRepository.findByNumBetween(100, 105);
		for(NoticeVO noticeVO: ar) {
			System.out.println(noticeVO.getNum());
		}
	}
	
	@Test
	void test3()throws Exception{
		List<NoticeVO> ar = noticeRepository.findByTitleContainingOrderByNumDesc("2");
		for(NoticeVO noticeVO: ar) {
			System.out.println(noticeVO.getTitle());
		}
	}
	
	//@Test
	void updateTest() {
		NoticeVO noticeVO = new NoticeVO();
		
		noticeVO.setTitle("update Title");
		noticeVO.setContents("update Contents");
		noticeVO.setWriter("update Writer");
		
		noticeVO.setNum(1);
		
		noticeRepository.save(noticeVO);
	}
	
	//@Test
	void saveTest() throws Exception{
		for(int i=0;i<150;i++) {
			NoticeVO noticeVO = new NoticeVO();
			noticeVO.setTitle("test title"+i);
			noticeVO.setWriter("test writer"+i);
			noticeVO.setContents("test contents"+i);
			noticeVO = noticeRepository.save(noticeVO);
		
			if(i%10 == 0) {
				Thread.sleep(500);
			}
		}
		System.out.println("finish");		
	}
	
	//@Test
	void selectOneTest() {
		Optional<NoticeVO> vo= noticeRepository.findById(2L);
		NoticeVO noticeVO = vo.get();
		System.out.println(noticeVO.getNum());
		System.out.println(noticeVO.getTitle());
	}
	
	
	//@Test
	void countTest() {
		List<NoticeVO> ar = noticeRepository.findAll();
		for(NoticeVO noticeVO: ar) {
			System.out.println(noticeVO.getTitle());
			System.out.println(noticeVO.getNum());
			System.out.println("========================");
		}
	}

}
