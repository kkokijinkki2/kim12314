<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="java.util.List"%>
<%@page import="net.product.db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
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
  					
  					var point= parseInt(document.getElementById("Order_count").value);  
  					var y ="<%=cost%>"; 
  					document.getElementById("point").innerHTML ="적립포인트:"+(x*y)/1000;
  				 	
					}
	</script>

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
	<div class="aa" style="color: black;">각임?</div>
 	
 	<table border=1 >
 	<tr> 
   		<td colspan="4"><%=bean.getProduct_name() %></td>
   	</tr>
 

  <%if(session.getAttribute("detailOrder") == null){ %>
  	<h3>상품이 없습니다.</h3>
  <% }else{%>
	   	<tr>
      		<td colspan="4"><img src="<%=bean.getProduct_image()%>"></td>
      	</tr>
      	<tr>
      		
      		<td>상품 가 격: <%=cost %></td>
      		<td>개수:
      		
      			<select id="Order_count" onchange = "myFunction()">
      				<%for(int i=1;i<=count;i++){ %>
      				<option value="<%=i %>" name="Order_count"> <%=i%></option>
      				<%} %>
      				
      			</select>
      			
      		</td> 
      		<td id="demo">	
      		</td>
      		</td> 
      		<td id="point">	
      		</td>
      		<td>
      		<a href="장바구니 ㄱㄱ"><button>장바구니에 담기</button></a>
      		<a href="OrderOrderAction.po"><button>구입 하기</button></a>
      		</td>
      		
    	  
    	</tr>
	</table>
	

   <%}%>

</center>
</body>
</html>