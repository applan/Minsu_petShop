package com.spring.domain;


import java.util.Date;

import lombok.Data;

@Data
public class GoodsVO_Trash {
 private int goodsNum;
 private String goodsName;
 private String goodsId;
 private String goodsMainUrl;
 private String goodsUrl;
 private String goodsDate;
 private String goodsInfo;
 private long goodsPrice;
 private String goodsPriceFormat;
 private Date trashDate;
 private String printTrashDate;
}
