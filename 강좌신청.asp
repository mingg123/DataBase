<!-- #include virtual="/header2.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<%
   ID=session("ID")
   if session("ID")="" then
   Response.Write "<script>alert('로그인 하세요.');history.back(-1);</script>"
   end if
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim ID,NUM

   NUM=request("강좌번호")
   sql3="insert into 강좌신청(id,강좌번호,시작일,종료일,연장기간,수강기간) values ('" & ID & "','" & NUM & "',GETDATE(),DATEADD(m,2,GETDATE()),0,DATEDIFF( DAY,getdate(), DATEADD( m,2,GETDATE())))"
   Response.Write "<script>alert('강좌신청 완료!');history.back(-1);</script>"
   Set Rs3=Dbcon.Execute(sql3)
  
      Dbcon.Close()
   Set Dbcon=Nothing
   Set Rs3=Nothing
   
%>