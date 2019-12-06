
<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->

<html>
<head>
</head>
<body>
<br/><br/><br/><br/><br/>
  <form action="login_ok.asp" method="post" name="myForm">
        <fieldset style="width:250px; height:100px;">
            <legend>로그인</legend> 
            <table> 
                <tr> 
                    <td><label for="id">아이디</label></td> 
                    <td><input type="text" name="ID" ></td> 
                </tr> 
                <tr> 
                    <td><label for="pwd">pw</label></td> 
                    <td><input type="text" name="PW" ></td> 
                </tr> 
                <tr> 
                    <td colspan="2" align="right">
					<input type="submit" value="로그인"> 
					  </td> 
                </tr> 
            </table>
	</fieldset> 
 </form>	             
  
  <input type="button" value="뒤로가기" onclick= (location.href="homepage.asp")>
         
                        
                  
                   
             
        
</body>   
</html>



<!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->