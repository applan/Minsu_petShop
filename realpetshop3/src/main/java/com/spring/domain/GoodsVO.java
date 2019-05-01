package com.spring.domain;


import lombok.Data;

@Data
public class GoodsVO {
 private int goodsNum; // X
 private String goodsName; // X
 private String goodsId; // X
 private String goodsMainUrl; // X
 private String goodsUrl; // O
 private String goodsDate; // O
 private String goodsInfo; // O
 private long goodsPrice; // X
 private String goodsPriceFormat;
}
