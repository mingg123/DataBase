
<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<center>
<%
	'DB열기
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Application("dbConnect")
	
	If Dbcon.state <> 1 Then
		Response.Write "데이터베이스에 연걸 X<br/>"
		Response.end
	End if
	
	'SQL 작성
	sql = "select distinct 책.제목, 책.판매가 from 책 where 제목 like '%수_' group by 책.제목, 책.판매가"
	Set Rs=Dbcon.Execute(sql)
	response.write("<b>수학 책 </b>")
	response.write("<div id='책'>")
	response.write("<table border=1px>")
	
	response.write("<tr>")
	response.write("<td><b>제목</b></td>")
	response.write("<td><b>판매가</b></td>")
	


	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr>")
		response.write("<td>" & Rs("제목") & "</td>")
		response.write("<td>" & Rs("판매가") & "</td>")
	

		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>



	
     <input type="button" value="뒤로가기" onclick= (location.href="homepage.asp")>
	 



<!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->
