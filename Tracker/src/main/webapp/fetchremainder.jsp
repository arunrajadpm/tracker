<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "tracker";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;


try{

connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT COUNT(task) AS remainder FROM task WHERE userid= 1 AND status=0";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
String remainderCount =resultSet.getString("remainder");
i++;
out.println(remainderCount);
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
</body>


</html>

