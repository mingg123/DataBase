<%
option explicit
' 변수를 선언하고 사용하겠다고 미리 선언해주는 부분
' asp는 변수의 선언없이 자동적으로 사용할 수 있지만... 이렇게 선언해주는 것이 좋은 프로그래밍 습관이라고 하더군요.
%>


<%
if session("id")="" then
' 만약에 session("id")라는 값이 null이라면... 처음에 이 페이지에 접근하면 당연히 이 값은 없다.
' 이 값(session("id"))은 로그인을 하게 되면서 login_ok.asp 에서 생성된다. 
%>

<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<!--메타 태그는 그냥 넘어가도 된다. 하지만 나중에는 꼭 한번 공부해야지...
-->
<title></title>
<meta name="generator" content="Namo WebEditor v5.0">


<script language="Javascript">
<!--
 function sendit()
 {
	if (document.myform.id.value=="")
	{
		alert("아이디를 입력해 주세요")
		document.myform.id.focus()
		return false;
	}
	if (document.myform.pwd.value=="")
	{
		alert("패스워드를 입력해 주세요")
		document.myform.pwd.focus()
		return false;
	}
	document.myform.submit();
 }
 /*sendit이라는 함수는 입력폼의 값이 제대로 입력되었는지를 확인해서 해당되는 페이지로 전송해주는 클라이언트 측 스크립트이다.*/
 
 function sendregister()
 {
	location.href = "member/register.asp"
	/*sendregister라는 함수는 뒤에서 나오는 회원가입 버튼을 눌렀을때 호출되는 함수로서 register.asp라는 페이지로 분기시킨다.*/
 }
-->
</script>


<style>
a {text-decoration:none;color:black}
a:hover {text-decoration:none;}
</style>
<!--css스타일 시트 부분으로서 링크의 색깔을 제어한다.
	앞으로 body태그가 나오는데... 여기서부터는 컨트롤 들을 위주로 설명하겟습니다. 
	html은 다 이해하시니까...
-->

</head>

<body leftmargin="0" topmargin="0" bgcolor="white" text="black" link="blue" vlink="purple" alink="red">

<table border="0" width="681" cellpadding="0" cellspacing="0">
   <tr>
      <td width="170" height="243" valign="top">
   
       <form name="myform" action="member/login_ok.asp" method="POST">
       <!--form이름은 myform이며, 이 form의 내용은 login.asp라는 페이지로 제출됩니다. post는 아시죠???-->
       <div align="left">
		<table border="0" width="153">
			<tr>
				<td width="147" bgcolor="#FFCC66" colspan="3">
					<p><span style="font-size:8pt;">&nbsp;</span></p>
				</td>
				
			</tr>
			
			<tr>
				<td width="69" bgcolor="#FFCC99" height="24">
					<p align="right"><span style="font-size:9pt;">ID &nbsp;</span></p>
				</td>
				<td width="8" bgcolor="#FFCC99" height="24">
					<p><span style="font-size:9pt;">&nbsp;</span></p>
				</td>
				<td width="62" bgcolor="#FFCC99" height="24">
                <p><span style="font-size:9pt;">
                
					
                <input type="text" name="id" maxlength="10" size="12">
                <!--텍스트 박스 삽입 이름은 id라는 박스이며 최대 10글자만 입력할 수 있다.-->
                </span></p>
				</td>
			</tr>
			<tr>
				<td width="69" bgcolor="#FFCC99">
					<p align="right"><span style="font-size:9pt;">PWD &nbsp;</span></p>
				</td>
				<td width="8" bgcolor="#FFCC99">
					<p><span style="font-size:9pt;">&nbsp;</span></p>
				</td>
				<td width="62" bgcolor="#FFCC99">
					<p><span style="font-size:9pt;">
					<input type="password" name="pwd" maxlength="12" size="12">
					<!--password라는 입력박스이며, 최대 12글자를 입력할 수 있다.-->
					</span></p>
				</td>
			</tr>
			<tr>
				<td width="147" colspan="3" bgcolor="#FFCC66">
					<p align="center"><span style="font-size:9pt;">&nbsp;
					<input type="button" name="but1" value="LogIn" onclick="sendit();"> 
						&nbsp;<input type="button" name="but2" value="register" onclick="sendregister()"></span></p>
					<!--버튼이 위치하며, 하나의 버튼은 이름이 login으로 sendit()함수를 호출한다.
						그리고 다른 버튼은 register라는 이릅으로 sendregister라는 함수를 호출한다.
					-->
				</td>
			</tr>
			<tr>
				<td width="147" colspan="3" bgcolor="#FFCC66">
					<p align="right"><span style="font-size:9pt;"><a href="member/forgot.asp" target="main">Forgot PassWord</a>	
					<!--이 링트는 번호를 잊었을 때 이동하는 페이지인 forgot.asp라는 페이지로 이동하는 링크입니다.-->
					&nbsp;</span></p>
				</td>
			</tr>
			<tr>
				<td width="147" colspan="3" bgcolor="#FFFFCC" height="200">
					<p>&nbsp;</p>
			</td>
			</tr>
		</table>
        </div>
		</form>
	</td>
        <td height="243" width="48" valign="top"><%=adobj.GetAdvertisement("inc/adv.txt")%></td>
        <!--위에서 만들어준 ad.rotator라는 인스너스를 이용해서 그림을 보여준다.
			태요 asp책에 잘 설명되어 있다. 여기서 adv.txt라는 텍스트 파일을 열어서 그 파일의 내용을 읽고,
			그림을 보여준다. 
        -->
        <td height="243" width="12" valign="top">
            <p>&nbsp;</p>
