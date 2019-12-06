<!-- #include virtual="/header2.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->

<%
	'DB열기
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Application("dbConnect")
	
	If Dbcon.state <> 1 Then
		Response.Write "데이터베이스에 연걸 X<br/>"
		Response.end
	End if
	
	'SQL 작성
	sql = "select 시험.시험번호, 시험.시험명 from 시험 where 시험.시험명 like '____제2%'"
	Set Rs=Dbcon.Execute(sql)
	response.write("<b>제2외국어 시험 </b>")
	response.write("<div id='시험점수'>")
	response.write("<table border=1px>")
	
	response.write("<tr>")
	response.write("<td><b>시험번호</b></td>")
	response.write("<td><b>시험명</b></td>")
	


	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr>")
		response.write("<td>" & Rs("시험번호") & "</td>")
		response.write("<td>" & Rs("시험명") & "</td>")

		
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