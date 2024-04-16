<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}

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


body {
	background-color: #FF6600;
	background-image: url(images/texture2.png);
	font-size: 24px;
}
.style3 {font-weight: bold}
.style8 {color: #99FFFF;font-size:24px;font-weight: bold; }
.style9 {color: #99FFFF; font-weight: bold; }
.style11 {
	font-size: 24px;
	color: #FFFF00;
	font-weight: bold;
	background-color: #990033;
}

-->
</style>
</head>

<body>
<div align="center">
  <%@ include file="index.html"  %>
  <%@ include file="db.jsp"  %>
  <br />
  <span class="style11">New Doctors Registration Form</span></div>
<form id="form1" name="form1" method="post" action="">
  <table bgcolor="#311432" width="430" height="272" border="0" align="center">
    <tr>
      <td width="206"><div align="right"><span class="style9">Name : </span></div></td>
      <td width="214"><div align="left"><span class="style3">
        <input type="text" name="s1" required />
      </span></div></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style9">phone : </span></div></td>
	  <td><div align="left"><span class="style3">
        <input type="text" name="s2" required/>
      </span></div></td>
    </tr>
    <tr>
      <td><div align="right" class="style8"><strong><span class="style3">email :</span></strong> </div>      </td>
      <td>
        
        <div align="left">
          <input type="Email" name="s3" required/>
        </div></td>
    </tr>
    <tr>
    <tr>
      <td><div align="right" class="style8"><strong><span class="style3">Specialized in :</span></strong> </div>      </td>
      <td>
        
        <div align="left">
          <input type="text" name="s4" required/>
        </div></td>
    </tr>
    <tr>

      <td><p align="right" class="style9">password :</p></td>
      <td>        
        <div align="left">
          <input type="text" name="s5"" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" title="Please include at least 1 uppercase character, 1 lowercase character, and 1 number." required />      
        </div></td>
    </tr>
    <tr>
      <td><div align="right"></div></td>
      <td>
        <div align="left">
          <input type="submit" name="Submit" value="Submit" />
          <input name="Submit2" type="reset" class="style3" value="Reset" />
        </div></td>
    </tr>
  </table>
</form>


<% 
if(request.getParameter("Submit")!=null){
try{
int x=stmt.executeUpdate("insert into doctor  value('"+request.getParameter("s1")+"','"+request.getParameter("s2")+"','"+request.getParameter("s3")+"','"+request.getParameter("s4")+"','"+request.getParameter("s5")+"')");
if(x!=0){
out.print("doctor Registered successfully");
}
}catch(Exception e){
out.print("already registered "+e);
}
}


%>
</body>

</html>
