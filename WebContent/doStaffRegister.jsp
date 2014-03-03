<%@ page language="java" import="java.sql.*" import="java.util.Random" import ="java.security.SecureRandom" errorPage="" %>
<%@ page language="java" import="java.util.Random" errorPage="" %>
<%@ page language="java" import ="java.security.SecureRandom" errorPage="" %>
<%

    Connection conn = null;
	int updateQuery = 0;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root", "");
    
    //ResultSet rsdoLogin = null;
    PreparedStatement psdoLogin = null;
    
    String patient_name=request.getParameter("txt_user_name");
    String address=request.getParameter("txt_address");
    String email=request.getParameter("txt_email");
    String bday=request.getParameter("year")+"/"+request.getParameter("month")+"/"+request.getParameter("day");
    String gender=request.getParameter("gender");
    String hCard_number=request.getParameter("txt_registration_number");
    String phone_number=request.getParameter("txt_phone_number");
    String user_type=request.getParameter("txt_type");
    String letters = "abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ23456789@";

    String password = "";
    for (int i=0; i<6; i++)
    {
    	password += letters.charAt((int)Math.floor(Math.random() * letters.length()));
    	
        //password += letters.substring(index, index+1);
    }
    //out.print(Math.random()+"</br>"); 
    //out.print(letters.length()); 
    String usr=null;
    String pass=null;
    
    try{
    String sqlOption="insert into users(name,address,email,bday,gender,ref_number,phone_number,types,password) values(?,?,?,?,?,?,?,?,?)";
    
    psdoLogin=conn.prepareStatement(sqlOption);
    psdoLogin.setString(1,patient_name);
    psdoLogin.setString(2,address);
    psdoLogin.setString(3,email);
    psdoLogin.setString(4,bday);
    psdoLogin.setString(5,gender);
    psdoLogin.setString(6,hCard_number);
    psdoLogin.setString(7,phone_number);
    psdoLogin.setString(8,user_type);
    psdoLogin.setString(9,password);
    
    updateQuery=psdoLogin.executeUpdate();
    
	    if (updateQuery != 0) { 
	    	//usr="username:"+password+" & Password:"+password;
	    	response.sendRedirect("admin.jsp?usr="+patient_name+"&pass="+password);
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
                  
         if(conn!=null){
          conn.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }

%>