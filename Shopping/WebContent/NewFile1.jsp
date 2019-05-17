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
		
		//window.location.replace("NewFile1.jsp?select="+x+"&name="+y);
		location.href = "NewFile1.jsp?select="+x+"&name="+y;
		
	}

</script>
<style>

</style>
</head>
<body>
	
</body>
</html>