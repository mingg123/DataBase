<!-- #include virtual="/header2.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<%=session("ID") %> 님 

<html>
<head>
</head>
<body>
<br/><br/><br/><br/><br/> 
  <td>
  <input type="button" value="내정보확인하기" onclick= (location.href="myinformation.asp")>
    </td>                            
</body>   
</html>

<%
   

  Set Dbcon = Server.CreateObject("ADODB.Connection")
  Dbcon.Open Application("dbConnect")
  'Set rs=Dbcon.ServerCreateObject("ADODB.RecordSet")
  
  sql="select 강좌.강좌명, 강좌.강좌번호 , 회원.id from 강좌,회원,강좌신청 where 강좌신청.id=회원.id and 회원.id='" & session("ID") & "';"
  Set rs=Dbcon.Execute(sql)
   
    response.write("<b>수강 내역</b>")
	response.write("<div id='수강 내역'>")
	response.write("<table border=1px>")
	
	response.write("<tr>")
	response.write("<td><b>강좌명</b></td>")
	response.write("<td><b>강좌번호</b></td>")
	response.write("<td><b>id</b></td>")



	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr>")
		response.write("<td>" & Rs("강좌명") & "</td>")
		response.write("<td>" & Rs("강좌번호") & "</td>")
		response.write("<td>" & Rs("id") & "</td>")
		
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>

<!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->