<!-- #include virtual="/header2.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<%=session("ID") %> 님의 정보입니다.


<%
   

  Set Dbcon = Server.CreateObject("ADODB.Connection")
  Dbcon.Open Application("dbConnect")
  'Set rs=Dbcon.ServerCreateObject("ADODB.RecordSet")
  
  sql="select 회원.id, 회원.생년월일, 회원.이메일, 회원.성별,회원.전화번호 from 회원 where 회원.id='" & session("ID") & "';"
    Set rs=Dbcon.Execute(sql)
   
    response.write("<b>회원 정보 </b>")
	response.write("<div id='회원 정보 '>")
	response.write("<table border=1px>")
	
	response.write("<tr>")
	response.write("<td><b>id</b></td>")
	response.write("<td><b>생년월일</b></td>")
	response.write("<td><b>이메일</b></td>")
	response.write("<td><b>성별</b></td>")
	response.write("<td><b>전화번호</b></td>")



	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr>")
		response.write("<td>" & Rs("id") & "</td>")
		response.write("<td>" & Rs("생년월일") & "</td>")
		response.write("<td>" & Rs("이메일") & "</td>")
		response.write("<td>" & Rs("성별") & "</td>")
		response.write("<td>" & Rs("전화번호") & "</td>")
		
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>
<html>
<head>
</head>
<body>
<br/><br/><br/><br/><br/> 
  <td>
  <input type="button" value="내정보수정하기" onclick= (location.href="reinformation.asp")>
    </td>                            
</body>   
</html>

<!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->