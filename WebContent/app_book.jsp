<%@ page language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="p_menu.jsp"/>
<form id="form1" name="form1" method="post" action="">
  <table width="483" border="0" align="center">
    <tr>
      <td width="173">Doctor Name</td>
      <td width="300" align="center"><label for="id_d_name"></label>
<%
 Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root", "");
    
    ResultSet rsdoLogin = null;
    PreparedStatement psdoLogin=null;
    
    String sUserID=request.getParameter("id_d_name");
    String sPassword=request.getParameter("txt_d_name");
    String message="User login successfully ";
    
    try{
    String sqlOption="SELECT id,name FROM users where types='Doctor'";
    
    psdoLogin=conn.prepareStatement(sqlOption);
    rsdoLogin=psdoLogin.executeQuery();   
    
    	%>
    	 <select name="txt_doc_name" style="width:250px;">
         <%  if(rsdoLogin.next()){ %>
             <option value="<%= rsdoLogin.getString(1)%>"><%= rsdoLogin.getString(2)%></option>
         <% } %>
         </select>
    <%
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    /// close object and connection
    try{
         if(psdoLogin!=null){
             psdoLogin.close();
         }
         if(rsdoLogin!=null){
             rsdoLogin.close();
         }
         
         if(conn!=null){
          conn.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>

      </td>
    </tr>
    <tr>
      <td>Appointment Type</td>
      <td align="center"><select name="lst_appointment_type" id="lst_appointment_type">
        <option value="drop_in_visit">Drop-in-visit</option>
        <option value="annual_checkup">Annual Checkup</option>
      </select></td>
    </tr>
    <tr>
      <td>Date</td>
      <td align="center"><label for="id_date"></label>
        <label for="id_day"></label>
        <select name="lst_day" id="lst_day">
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
        <select name="lst_month" id="lst_month">
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
        <select name="lst_year" id="lst_year">
          <option>- Year -</option>
          <option value="2010">2014</option>
          <option value="2009">2013</option>
          <option value="2008">2012</option>
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
          <option value="1979">1979</option>
          <option value="1978">1978</option>
          <option value="1977">1977</option>
          <option value="1976">1976</option>
          <option value="1975">1975</option>
          <option value="1974">1974</option>
          <option value="1973">1973</option>
          <option value="1972">1972</option>
          <option value="1971">1971</option>
        </select></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center"><input type="submit" name="b_submit" id="b_submit" value="Submit" /></td>
    </tr>
   
  </table>
  <p>&nbsp;</p>
</form>
</body>
</html>