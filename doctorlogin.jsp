<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>student login</title>
<style type="text/css">
<!--
input[type=submit]{
  background-color: brown;
  border: white;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  transition: 0.3s;
  border-radius: 25px;
  font-weight: bold;
}
input[type=submit]:hover {
  background-color:#00FF99;
  color: black;
  font-weight: bold;
  
}

body,td,th {
	color: #000000;
}
html{
height:100%;

}
table{
border-radius:25px;
background-color:#FF99FF
}

.style3 {
	font-size: 20px;
	color: #0000FF;
}
.style4 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>

<%@ include file="index.html" %>
</head>

<body>
 <p>
   <%@ include file="db.jsp" %>
   <%@ page import="java.util.Date"%>
 </p>
 <p>&nbsp;</p>
 <p align="center">
   <%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");
Date date=new Date();

rst=stmt.executeQuery("select * from doctor where email='"+un+"' and password='"+pw+"'");
if(rst.next()){
session.setAttribute("user",un);
%>
<script>
							alert("login successssssss...!");
							window.open("docmenu.html","_self");
							</script>

	<%
	}else{
				
				%>	
				
					<script>
					
						alert("login failured");
					</script>	
						
       <%
	
	}	

}catch(Exception e){
out.println(e);
}
}
%>
</p>
 <center>
 <table   width="500" height="354" border="0" align="center">
  <tr>
   
    <td width="659" height="350"><center>
 <div align="center">
<form id="form1" name="form1" method="post" action="">
  <table width="77%" height="213" border="0" align="center">
    <tr>
      <td width="138" height="43"><div align="right" class="style4">Enter username </div></td>
      <td width="230"><input type="text" name="username" required</td>
    </tr>
    <tr>
      <td height="61"><div align="right" class="style4">enter password</div></td>
      <td> <input type="password" name="password"" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" title="Please include at least 1 uppercase character, 1 lowercase character, and 1 number." required/></td>
    </tr>
    <tr>
      <td><div align="right"></div></td>
      <td><input type="submit" name="Submit" value="Login" /></td>
    </tr>
  </table>
  <div align="right" class="style3">
    <p align="center"><a href="fergotdoc.jsp" target="_self"> forgot password</a></p>
    <p align="center"><a href="newdoc.jsp" target="_self"> New User?</a></p>
  </div>
</form>
</div>
</center></td>
   
  </tr>
</table>
</center>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

 
</body>
</html>