</td>
        <td height="243" width="451" valign="top">
            <table border="0" width="387" align="center">
                <tr>
                    <td width="381">
                        <p><span style="font-size:8pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381" bgcolor="#CCCCCC">
                        <p><span style="font-size:9pt;">&nbsp;▶ &nbsp;&nbsp;최근 
                        새로 올라온 강좌</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
            </table>
            <p><br><br></p>
            <table border="0" align="center" width="387">
                <tr>
                    <td width="381" bgcolor="#CCCCCC">
                        <p><span style="font-size:9pt;">&nbsp;▶ &nbsp;공지사항</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:8pt;">&nbsp;</span></p>
                    </td>
                </tr>
            </table>
</td>
    </tr>

</table>

<p>&nbsp;</p>
</body>
</html>


<%else
' 만약에 session("id")값이 존재 한다면, 즉 login이 된 사용자라면 다른 html파일을 보여준다.
%>


<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title></title>
<meta name="generator" content="Namo WebEditor v5.0">
<style>
a {text-decoration:none;color:black}
a:hover {text-decoration:none;}
</style>
</head>

<body leftmargin="0" topmargin="0" bgcolor="white" text="black" link="blue" vlink="purple" alink="red">

<table border="0" width="681" cellpadding="0" cellspacing="0">
   <tr>
      <td width="170" height="243" valign="top">
   
      
       <div align="left">
		<table border="0" width="153">
			<tr>
				<td width="147" bgcolor="#FFCC66">
					<p><span style="font-size:8pt;">&nbsp;</span></p>
				</td>
				
			</tr>
			
			<tr>
				<td width="147" bgcolor="#FFCC99" height="11">
					<p align="left">
                
					
                <span style="font-size:9pt;"><b><%=session("name")%>님 어서오세요</b><br>
                <!--환영한다는 메세지를 보여준다. session("id")가 있다는 말은 로그인이 되었음을 나타내고 
                    session("name")값도 당영하게 가지고 있다. login_ok.asp라는 파일을 나중에 보게되면 잘 알게 된다.-->
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <a href="member/logout.asp">&lt;Log Out&gt;</a></span></p>
                 <!--로그 아웃 할 수 있는 페이지logout.asp로 이동시키는 링크를 만들어 준다.-->
				</td>
			</tr>
			<tr>
				<td width="147" bgcolor="#FFCC99">
					<p align="center"><span style="font-size:9pt;"><a href="member/edit.asp">개인 
                                정보 수정</a></span></p>
                     <!--개인 정보를 수정할 수 있는 페이지로 이동해준다. edit.asp 이다.-->
				</td>
			</tr>
			<tr>
				<td width="147" bgcolor="#FFCC99">
                                <p align="center"><span style="font-size:9pt;"><a href="member/edit_pwd.asp">비밀 
                                번호 수정</a></span></p>
                     <!--비밀 번호를 수정할 수 있는 페이지로 이동시켜 준다.-->
				</td>
			</tr>
			<tr>
				<td width="147" bgcolor="#FFCC99">
                                <p align="center"><span style="font-size:9pt;"><a href="member/edit_email.asp">메일 
                                주소 수정</a></span></p>
                     <!--메일 주소를 수정하는 페이지로 이동시켜 준다.-->
				</td>
			</tr>
			<tr>
				<td width="147" bgcolor="#FFCC66">
					<p align="center"><span style="font-size:9pt;">&nbsp;</span></p>
				</td>
			</tr>
			<tr>
				<td width="147" bgcolor="#FFCC66">
					<p align="right"><span style="font-size:9pt;">	
					&nbsp;</span></p>
				</td>
			</tr>
			<tr>
				<td width="147" bgcolor="#FFFFCC" height="180">
					<p>&nbsp;</p>
			</td>
			</tr>
		</table>
        </div>
		
	</td>
        <td height="243" width="48" valign="top"><%=adobj.GetAdvertisement("inc/adv.txt")%></td>
        <!--그림을 보여주느 부분-->
        <td height="243" width="12" valign="top">
            <p>&nbsp;</p>
</td>
        <td height="243" width="451" valign="top">
            <table border="0" width="387" align="center">
                <tr>
                    <td width="381">
                        <p><span style="font-size:8pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381" bgcolor="#CCCCCC">
                        <p><span style="font-size:9pt;">&nbsp;▶ &nbsp;&nbsp;최근 
                        새로 올라온 강좌</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
            </table>
            <p><br><br></p>
            <table border="0" align="center" width="387">
                <tr>
                    <td width="381" bgcolor="#CCCCCC">
                        <p><span style="font-size:9pt;">&nbsp;▶ &nbsp;공지사항</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:9pt;">&nbsp;</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="381">
                        <p><span style="font-size:8pt;">&nbsp;</span></p>
                    </td>
                </tr>
            </table>
</td>
    </tr>

</table>

<p>&nbsp;</p>
</body>
</html>




<%end if%>