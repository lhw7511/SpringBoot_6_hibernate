package com.iu.sb5.board.notice;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
// 연결 테이블의 테이블명 설정
@Entity
@Table(name = "notice")
public class NoticeVO {
	
	@Id // Primary Key
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long num;
	@Column
	private String title;
	@Column
	private String writer;
	@Lob
	private String contents;
	@Column
	@CreationTimestamp
	private Date regDate;
	@Column
	private long hit;

}
