<!-- #include virtual="/header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->

<div id="content">
   <form action="nohavepa_ok.asp" method="get"> 
      <table>
         <tr>
               <td> 아이디   </td>
               <td><input type="text" name="id" placeholder="id를입력해주세요"/></td>
         </tr>
         <tr>
               <td> 비밀번호  </td>
               <td> <input type="text" name="pw" placeholder="pw를 입력해주세요"/></td>
          </tr>
         <tr>
               <td> 비밀번호확인 </td>
               <td><input type="text" name="pw2" placeholder="pw2를 입력해주세요"/></td>
         </tr>
         <tr>
               <td> 이름      </td>
               <td> <input type="text" name="name" placeholder="이름을 입력해주세요"/> </td>
         </tr>
         <tr>
               <td> 생년월일   </td>
               <td> <input type="text" name="birth" placeholder="19990302형식으로 입력"/></td>
         </tr>
   
            <tr>
               <td> 이메일   </td>
               <td> <input type="text" name="email" placeholder="111111111@naver.com형식으로입력"/></td>
               
              </tr>
            
            <tr>
               <td> 전화번호   </td>
               <td> <input type="text" name="number" placeholder="01063487983형식으로입력"/></td>
               
              </tr>
            
            <tr>
               <td> 성별 </td>
               <td><select name="sex"><option>m</option><option>w</option></select></td>
         </tr>
          <td>
         <td><input type="SUBMIT" value="회원가입하기"></td>   
            </form> 
            </td>   
         <!-- #include virtual="/footer.asp"--><!--footer 코드를 불러와서 이 위치에 놓음-->