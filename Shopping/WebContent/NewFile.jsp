<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="euc-kr">
<title>CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#jb-container {
	width: 1480px;
	margin: 10px auto;
	padding: 10px;
	border: 1px solid #bcbcbc;
}

#jb-header {
	height: 20px;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #bcbcbc;
}

#jb-content {
	width: 580px;
	padding: 20px;
	margin-bottom: 20px;
	float: left;
	border: 1px solid #bcbcbc;
}

#jb-sidebar {
	width: 260px;
	padding: 20px;
	margin-bottom: 20px;
	float: right;
	border: 1px solid #bcbcbc;
}

#jb-footer {
	clear: both;
	padding: 20px;
	border: 1px solid #bcbcbc;
}

@media ( max-width : 480px ) {
	#jb-container {
		width: auto;
	}
	#jb-content {
		float: none;
		width: auto;
	}
	#jb-sidebar {
		float: none;
		width: auto;
	}
}
</style>
</head>
<body>
	<div id="jb-container">
		<div id="jb-header">로그인 장바구니 주문 공지사항 Q&A 리뷰</div>
		<div id="jb-content">
			<h2>Content</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Aenean nec mollis nulla. Phasellus lacinia tempus mauris eu laoreet.
				Proin gravida velit dictum dui consequat malesuada. Aenean et nibh
				eu purus scelerisque aliquet nec non justo. Aliquam vitae aliquet
				ipsum. Etiam condimentum varius purus ut ultricies. Mauris id odio
				pretium, sollicitudin sapien eget, adipiscing risus.</p>
		</div>
		<div id="jb-sidebar">
			<h2>Sidebar</h2>
			<ul>
				<li>Lorem</li>
				<li>Ipsum</li>
				<li>Dolor</li>
			</ul>
		</div>
		<div id="jb-footer">
			<p>Copyright</p>
		</div>
	</div>
</body>
</html>