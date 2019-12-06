<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<%
   'DB열기
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   
   If Dbcon.state <> 1 Then
      Response.Write "데이터베이스에 연결 X<br/>"
      Response.end
   End if
   
   'SQL 작성
   sql = "SELECT 글번호,id,제목,등록일,강좌.강좌번호,별점 FROM 수강평,강좌 WHERE 제목='최고의강의'"
   Set Rs=Dbcon.Execute(sql)
   
   response.write("<div id='수강평'>")
   response.write("<table border=1px>")
   
   response.write("<tr>")
   response.write("<td>글번호</td>")
   response.write("<td>id</td>")
   response.write("<td>제목</td>")
   response.write("<td>등록일</td>")
   response.write("<td>강좌번호</td>")
   response.write("<td>별점</td>")

   
   'SQL 실행
   do while not(Rs.Eof)
      response.write("<tr>")
      response.write("<td>" & Rs("글번호") & "</td>")
      response.write("<td>" & Rs("id") & "</td>")
      response.write("<td>" & Rs("제목") & "</td>")
      response.write("<td>" & Rs("등록일") & "</td>")
      response.write("<td>" & Rs("강좌번호") & "</td>")
      response.write("<td>" & Rs("별점") & "</td>")
      Rs.movenext
   Loop
   response.write("</table>")
   response.write("</div>")

   'DB닫기
   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
%>