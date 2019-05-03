package com.spring.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
// 검색을 위한 VO
public class ValueVO {
 private String type;
 
 public String[] getTypeArr() {
	 return type == null? new String[] {} : type.split("");
 }
}
