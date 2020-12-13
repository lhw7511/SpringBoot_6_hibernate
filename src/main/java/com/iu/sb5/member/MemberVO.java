package com.iu.sb5.member;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "member")
public class MemberVO {

	@Id
	private String id;
	@Column
	private String pw;
	@Transient // 테이블에서 제외
	private String pw2;
	@Column(name = "age")
	private int age;
	@Column
	private String name;
	@Column
	private String email;
	
}
