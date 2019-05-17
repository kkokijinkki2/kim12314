
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<%
	List<String> cates = (List<String>)session.getAttribute("productcate");
%>
   <div id="header" class="header">

   <%if(session.getAttribute("id")!=null) {%>
      <%if(session.getAttribute("id").equals("admin")){ %>
         <a href="AdminPage.mo">ADMINPAGE</a>
      <%}%>   
         <a id="logout">LOGOUT</a>
         <script type="text/javascript">
         	$(document).ready(function(){
         		$("#logout").click(function(){
         			var result = confirm("Are you sure you want to do this?");
         			
         			if(result){
         				 document.getElementById("logout").href = "MemberLogoutAction.mo";
         			}else{
         				
         			}
         		});
         	});
         </script>
         
   <%}else{ %>   
         <a href="MemberLoginForm.mo">LOGIN</a>
           
   <%} %>
         
   </div>


	<div id="index">
		<a href="main.po"><img src="image/h1Logo.png" width="200px"
			height="70px"></a>
	</div>

   <div class="menubar">


      <ul>
       <li><a href="aboutmaxim.jsp">ABOUT MAXIM</a></li>
       
         <li><a href="#">MEDIA</a></li>
         
                  <li><a href="NewsListAction.ne">NOTICE (only member)</a></li>
         
         <li><a href="#" id="current">PRODUCT</a>
            <ul>
            <%for(int i=0 ;i<cates.size();i++) {%>
               <li><a href="ProductInfoAction.po?category=<%=cates.get(i)%>"><%=cates.get(i)%></a></li>
               <%}%>
            </ul>
         </li>
         
         <li><a href="#">CUSTOMER</a>
         <ul><%if(session.getAttribute("id")!=null) {%>
         
         <li><a href="www.daum.net">CART</a></li>
         <li><a href="#">ORDER</a></li>
         <li><a href="#">MYSHOPPING</a></li>
         
        
   <%}else{ %>   
       <li><a href="MemberLoginForm.mo">LOGIN</a></li>
               <li><a href="MemberAddView.mo">JOIN</a></li>
   <%} %>
           <li><a href="BoardList.bo">Q&A</a></li>
          
            </ul>
         </li>
      </ul>
   </div>
</body>
</html>

