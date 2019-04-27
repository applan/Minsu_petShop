<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<title>상품 목록</title>

    <script type="text/javascript">
        contextPath = "${pageContext.request.contextPath}";
        ;(function($) {
            // DOM Ready
            $(function() {
                // Binding a click event
                // From jQuery v.1.7.0 use .on() instead of .bind()
                $('.popup').bind('click', function(e) {
                    var id = '.element_to_pop_up_' + $(this).attr('name');
                    // Prevents the default action to be triggered.
                    e.preventDefault();
                    // Triggering bPopup when click event is fired
                    $(id).bPopup();
                });
            });
        })(jQuery);
    </script>
</head>
<body>
<table id="box-table-a" class="table table-hover">
    <tr>
        <th scope="col">상품 번호</th>
        <th scope="col">상품 명</th>
        <th scope="col">크기</th>
        <th scope="col">소재</th>
        <th scope="col">구성</th>
        <th scope="col">옵션</th>
        <th scope="col">제조/수입</th>
        <th scope="col">제조국</th>
        <th scope="col">가격</th>
        <th scope="col">재고</th>
        <th scope="col">등록자</th>
        <th scope="col">등록일</th>
    </tr>

    <c:choose>
        <c:when test="${hasGoods == false}">
            <tr>
                <td colspan="12">
                    상품이 없습니다.
                </td>
            </tr>
        </c:when>

        <c:otherwise>
            <c:forEach var="list" items="${goodsVOList}">
                <tr id="goods_${list.number}">
                    <td>${list.number}</td>
                    <td>
                        <a href="#" class="popup" name="${list.number}">
                                ${list.name}
                        </a>
                        <div class='element_to_pop_up_${list.number} b_pop_up' style='display:none;'>
                            <span class='button b-close'><span>X</span></span> <!-- 닫기 버튼 (스타일은 알아서 지정) -->
                            <div class='content'>상품설명<br/>${list.description}</div> <!-- 컨텐츠가 들어갈 영역 지정 (이미지, html 등.. 여러가지를 동적으로 부를수 있다. -->
                        </div>
                    </td>
                    <td>${list.size}</td>
                    <td>${list.material}</td>
                    <td>${list.component}</td>
                    <td>${list.options}</td>
                    <td>${list.manufacturer}</td>
                    <td>${list.madein}</td>
                    <td>${list.price}</td>
                    <td>${list.stock}</td>
                    <td>${list.userEmail}</td>
                    <td><fmt:formatDate value="${list.createdDate}" pattern="yyyy-MM-dd"/></td>
                </tr>
            </c:forEach>
        </c:otherwise>
    </c:choose>
</table>
<%@include file="../includes/footer.jsp"%>