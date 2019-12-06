<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<center>
<!-- #include virtual="/header2.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<%
  
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim subject

   subject=request("과목")
   sql="select 과목, 공개자료.자료번호, 공개자료.제목 from 강사, 공개자료 where 강사.강사번호=공개자료.강사번호 and 과목='" & subject & "'; "
   Set Rs=Dbcon.Execute(sql)
  
   response.write("<b>과목별 공개자료</b>")
	response.write("<div id='과목별 공개자료'>")
	response.write("<table border=1px>")
	
	response.write("<tr>")
	response.write("<td><b>과목</b></td>")
	response.write("<td><b>자료번호</b></td>")
	response.write("<td><b>제목</b></td>")



	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr>")
		response.write("<td>" & Rs("과목") & "</td>")
		response.write("<td>" & Rs("자료번호") & "</td>")
		response.write("<td>" & Rs("제목") & "</td>")
		
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	
   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
   
%>
</center>



