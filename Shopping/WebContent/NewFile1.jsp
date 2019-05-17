<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">	
	function call(){
		var x = document.getElementById("selectcategory").value;
		var y = "sayaka";
		
		localStorage.setItem("cate",x);
		document.getElementById("dd").value = localStorage.getItem("cate");
		
		window.location.replace("NewFile1.jsp?select="+x+"&name="+y);
		//location.href = "NewFile2.jsp?select="+x+"&name="+y;
		
	}
</script>
</head>
<body>
<select id = "selectcategory" onchange = "selectcategory()">
	<option disabled selected>Choose a Membername of nogizaka46 </option>
	<option value="sayaka">沙耶香</option>
    <option value ="miona">堀未央奈</option>
    <option value ="ORIGINAL">ORIGINAL</option>
</select>

<button onclick = "call()">send</button>

<input type= "text" value="dsa" name="dd" id="dd"/>	

<%=request.getParameter("select") %>
<%=request.getParameter("name") %>
</body>
</html>