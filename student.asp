<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->

<div id="content">
   <form action="student_ok.asp" method="get"> 
      <table>
	
         <tr>
               <td> 학년  </td>
                  <td><select name="grade"><option>1</option><option>2</option><option>3</option></select></td>
        </tr>
		 <tr>
               <td> 졸업여부 </td>
             <td><select name="graduation"><option>Y</option><option>N</option></select></td>
        </tr>
			 <tr>
               <td> 학교 </td>
               <td><input type="text" name="school" placeholder="학교를 입력해주세요."/></td>
        </tr>
          <td>
         <td><input type="SUBMIT" value="회원가입하기"></td>   
            </form> 
            </td>   
         <!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->