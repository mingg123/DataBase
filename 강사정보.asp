
<center>
<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->

<%
   'DB열기
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   
   If Dbcon.state <> 1 Then
      Response.Write "데이터베이스에 연걸 X<br/>"
      Response.end
   End if

   'SQL 작성
   sql = "select 강사.강사번호,강사.이름, 강사.성별, 강사.과목, 강사.이메일, 학력및경력.학력 from 강사,학력및경력 where 강사.강사번호= 학력및경력.강사번호;"
   Set Rs=Dbcon.Execute(sql)

   response.write("<b>강사 </b>")
   response.write("<div id='강사'>")
   response.write("<table border=1px>")
   
   response.write("<tr>")
   response.write("<td><b>강사번호</b></td>")
   response.write("<td><b>이름</b></td>")
   response.write("<td><b>성별</b></td>")
   response.write("<td><b>과목</b></td>")
   response.write("<td><b>이메일</b></td>")
   response.write("<td><b>학력</b></td>")   
   'SQL 실행
   do while not(Rs.Eof)
      response.write("<tr>")
      response.write("<td>" & Rs("강사번호") & "</td>")
      response.write("<td>" & Rs("이름") & "</td>")
      response.write("<td>" & Rs("성별") & "</td>")
      response.write("<td>" & Rs("과목") & "</td>")
      response.write("<td>" & Rs("이메일") & "</td>")
      response.write("<td>" & Rs("학력") & "</td>")      
      RS.movenext

   Loop
   response.write("</table>")
   response.write("</div>")

   'DB닫기
   Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs=Nothing
%>

</center>



