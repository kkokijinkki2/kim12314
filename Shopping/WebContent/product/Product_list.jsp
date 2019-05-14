
﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="net.product.db.ProductBean"%>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

table.style_Table th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
table.style_Table td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}

</style>
</head>
<body>

<div id="container">
		<div><jsp:include page="/header.jsp"></jsp:include></div>
<%
	List<ProductBean> beans = (List<ProductBean>)session.getAttribute("productbean");
%>
<br><br><br><br><br><br>
<div style="font-size:30pt;font-weight: bold" align="center">상품 목록</div>
<br><br>
<table class="style_Table" border="0"align="center">

	<tr align="center" style=font-size:17pt ;>
		<td>코드</td>
		<td>상품이름</td>
		<td>가격</td>
		<td>재고</td>
		<td>상품등록일</td>
	</tr>
	<%for(ProductBean bean : beans){ %>
	<tr align="center" style="font-size:15pt">
		<td><a href="ProductDetailAction.mo?id=<%=bean.getProduct_code() %>">
         <%=bean.getProduct_code() %>
         </a></td>
		<td><%=bean.getProduct_name() %></td>
		<td><%=bean.getProduct_count() %></td>
		<td><%=bean.getProduct_price() %></td>
		<td><%=bean.getProduct_date() %></td>
	</tr>
	<%} %>
	
</table><br>

<div align="center">
<input type="button" value = "수정" onclick = "ProductUpdateAction.po" style="font-size:15pt"  />
<input type="button" value = "삭제" onclick = "delete" style="font-size:15pt" />
</div>
</div>

</body>

</html>