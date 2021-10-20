<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>장바구니 목록</title>
<meta charset="UTF-8">
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
  
   <c:forEach var="dto" items="${list}"> 
   
   <tr>
    <td>${dto.cartno}</td>
    <td>
    <a href="/contents/detail/${dto.contentsno }">
    <img src="/pstorage/${dto.filename}"  class="img-rounded" width="100px" height="100px">
    </td>
    <td>
    <a href="/contents/detail/${dto.contentsno }">${dto.pname}</a>
    
    </td>
    <td>${dto.price}</td>
    <td>${dto.quantity}</td>
   </tr>
   </c:forEach>
   </c:otherwise>
</c:choose>
</tbody>
  
  </table>
</div>
</body>
</html>