<!-- #include virtual="/header2.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->


<center>
<%
	ID=session("ID")
	'DB열기
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Application("dbConnect")
	
	If Dbcon.state <> 1 Then
		Response.Write "데이터베이스에 연걸 X<br/>"
		Response.end
	End if
	
	'SQL 작성
	sql = "select distinct 책.제목, 책.판매가, 책.책번호 from 책 where 제목 like '%한국사%' "
	Set Rs=Dbcon.Execute(sql)
	response.write("<b>한국사 책 </b>")
	response.write("<div id='한국사책'>")
	response.write("<table border=1px>")
	
	response.write("<tr>")
	response.write("<td><b>책번호</b></td>")
	response.write("<td><b>제목</b></td>")
	response.write("<td><b>판매가</b></td>")
	


	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr>")
		response.write("<td>" & Rs("책번호") & "</td>")
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



	

	 


<div id="content">
      <table>
         <tr>
            <td>책번호 </td>
            <td colspan="4" align="right">
            <form action="한국사책결제.asp" method="post">
               <td><input type="text" name="책번호" placeholder="책번호 입력"/></td>
			   <td><input type="text" name="수량" placeholder="수량 입력"/></td>
               <td><input type="SUBMIT" value="구매하기"></td>   
            </form>      
                </td> 
         </tr>
      </table>

</div>
</center>





