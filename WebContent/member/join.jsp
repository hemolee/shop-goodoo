<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="sub_img.html"%>
<%@ include file="sub_menu.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join Us</title>
<style type="text/css">
fieldset legend{font-weight:bold; font-size:18px; color:white;}
label.add{font-weight:bold; width:80px; height:auto;float:left;}
fieldset {width:100%; height:auto; margin-right:auto; margin-left:100px; padding:10px; overflow:hidden;}
form{ weight:60%; margin-right:auto;margin-left:auto;}
</style>
</head>
<body>

<form id="join" action="NonageServlet?command=join" method="post" name="form"> 
<fieldset>
<legend>Basic Info</legend>


	<label for="id" class="add">ID </label>
	 <input type=text name=id size=12 > 
	 <input type=hidden name=reid > 
	 <!--  
<input type= hidden> : 사용자 눈에는 안보이게하되, 특정한 값을 전송하기 위해 사용한다. 
안보이지만 값을 넘길수있음.(element이기때문) -여기서는 reid가 hidden임(안보이는 id값으로 사용중)
	  -->
	 <input type="button" value="중복확인" class="dup" onclick="idcheck()">
<br>	
 
	<label for="pw" class="add">Pwd </label>
	 <input type=password name=pwd> 
<br>	
 
	<label for="pw_confirm" class="add">Retype Pwd  </label> 
	 <input type=text name=pwdcheck> 
<br>
 
	<label for="name" class="add">Name  </label>
	 <input type=text name=name > 
<br>
 
	<label for="email" class="add">E-Mail  </label>
	 <input type=text name=email> 
<br>
</fieldset>
<fieldset>
	<legend>Optional</legend>
 
	<label for="post" class="add">Zip Code  </label>
	 <input type=text name=zipNum size=12> 
	 <input type=button value="주소 찾기"  class= "dup" onclick="post_zip()"> 
<br>
 
	<label for="addr" class="add">Address  </label>
	 <input type=text name=addr1 size=28> 
<br>
 	<label for = "addr" class="add"> </label>
	<input type=text name=add2 size=40> 
<br>
 <label for="phone" class="add">Phone number  </label>
	 <input type=text name=phone > 
<br>
 </fieldset>
	<div class="clear"></div>
	<div id=buttons>
	<input type="button" value="회원가입" class="submit" onclick="go_save()" >
	<input type="reset" value="취소" class="cancel">
	</div>
</form>	 
</body>
</html>
<%@ include file="../footer.jsp"%>