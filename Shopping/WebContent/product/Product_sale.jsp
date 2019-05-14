﻿
<%@page import="net.member.db.MemberBean"%>
<%@page import="java.lang.reflect.Member"%>

<%@page import="java.util.List"%>
<%@page import="net.product.db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%

	ProductBean bean = (ProductBean)session.getAttribute("detailOrder"); 
  	int count= bean.getProduct_count();
  	int cost=bean.getProduct_cost();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품주문</title>
	<script type="text/javascript">
					function myFunction() {
  					
  					var x= parseInt(document.getElementById("Order_count").value);  
  					var y ="<%=cost%>"; 
  					document.getElementById("demo").innerHTML ="합계:"+(x*y);
  					document.getElementById("count").value=x;
  					document.getElementById("price").value=x*y;
  					
  					var point= parseInt(document.getElementById("Order_count").value);  
  					var y ="<%=cost%>"; 
  					document.getElementById("pointgo").innerHTML ="적립포인트:"+(x*y)/1000;
  					document.getElementById("point").value=(x*y)/1000;
					}
	</script>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="date"/>
</head>

<style type="text/css">

  table{
      width:1000px;
         
   }
   
   td{
      text-align:center;
      font-weight : bold;
      font-size: 2rem;
   }
   
   .aa{
      font-size:3rem;
      color:black;
   }
   
   .b{
      font-size:4rem;
   
   }
   
   
    body{
      background-image: url("./Sagyou/1313.jpg");
      background-repeat: no-repeat;
      background-size: cover;
      
   }
</style>
<body onload = "myFunction()">

<center>

	<div class="aa" style="color: black;">상품을 구매하세요.</div>
<form action="OrderAddAction.oo" method="post"> 	
 	<table border=1 >
 	<tr> 
 		<td colspan="5">
 			<input type="hidden" value="${id}" name="id">
 			<input type="hidden" value="<%=bean.getProduct_code()%>" name="code">
 			<input type="hidden" value="<%=bean.getProduct_image()%>" name="image">
 			<input type="hidden" name="date" value="${date}" >
 			<input type="hidden" value="<%=bean.getProduct_name() %>" name="name">
 			<input type="hidden" id="count" name="count">
 			<input type="hidden" value="ready to delivery" name="result">
 			<input type="hidden" id="price" name="price">
 			<input type="hidden" id="point" name="point">

   		상품명: <%=bean.getProduct_name() %></td>
   	</tr>
 

  <%if(session.getAttribute("detailOrder") == null){ %>
  	<h3>상품이 없습니다.</h3>
  <% }else{%>
	   	<tr>
      		<td colspan="5"><img src="<%=bean.getProduct_image()%>"></td>
      	</tr>
      	<tr>
      		
      		<td>상품 가 격: <%=cost %></td>
      		<td>개수:
      		
      			<select id="Order_count" name="count" onchange = "myFunction()">
      				<%for(int i=1;i<=count;i++){ %>
      				<option value="<%=i %>" name="Order_count"> <%=i%></option>
      				<%} %>
      				
      			</select>
      			
      		</td> 
      		<td id="demo">	
      		</td>
      		</td> 
      		<td id="pointgo">	
      		</td>
      		<td>
      		
      		<input type="submit" value="구입하기">
      		</td>
      		
    	  
    	</tr>
	</table>
	

   <%}%>
</form>
<a href="OrderBasketAction.oo"><button>장바구니에 담기</button></a>
</center>
</body>
</html>