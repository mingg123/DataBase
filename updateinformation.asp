  <!-- #include virtual="/header2.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<%=session("ID") %> 님 

<%
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim pw,email,number

   pw=request("pw")
   email=request("email")
   number=request("number")
   
   sql="update 회원 set 이메일='"&email&"' , 비밀번호='"&pw&"', 전화번호='"&number&"' where 회원.id='" & session("ID") & "';"
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
  <input type="button" value="바뀐정보를통해 로그인을 부탁드립니다." onclick= (location.href="login.asp")>
    </td>                            
</body>   
</html>

<!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->