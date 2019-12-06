<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%session("id")%> 님

<%
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim grade,graduation,school
   
   grade=request("grade")
   graduation=request("graduation")
   school=request("school")
   
 
   
   sql="insert into 학생(학생회원id,학년,졸업여부,학교) values('"&session("id")&"',"&grade&",'"&graduation&"','"&school&"')"
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
  <input type="button" value="첫 로그인을 시도해보세요!^^" onclick= (location.href="header.asp")>
 
    </td>                            
</body>   
</html>