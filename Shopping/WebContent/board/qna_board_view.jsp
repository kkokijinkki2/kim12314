<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="net.board.db.*" %>
<%
	BoardBean board = (BoardBean)request.getAttribute("boarddata");
%>

<html>
<head>
	<title>Q&A Detail</title>
	<style type="text/css">
	
	
</style>
</head>

<body>
<!-- �Խ��� ���� -->
<div id="container">
		<div><jsp:include page="/header.jsp"></jsp:include></div>
<center><table cellpadding="0" cellspacing="0">
	<br><br><br><br><br><br><br>
	
	<tr>
		<td style="font-family:����; font-size:20" height="16">
			<div align="center">�� ��&nbsp;&nbsp;</div>
		</td>
		
		<td style="font-family:����; font-size:20">
		<%=board.getBOARD_SUBJECT()%>
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:2px;">
		</td>
	</tr>
	
	<tr>
		<td style="font-family:����; font-size:20">
			<div align="center">�� ��</div>
		</td>
		<td style="font-family:����; font-size:20">
			<table border=0 width=900 height=500 style="table-layout:fixed">
				<tr>
					<td valign=top style="font-family:����; font-size:20">
					<%=board.getBOARD_CONTENT() %>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td style="font-family:����; font-size:20">
			<div align="center">÷������</div>
		</td>
		<td style="font-family:����; font-size:20">
		<%if(!(board.getBOARD_FILE()==null)){ %>
		<a href="./boardupload/<%=board.getBOARD_FILE()%>">
			<%=board.getBOARD_FILE() %>
		</a>
		<%} %>
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:2px;"></td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	
	<tr align="center" valign="middle">
		<td colspan="5">
			<font size=4>
			<a href="./BoardReplyAction.bo?num=<%=board.getBOARD_NUM() %>">
			[�亯]
			</a>&nbsp;&nbsp;
			<a href="./BoardModify.bo?num=<%=board.getBOARD_NUM() %>">
			[����]
			</a>&nbsp;&nbsp;
			<a href="./BoardDelete.bo?num=<%=board.getBOARD_NUM() %>">
			[����]
			</a>&nbsp;&nbsp;
			<a href="./BoardList.bo">[���]</a>&nbsp;&nbsp;
			</font>
		</td>
	</tr>
</table></center></div>
<!-- �Խ��� ���� -->
</body>
</html>