
<center>
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
	sql = "SELECT 강좌.강좌번호, 가격, 학년, 권장진도, 유형, 강사.이름, 강좌명 FROM 강좌,강사 WHERE 강좌명 like '%과학%' AND 강사.강사번호=강좌.강사번호"
	Set Rs=Dbcon.Execute(sql)
	response.write("<b>과학 강좌 </b>")
	response.write("<div id='과학 강좌'>")
	response.write("<table border=1px>")
	
	response.write("<tr>")
	response.write("<td><b>강좌번호</b></td>")
	response.write("<td><b>가격</b></td>")
	response.write("<td><b>학년</b></td>")
	response.write("<td><b>권장진도</b></td>")
	response.write("<td><b>유형</b></td>")
	response.write("<td><b>이름</b></td>")
	response.write("<td><b>강좌명</b></td>")

	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr>")
		response.write("<td>" & Rs("강좌번호") & "</td>")
		response.write("<td>" & Rs("가격") & "</td>")
		response.write("<td>" & Rs("학년") & "</td>")
		response.write("<td>" & Rs("권장진도") & "</td>")
		response.write("<td>" & Rs("유형") & "</td>")
		response.write("<td>" & Rs("이름") & "</td>")
		response.write("<td>" & Rs("강좌명") & "</td>")
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>

</center>

<center>
<div id="content">
      <table>
         <tr>
            <td>강좌번호 </td>
            <td colspan="4" align="right">
            <form action="강좌신청.asp" method="get">
               <td><input type="text" name="강좌번호" placeholder="강좌번호 입력"/></td>
               <td><input type="SUBMIT" value="신청하기"></td>   
            </form>      
                </td> 
         </tr>
      </table>

</div>
</center>

