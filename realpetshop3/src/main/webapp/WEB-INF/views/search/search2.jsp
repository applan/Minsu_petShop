<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../includes/header.jsp"%>
<div class="sub_search_box">
	<dl style="height: 350px;">
		<dt>브랜드</dt>
		<dd>
			<div class="benefit_box"
				style="position: absolute; overflow: scroll; overflow-x: hidden; height: 300px; width: 220px;">
				<c:forEach var="vo" items="${list}">
				<span> <input type="checkbox" id="brand${vo.bno }" name="brand[]" value="${vo.bno }">
				<label for="${vo.bno }" class="" title="">${vo.pname }</label> <br />
				</span> 
				</c:forEach>
			</div>
		</dd>
	</dl>
	<dl style="height: 350px;">
		<dt>연령</dt>
		<dd>
			<div class="benefit_box"
				style="position: absolute; overflow: scroll; overflow-x: hidden; height: 300px; width: 220px;">
				<span> <input type="checkbox" id="1old" name="brand[]" value="1old">
				<label for="1old" class="" title="">1세</label> <br />
				</span> 
				<span> <input type="checkbox" id="2old" name="brand[]" value="2old">
				<label for="2old" class="" title="">2~5세</label> <br />
				</span>
				<span> <input type="checkbox" id="2old" name="brand[]" value="2old">
				<label for="2old" class="" title="">6~7세</label> <br />
				</span>  
			</div>
		</dd>
	</dl>
<dl style="height: 350px;">
		<dt>주원료</dt>
		<dd>
			<div class="benefit_box"
				style="position: absolute; overflow: scroll; overflow-x: hidden; height: 300px; width: 220px;">
				<span> <input type="checkbox" id="1old" name="old[]" value="1old">
				<label for="1old" class="" title="">1세</label> <br />
				</span> 
				<span> <input type="checkbox" id="2old" name="old[]" value="2old">
				<label for="2old" class="" title="">2~5세</label> <br />
				</span>
				<span> <input type="checkbox" id="2old" name="old[]" value="6old">
				<label for="6old" class="" title="">6~7세</label> <br />
				</span>  
			</div>
		</dd>
	</dl>
	<dl style="height: 350px;">
		<dt>기능</dt>
		<dd>
			<div class="benefit_box"
				style="position: absolute; overflow: scroll; overflow-x: hidden; height: 300px; width: 220px;">
				<span> <input type="checkbox" id="diet" name="functions[]" value="diet">
				<label for="diet" class="" title="">다이어트</label> <br />
				</span> 
				<span> <input type="checkbox" id="immunity" name="functions[]" value="immunity">
				<label for="immunity" class="" title="">면역력 강화</label> <br />
				</span>
				<span> <input type="checkbox" id="allergy" name="functions[]" value="allergy">
				<label for="allergy" class="" title="">알러지 예방</label> <br />
				</span> 
				<span> <input type="checkbox" id="bone" name="functions[]" value="bone">
				<label for="bone" class="" title="">뼈/관절 강화</label> <br />
				</span> 
				<span> <input type="checkbox" id="skin" name="functions[]" value="skin">
				<label for="skin" class="" title="">피부/털 강화</label> <br />
				</span> 
			</div>
		</dd>
	</dl>
	
	</div>
<%@include file="../includes/footer.jsp"%>