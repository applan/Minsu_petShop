package com.spring.domain;

import lombok.Data;

@Data
public class ShopVO {
	private String productname;
	private String month;
	private String paymentdata;
	private boolean result;
	private String result2;
	private int money;
	private int summoney;
	
	public void setSummoney(int money) {
		if(money>=0) {
			this.summoney += money;
		}else {
			this.summoney=0;
		}
	}
	public void setResult2(boolean result) {
		if(result) {
			this.result2="거래 승인";
		}else {
			this.result2="거래 실패";
		}
	}
}
