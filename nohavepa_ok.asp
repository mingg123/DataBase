  <!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->


<%
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim id,pw,pw2,name,birth,email,number,sex
   
   id=request("id")
   pw=request("pw")
   pw2=request("pw2")
   name=request("name")
   birth=request("birth")
   email=request("email")
   number=request("number")
   sex=request("sex")
   
   sql="SELECT id FROM 회원"
   Set rs=Dbcon.Execute(sql)
   
   tt=true
   'rs.open sql,Dbcon
   if pw<>pw2 then
	Response.Write "<script>alert('비밀번호가 일치하지 않습니다.');history.back(-1);</script>"
   end if
   
   do while not rs.eof
   if rs.fields(0).value = id then
         tt= false
   end if
   rs.movenext
   loop
  
   if tt=true then
   sql="insert into 회원(id,생년월일,이메일,성별,비밀번호,이름,전화번호)values('"&id&"','"&birth&"','"&email&"','"&sex&"','"&pw&"','"&name&"','"&number&"');"
   Set rs=Dbcon.Execute(sql)
   else
	Response.Write "<script>alert('이미존재하는 ID입니다.');history.back(-1);</script>"
   end if
 
  


   '추가한것
   session("id")=id
   'SQL 실행


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
  <input type="button" value="학생회원" onclick= (location.href="student.asp")>
   <input type="button" value="학부모회원" onclick= (location.href="parent.asp")>
    </td>                            
</body>   
</html>
