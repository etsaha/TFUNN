<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<!-- <jsp:include page="p_menu.jsp"/>--> 
<form name="frmRegister" onSubmit="return validate();" action="doStaffRegister.jsp" method="post">
  
  <table width="400" border="0" align="center">
  <tr>
      <td>User Type</td>
      <td align="left"><select name="txt_type" id="txt_type">
      	<option value="Doctor">Doctor</option>
        <option value="Nurse">Nurse</option>
        </select>
        </td>
     </tr>
    <tr>
      <td width="150">User Name</td>
      <td width="250" align="left"><input type="text" name="txt_user_name" id="txt_user_name" /></td>
    </tr>
    <tr>
      <td align="left">Address</td>
      <td align="left"><input type="text" name="txt_address" id="txt_address" /></td>
    </tr>
    <tr>
      <td align="left">Email</td>
      <td align="left"><input type="text" name="txt_email" id="txt_email" /></td>
    </tr>
    <tr>
      <td>Birthday</td>
      <td align="left"><select name="day" id="day">
      <option>- Day -</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
      </select>
        <label for="id_month2"></label>
        <select name="month" id="month">
	        <option>- Month -</option>
	        <option value="1">January</option>
	        <option value="2">February</option>
	        <option value="3">March</option>
	        <option value="4">April</option>
	        <option value="5">May</option>
	        <option value="6">June</option>
	        <option value="7">July</option>
	        <option value="8">August</option>
	        <option value="9">September</option>
	        <option value="10">October</option>
	        <option value="11">November</option>
	        <option value="12">December</option>
        </select>
        <label for="id_year"></label>
        <select name="year" id="year">
	        <option>- Year -</option>
	    <option value="2011">2011</option>
	    <option value="2010">2010</option>
	    <option value="2009">2009</option>
	    <option value="2008">2008</option>
	    <option value="2007">2007</option>
	    <option value="2006">2006</option>
	    <option value="2005">2005</option>
	    <option value="2004">2004</option>
	    <option value="2003">2003</option>
	    <option value="2002">2002</option>
	    <option value="2001">2001</option>
	    <option value="2000">2000</option>
	    <option value="1999">1999</option>
	    <option value="1998">1998</option>
	    <option value="1997">1997</option>
	    <option value="1996">1996</option>
	    <option value="1995">1995</option>
	    <option value="1994">1994</option>
	    <option value="1993">1993</option>
	    <option value="1992">1992</option>
	    <option value="1991">1991</option>
	    <option value="1990">1990</option>
	    <option value="1989">1989</option>
	    <option value="1988">1988</option>
	    <option value="1987">1987</option>
	    <option value="1986">1986</option>
	    <option value="1985">1985</option>
	    <option value="1984">1984</option>
	    <option value="1983">1983</option>
	    <option value="1982">1982</option>
	    <option value="1981">1981</option>
	    <option value="1980">1980</option>
        </select></td>
    </tr>
    <tr>
      <td align="left">Gender</td>
      <td align="left"><select name="gender" id="gender">
       <option value="M">Male</option>
        <option value="F">Female</option>
      </select>
      </td>
    </tr>
    <tr>
      <td align="left">Registration Number</td>
      <td align="left"><input type="text" name="txt_registration_number" id="txt_registration_number" /></td>
    </tr>
    <tr>
      <td align="left">Phone Number</td>
      <td align="left"><input type="text" name="txt_phone_number" id="txt_phone_number" />
      <input type="hidden" name="txt_type" id="id_type" value="patient" />
      </td>
    </tr>
    <tr>
      <td align="center" colspan="2">
<div style="width:140px;">
<div style="float: left; width: 69px">

<input type="submit" name="sSubmit" id="b_submit" value="Register" /></form>
</div>
<div style="float: right; width: 70px"> 
      <form name="frmLogin2"  action="index.jsp"><input type="submit" name="b_submit2" id="b_register" value="Back" /></form>
</div>
</div>
      </td>
    </tr>
  </table>
  <% if(request.getParameter("usr")!=null && request.getParameter("pass")!=null) 
  {
	  %>
	  
	  <table width="400" border="0" align="center">
	    <tr>
	      <td width="150">User ID</td>
	      <td width="250" align="center"><% out.print(request.getParameter("usr")); %></td>
	    </tr>
	    <tr>
	      <td width="150">Password</td>
	      <td width="250" align="center"><% out.print(request.getParameter("pass")); %></td>
	    </tr>
	    </table>
 <% }
  %>
</body>
</html>