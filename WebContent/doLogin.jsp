<%@ page language="java" import="java.sql.*" errorPage="" %>
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
    String sqlOption="SELECT * FROM users where"
                    +" name=? and password=?";
    
    psdoLogin=conn.prepareStatement(sqlOption);
    psdoLogin.setString(1,sUserID);
    psdoLogin.setString(2,sPassword);
    
    rsdoLogin=psdoLogin.executeQuery();
    
    if(rsdoLogin.next())
    {
      //String sUserName=rsdoLogin.getString("sFirstName")+" "+rsdoLogin.getString("sLastName");
     
      session.setAttribute("user_name",rsdoLogin.getString("name"));
      session.setAttribute("User_type",rsdoLogin.getString("types"));
      //session.setAttribute("iUserLevel",rsdoLogin.getString("iUserLevel"));
      //session.setAttribute("sUserName",sUserName);
      
      if(rsdoLogin.getString("types").equals("Patient")){
    	  
    	  response.sendRedirect("app_book.jsp?error="+message);
      }
     
      else if(rsdoLogin.getString("types").equals("Doctor")){
	    	  
	    	  response.sendRedirect("doc_add_schedule.jsp?error="+message);
	      }
      else if(rsdoLogin.getString("types").equals("Nurse")){    	  
    	  response.sendRedirect("nur_home.jsp?error="+message);
      }
      
      else{	    	  
	    	  response.sendRedirect("admin.jsp?error="+message);
	    	  //out.print(rsdoLogin.getString("types"));
	      }
    }
    else
    {
      message="No user or password matched" ;
      response.sendRedirect("doLogin.jsp?error="+message);
    }
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