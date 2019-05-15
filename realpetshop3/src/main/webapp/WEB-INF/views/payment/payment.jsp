<%@page import="com.spring.domain.ShopVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.0.0.min.js" type="application/javascript"></script>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<script>
 
</script>
<script type="text/javascript">
BootPay.request({
	price: "${Totl}", //실제 결제되는 가격 goodsPrice+2500
	application_id: "5cbecf7a396fa65278e54256",
	name: "상품들", //결제창에서 보여질 이름 //goodsName
	show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
	items: [
		{
			item_name: "츄르", //상품명 goodsName
			qty: 1, //수량
			unique: '123', //해당 상품을 구분짓는 primary key
			price: "${Totl}", //상품 단가 goodsPrice
			
		}
	],
	order_id: '고유order_id', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.랜덤값 생성
	params: {callback1: 'callback1', callback2: 'callback2', customvar1234: 'customvar'},
	account_expire_at: '2019-05-25', // 가상계좌 입금기간 제한 ( yyyy-mm-dd 포멧으로 입력해주세요. 가상계좌만 적용됩니다. )
	extra: {
		start_at: '2019-04-24', // DATE 지정 정기 결제 시작일 - 시작일을 지정하지 않으면 그 날 당일로부터 결제가 가능한 Billing key 지급
		end_at: '2019-10-10' // DATE 지정 정기결제 만료일 -  기간 없음 - 무제한
	}
}).error(function (data) {
	//결제 진행시 에러가 발생하면 수행됩니다.
	location.href='paymentfail'
	console.log(data);
}).cancel(function (data) {
	//결제가 취소되면 수행됩니다.
	location.href='paymentfail'
	console.log(data);
}).ready(function (data) {
	// 가상계좌 입금 사용X
	console.log(data);
}).confirm(function (data) {
	//결제 재고 화면 로직
	console.log(data);
	var enable = true; // 재고 수량 관리 로직 혹은 다른 처리
	if (enable) {
		this.transactionConfirm(data); // 조건이 맞으면 승인 처리를 한다.
	} else {
		this.removePaymentWindow(); // 조건이 맞지 않으면 결제 창을 닫고 결제를 승인하지 않는다.
	}
}).close(function (data) {
    // 결제창이 닫힐때 수행되는 것(성공/실패여부 상관없음)
    console.log(data);
}).done(function (data) {
	//결제가 정상적으로 완료되면 수행됩니다
	alert("${Totl}원이 정상 결제되었습니다. 감사합니다!!! :D");
	location.href='paymentsuccess?resultTo=${Totl}';
	console.log(data);
});
</script>
</body>
</html>