<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "net.product.db.ProductBean" %>
       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세</title>
<style type="text/css">
	img{
		image-rendering:auto;
	}
	
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<div><jsp:include page="/header.jsp" flush="false"></jsp:include></div>
<h2>상품상세</h2>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="date"/>

<form method="post" action="ProductUpdateView.po">
<table border="1">
	<tr>

		<td>상품코드</td><td colspan="5"><input type="text" name="code" id="code" value =<%=((ProductBean)session.getAttribute("detailProduct")).getProduct_code()%> readonly/></td>

	</tr>
	<tr>
		<td>상품분류</td><td colspan="5"><%=((ProductBean)session.getAttribute("detailProduct")).getProduct_category()%></td>

		
		<div><jsp:include page="/header.jsp" flush="false"></jsp:include></div>
	

		<div><jsp:include page="/NewFile.jsp" flush="false"></jsp:include></div>
	 
		<div><jsp:include page="/bottom1.jsp" flush="false"></jsp:include></div>
		<div><jsp:include page="/bottom.jsp" flush="false"></jsp:include></div>
		


	<tr>
		<td>수량</td><td colspan="3">&nbsp;:&nbsp;<%=((ProductBean)session.getAttribute("detailProduct")).getProduct_count() %></td>
		<td>상품등록일</td>
		<td>
			<input type="text" name="date" id="date" value="${date}" readonly>
		</td>
	</tr>
	<tr align="center">
		<td><input type="submit" value="수정" ></td>
	</tr>
</table>
</form>
<a href ="ProductList.po"><button>목록</button></a>
</body>
</html>