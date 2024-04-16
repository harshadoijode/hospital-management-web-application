<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>appointment</title>
<style type="text/css">
<!--
.style3 {font-weight: bold}

input[type=submit] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}


.style4 {
	font-size: 18px;
	color: #990000;
}
-->
</style>
<div align="center">
  <%@ include file="patmenu.html"  %>
  <%@ include file="db.jsp"  %>
</head>

<body>
    <p>&nbsp;</p>
    <p><span class="style4"><strong>Appointment Form</strong>
    </div>
    </span></p>
    <p>

<form id="form1" name="form1" method="post" action="">
  <table bgcolor="#CCCCCC" width="317" height="272" border="0" align="center">
    <tr>
      <td><div align="right"><span class="style3">Name:</span></div></td>
      <td><div align="left"><span class="style3">
        <input type="text" name="s1" required/>
      </span></div></td>
    </tr>
	<tr>
      <td><div align="right"><span class="style3">Phone no</span></div></td>
      <td><div align="left"><span class="style3">
        <input type="text" name="s2" required/>
      </span></div></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style3">email</span></div></td>
      <td><div align="left"><span class="style3">
        <input type="text" name="s3" required/>
      </span></div></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style3">address
        </div>      </td>
      <td>
        
        <div align="left">
          <input type="email" name="s4" required/>
        </div></td>
    </tr>
    <tr>
      <td><p align="right" class="style3">date</p></td>
      <td>        
        <div align="left">
          <input type="date" name="s5"required />      
        </div></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><div align="right"></div></td>
      <td>
        <div align="left">
          <input type="submit" name="Submit" value="Submit" />
          <input type="reset" name="Submit2" value="Reset" />
        </div></td>
    </tr>
  </table>
</form>


<% 
if(request.getParameter("Submit")!=null){
try{
int x=stmt.executeUpdate("insert into appointment(name,phoneno,email,address,date)  value('"+request.getParameter("s1")+"','"+request.getParameter("s2")+"','"+request.getParameter("s3")+"','"+request.getParameter("s4")+"','"+request.getParameter("s5")+"')");
if(x!=0){
out.print("Appointment fixed successfully");
}
}catch(Exception e){
out.print("already registered "+e);
}
}


%>
</body>
</html>
