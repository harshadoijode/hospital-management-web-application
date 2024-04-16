<!DOCTYPE html>
<html>
<head>
<style>

body {
background-color: #C9D7E5;

}
.style3 {font-size: 20px}
.style4 {
	font-size: 36px;
	color: #FFFF00;
}
-->
</style></head>

<body>
<%@ include file="index.html" %>
<%@ include file="db.jsp" %>

<div align="center">
<p class="style3">Forget Password </p>
</div>
<% if(request.getParameter("check")==null){ %>
<form method="get" action="">
<table width="480" border="1" align="center">
<tr>
<td width="150" bgcolor="#00CCFF">enter your Email ID </td>
<td width="257"><input name="email" type="text" id="email" required/></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" name="check" value="check" /></td>
</tr>
</table>
</form>
<% } %>
<% 

if(request.getParameter("check")!=null){

rst=stmt.executeQuery("select email from doctor where email='"+request.getParameter("email")+"' ");
if(rst.next()){
%>
<form id="form1" name="form1" method="get" action="">
<input name="email" type="hidden" value="<%= request.getParameter("email") %>" />
<table width="480" border="1" align="center">

<tr>
<td width="176" bgcolor="#00CCFF">Enter Phone Number</td>
<td width="288"><input name="answer" type="text" id="answer" required /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" name="verify" value="verify" /></td>
</tr>
</table>
</form>

<%
}else{
%>
<script>alert("No such Customer exist");</script>
<%
}




}
%>





<% 

if(request.getParameter("verify")!=null){

rst=stmt.executeQuery("select password from doctor where email='"+request.getParameter("email")+"' and phoneno='"+request.getParameter("answer")+"' ");
if(rst.next()){
%>
<h2 align="center" class="style4">Password is : <%= rst.getString(1) %></h2>

<%
}else{
%>
<script>alert("Incorrect answer");</script>
<%
}


}
%>




</body>
</html>
