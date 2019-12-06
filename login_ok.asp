
<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<%
   Dim ID
   Dim PW
   'Dim rs
   'Dim Dbcon
   
  ID=request.form("ID")
  PW=request.form("PW")

  Set Dbcon = Server.CreateObject("ADODB.Connection")
  Dbcon.Open Application("dbConnect")
  'Set rs=Dbcon.ServerCreateObject("ADODB.RecordSet")
  
  sql="SELECT 학생.학생회원id, 회원.비밀번호 FROM 회원,학생 WHERE 회원.id=학생.학생회원id"
  Set rs=Dbcon.Execute(sql)
   
   tt=false
   'rs.open sql,Dbcon
   
  do while not rs.eof
   if rs.fields(0).value = ID then
      if rs.fields(1).value = PW then
         tt= true
      end if
   end if
   rs.movenext
  loop

	sql2="select 학부모회원id from 학부모"
	Set rt=Dbcon.Execute(sql2)
	
	tt2=true
	
	do while not rt.eof
		if rt.fields(0).value=ID then
			tt2=false
		end if
		rt.movenext
   loop
   
if tt2=false then
	Response.Write "<script>alert('학부모 회원으로 로그인해주세요.');history.back(-1);</script>"   
	else
	session("ID")=ID
	
	'추가함
	if tt = true then
	Response.Redirect "../학생login.asp"
	Response.Write "<script>alert(학생회원님 반갑습니다.)</script>"
	response.redirect("학생login.asp")
	else
    Response.Write "<script>alert('아이디 혹은 비밀번호가 일치하지 않습니다');history.back(-1);</script>"
	end if
end if
  
    
 
  
  
   rs.Close

  
   Set rs=nothing

   conncheck.close
   Dbcon.close
  Set conncheck=nothing
  Set Dbcon=nothing

%>
  

<!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->