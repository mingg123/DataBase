<!-- #include virtual="/header2.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<%=session("ID") %> 님! 수정할 정보를 입력해주세요


<html>
<head>
</head>
<body>
<br/><br/><br/><br/><br/>
 <center>
<div id="content">
      <table>
         <tr>
            <td>내정보 </td>
            <td colspan="4" align="right">
            <form action="updateinformation.asp" method="get">
               <td><input type="text" name="pw" placeholder="수정할 비밀번호를 입력해주세요"/></td><br/>
			   <td><input type="text" name="email" placeholder="수정할 이메일을 입력해주세요"/></td><br/>
			   <td><input type="text" name="number" placeholder="수정할 전화번호를 입력해주세요"/></td><br/>
					 
               <td><input type="SUBMIT" value="수정하기"></td>   
            </form>      
                </td> 
         </tr>
      </table>

</div>
</center>
            
  
  <input type="button" value="뒤로가기" onclick= (location.href="myinformation.asp")>
         
                        
                  
                   
             
        
</body>   
</html>



<!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->