<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style4 {color: #FFFF00; font-weight: bold; font-size: 18px; }
.style8 {
	font-size: 24px;
	color: #000000;
	font-weight: bold;
}
-->
</style></head>

<body>
<%@ include file="docmenu.html" %>
<p align="center">
    <%@ include file="db.jsp" %>
  
  <% 


try
{


rst=stmt.executeQuery("select tokenno,name,email,phoneno,address,date,tokenno from appointment ");

  
						
  %>
<span class="style8">Today Appointments</span></p>
  <table width="714" border="1" align="center">
  <tr bgcolor="#003300">
    <td width="81" height="30"><div align="center" class="style4">SL No</div></td>
    <td width="83" height="30"><div align="center" class="style4">Name</div></td>
    <td width="82"><div align="center" class="style4">Email</div></td>
    <td width="97"><div align="center" class="style4">Phone No </div></td>
    <td width="121"><div align="center" class="style4">address</div></td>
    <td width="88"><div align="center" class="style4">date</div></td>
    <td width="116"><div align="center" class="style4">token number</div></td>
  </tr>
  <% 
  while(rst.next()){
  
   %>
  <tr bgcolor="#ffffff">
    <td height="29"><div align="center"><%= rst.getString(1) %></div></td>
    <td><div align="center"><%= rst.getString(2) %></div></td>
    <td><div align="center"><%= rst.getString(3) %></div></td>
	<td><div align="center"><%= rst.getString(4) %></div></td>
	<td><div align="center"><%= rst.getString(5) %></div></td>
	<td><div align="center"><%= rst.getString(6) %></div></td>
	<td><div align="center"><%= rst.getString(7) %></div></td>

  </tr>
  <% } %>
</table>

  
  <%  						
}catch(Exception e){
out.println(e);
}

 %>
</body>
</html>

