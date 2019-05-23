<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(window).ready(function() {
		
		
	});
	
</script>
</head>
<body>
<jsp:include page="../main/header.jsp"></jsp:include>
<div  class="container ">
 <table class="table">
 <caption style="font-size: 3em; font-weight: bold; text-align: center;">구매 완료</caption>
  <tr>
      <td>
      	<span>수취인</span> 
      
      </td>
        <td td colspan="2" style="text-align: center;">
      		<span>${pList.orname } </span>
      	 </td>
  </tr>
  <tr>
      <td >
      	<span >주소 api 예정</span> 
      </td>
      <td colspan="2" style="text-align: center;">
      	<span>${pList.oraddr } </span>
      </td>
      
  </tr>
 
  <tr>    
      <td >
      		주문 상품
      </td>
      <td>
      		주문 수량
      </td>
      <td>
      		상품 사진
      </td>
  </tr>
  <c:forEach var="c" items="${cartList}">
  <tr>    
      <td>
      		<span>${c.ptitle }/${c.mrtitle }</span>
      </td>
       <td>
      		<span>${c.ctcount }</span>
      </td>
      <td>
      	<img src="${conPath }/mOrderImage/${c.mrimg}" alt="${c.mrimg}" style="width: 100px;">
      </td> 
  </tr>
  </c:forEach>
  	<tr>
       <td colspan="3" style="text-align: center;">    
       <button class="btn btn-primary" onclick="location.href='${conPath}/Product/productList.do'">쇼핑계속하기</button>
       <button class="btn btn-primary" onclick="location.href='${conPath}/Cart/cartView.do?mid=${mem.mid }'">장바구니</button>
       </td>
    </tr>
  </table>
</div>
</body>
</html>