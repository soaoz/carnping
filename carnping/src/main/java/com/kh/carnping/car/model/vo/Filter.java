package com.kh.carnping.car.model.vo;

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
public class Filter {
	private String sequence;
	private String title;
	private String keyword;
	private String location;
	private String[] facility;
	private String[] tag;
}
