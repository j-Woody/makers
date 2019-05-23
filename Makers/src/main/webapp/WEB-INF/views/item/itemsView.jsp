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
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script>
var colorList = new Array();
	$(window).ready(function() {
		<c:set value="${itcList }" var = "itcList"/>  
			
		<c:forEach var="i" items="${itcList}" varStatus="status" >
				colorList.push("${i.itcolor}");
				$('#ct').append('<label name="colors" style="background-color:${i.itcolor}"></label><br>');
				document.getElementsByName('colors')['${status.index}'].innerHTML = "선택 색상 : ${i.itcolor}";
		</c:forEach>
	});
	

</script>
</head>
<body>
<jsp:include page="../main/header.jsp"></jsp:include>
<div class="container">
 <table class="table">
 	
      <tr>
      <th>부품정보  </th>
		<td class="text-center">
			부품이름
			<input type="text" readonly="readonly" value="${itemsList.itname }"/>
		
			부품번호
			<label>${itemsList.itnum }</label>
		
			itcategory
			<label>${itemsList.itcategory }</label>
		</td>
	</tr>
	<tr>
		<th>이미지</th>
		<td class="text-center"><img width="300" alt="${itemsList.itimg }" src="${conPath }/inventory/${itemsList.itimg}"> </td>
	</tr>
	<tr>
		<td colspan="2">
			<div id="ct" class="text-center">
				<br>
			</div>
		</td>
	</tr>
	<tr>
	<td colspan="2" class="text-center">
		<button class="btn btn-default" onclick="location.href='${conPath}/Item/itemsList.do?pageNum=${pageNum}&choose=${choose }&insert=${insert }'">목록으로 돌아가기</button>
		<%-- <c:if test="${not empty admin }"> --%>
		
		<%-- <c:if test="${member.mid eq list.mid }"> --%>
		<button class="btn btn-default" onclick="location.href='${conPath}/Item/itemsModifyView.do?itnum=${itemsList.itnum }&pageNum=${pageNum }'">수정</button>
		<button class="btn btn-default" onclick="location.href='${conPath}/Item/itemsDeleteAll.do?&itnum=${itemsList.itnum }&ibnum=${itemsList.ibnum }&pageNum=${pageNum }'">삭제</button>
		<%-- </c:if> --%>
	</td>
	</tr>
     </table>
 </div>    
     
</body>
</html>