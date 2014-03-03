<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%
String error=request.getParameter("error");
if(error==null || error=="null"){
 error="";
}
%>
<html>
<head>
<title>User Login JSP</title>
<script>
    function trim(s) 
    {
        return s.replace( /^s*/, "" ).replace( /s*$/, "" );
    }

    function validate()
    {
        if(trim(document.frmLogin.sUserName.value)=="")
        {
          alert("Login empty");
          document.frmLogin.sUserName.focus();
          return false;
        }
        else if(trim(document.frmLogin.sPwd.value)=="")
        {
          alert("password empty");
          document.frmLogin.sPwd.focus();
          return false;
        }
    }
</script>
</head>

<body>
<!-- <jsp:include page="p_menu.jsp"/>--> 
<div><%=error%></div>

<form name="frmLogin" onSubmit="return validate();" action="doLogin.jsp" method="post">
  <p>&nbsp;</p>
  <table width="269" border="0" align="center">
    <tr>
      <td width="90">User Name</td>
      <td width="190" align="right"><input type="text" name="id_d_name" id="txt_user_name" /></td>
    </tr>
    <tr>
      <td>Password</td>
      <td align="right"><input type="password" name="txt_d_name" id="txt_password" /></td>
    </tr>
    <tr>
      <td align="right" colspan="2">
<div style="width:140px;">
<div style="float: left; width: 69px">

<input type="submit" name="sSubmit" id="b_submit" value="Submit" /></form>
</div>
<div style="float: right; width: 70px"> 
      <form name="frmLogin2"  action="register.jsp"><input type="submit" name="b_submit2" id="b_register" value="Register" /></form>
</div>
</div>
      </td>
    </tr>
  </table>
</body>
</html>