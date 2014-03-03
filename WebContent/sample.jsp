<%@ page import="java.io.*,java.util.*,java.sql.*"%>
 
<html>
<head>
<title>SELECT Operation</title>
</head>
<body>
<%

try {
            String connectionURL = "jdbc:mysql://localhost/userdb";
            Connection connection = null; 
            ResultSet rst=null;
            Statement stmt=null;
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection(connectionURL, "root", "");
            if(!connection.isClosed())
                 //out.println("Successfully connected to " + "MySQL server using TCP/IP...");
            
            stmt=connection.createStatement();
            rst=stmt.executeQuery("select *from user");
            while(rst.next()){%>
            	<p><%=rst.getString(4)%></p>
            <%}
            connection.close();
        }catch(Exception ex){
            out.println("Unable to connect to database"+ex);
        }   
%>
 
</body>
</html>