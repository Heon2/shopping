<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
  <title>상품 정보</title>
  <meta charset="utf-8">
</head>
<body> 

<div class="container">
<form class="form-horizontal" 
        action="/cart/create"
        method="post"
        >
<input type="hidden" name="pname" value="${dto.pname}">
<input type="hidden" name=id value="${id}">
<h2 class="col-sm-offset-2 col-sm-10">${dto.pname}의 상품정보</h2>
 <table class="table table-bordered">
 <tr>
 	<td colspan="2" style="text-align: center">
 		<img src="${root}/pstorage/${dto.filename}" 
 		width="250px" height="250px" class="img-rounded" >
 	</td>
 </tr>
 <tr>
 	<th>상품명</th>
 	<td>${dto.pname}</td>
 </tr>
 <tr>
 	<th>가격</th>
 	<td>${dto.price}</td>
 </tr>
 <tr>
 	<th>상세정보</th>
 	<td>${dto.detail}</td>
 </tr>
 <c:choose>
 	<c:when test="${empty sessionScope.id || sessionScope.grade != 'A'}">
 <tr>
 	<th>수량</th>
 	<td>
 	<div class="col-sm-2" >
    	<select id="quantity" name="quantity" class="form-control">
    		<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>   	
    	</select>
    
    </div>
 </tr>
 </c:when>
 </c:choose>
 	
 </tr>
 
 </table>
 <div style="text-align: center">
 <button type="button" class="btn btn-default" onclick="location.href='${root}/contents/mainlist/${dto.cateno}'">상품목록</button>
 <c:choose>
 	<c:when test="${empty sessionScope.id }">
		<button type="button" class="btn btn-default" onclick="location.href='/member/login'">장바구니에 추가</button>
		<button type="reset" class="btn btn-default">취소</button>
	</c:when>
 	<c:when test="${not empty sessionScope.id && sessionScope.grade != 'A'}">
	 	<button type="submit" class="btn btn-default">장바구니에 추가</button>
	 	<button type="reset" class="btn btn-default">취소</button>
 	</c:when>
</c:choose>
 </div>
 
 <br>
</form>
</div>

</body>
</html>