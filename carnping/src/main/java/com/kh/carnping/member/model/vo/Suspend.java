package com.kh.carnping.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter	
@ToString
public class Suspend {
	private String suspendNo;
	private String suspendMemNo;
	private Date suspendStart;
	private Date suspendEnd;
}
