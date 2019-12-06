<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<%
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim work
   
   work=request("work")
	
   
   sql="insert into 학부모(학부모회원id,직업) values('"&session("id")&"','"&work&"')"
   Set rs=Dbcon.Execute(sql)
 
   
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
  <input type="button" value="첫 로그인을 시도해보세요!^^" onclick= (location.href="homepage2.asp")>
 
    </td>                            
</body>   
</html>