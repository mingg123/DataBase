<!-- #include virtual="/header2.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->


<%

	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Application("dbConnect")
	Dim ID
	Dim NUM3
	Dim NUM4 
	Dim MONEY
	Dim ADDR
	NUM3=request.form("수량")
	ID=session("ID")
	NUM4=request.form("책번호")

	
	
   sql="select 판매가 from 책 where 책번호='"&NUM4&"'"
   Set Rs=Dbcon.Execute(sql)
	MONEY=Rs("판매가")

	
	sql2="select top(1) 배송관리주소 from 배송관리주소,회원 where 회원.id='" & session("ID") & "' and 회원.id=배송관리주소.id"
	Set Rt=Dbcon.Execute(sql2)
	ADDR=Rt("배송관리주소")
	
	sql3="select 주문번호 from 주문 order by 주문번호 DESC"
	Set Rq=Dbcon.Execute(sql3)

	

	sql4="insert into 주문(주문번호,번호,주문일,결제금액,진행상태,수량,주소,id,책번호) values({주문번호},{번호},{주문일},{결제금액},'{진행상태}',{수량},'{주소}','{id}','{책번호}')"
	sql4=Replace(sql4,"{주문번호}",Rq("주문번호")+1)
	sql4=Replace(sql4,"{번호}",1)
	sql4=Replace(sql4,"{주문일}", "GETDATE()")
	sql4=Replace(sql4,"{결제금액}",MONEY*NUM3)
	sql4=Replace(sql4,"{진행상태}","입금전")
	sql4=Replace(sql4,"{수량}",NUM3)
	sql4=Replace(sql4,"{주소}",ADDR)
	sql4=Replace(sql4,"{id}",ID)
	sql4=Replace(sql4,"{책번호}",NUM4)
	response.write"<script>alert("" " & sql4 &" "");</script>"
	Set Rw=Dbcon.Execute(sql4)
	
	Response.Write "<script>alert('책구매 성공');history.back(-1);</script>"
	
		'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
	Set Rt=Nothing
	Set Rq=Nothing
	Set Rw=Nothing

%>
