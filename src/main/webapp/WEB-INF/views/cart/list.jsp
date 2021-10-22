<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>장바구니 목록</title>
<meta charset="UTF-8">
<script>
function dCheck(cartno){
	if(confirm("해당 품목을 삭제하시겠습니까?")){
		//alert(cartno);
		location.href="./delete/"+cartno;
	}else{
		
	}
}
</script>
</head>
<body>
 
<div class="container">
<h3> 나의 장바구니 목록 </h3>
<table class="table table-striped">
   <thead>
    <tr>
    <th>번호</th>
    <th>상품이미지</th>
    <th>상품명</th>
    <th>가격</th>
    <th>수량</th>
    <th>삭제</th>
    </tr>
   </thead>
   <tbody>
<c:choose>   
<c:when test="${empty list}">
   <div class="row">
   <h2>장바구니가 비어있습니다.</h2>  
   </div>
</c:when>
<c:otherwise>
   <% int i = 1; %>
   <c:forEach var="dto" items="${list}"> 
   
   <tr>
    <td><%=i++ %></td>
    <td>
    <a href="/contents/detail/${dto.contentsno }">
    <img src="/pstorage/${dto.filename}"  class="img-rounded" width="100px" height="100px">
    </td>
    <td>
    <a href="/contents/detail/${dto.contentsno }">${dto.pname}</a>
    
    </td>
    <td>${dto.price}</td>
    <td>${dto.quantity}</td>
    <td>
    <a onclick="dCheck(${dto.cartno});">
          <span class="glyphicon glyphicon-trash"></span>
    </a>
    </td>
   </tr>
   </c:forEach>   
   </c:otherwise> 
</c:choose>
</tbody>
  
 </table>
 <br><br>
 <div >
 <h2 align="right"><strong>총 가격 : </strong>${dto.sum }원 <button class="btn btn-default">구매하기</button></h2>

 </div>
</div>
</body>
</html>