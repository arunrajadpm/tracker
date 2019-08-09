
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Login - Tracker</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png"
	href="<c:url value="/assets/images/icon/favicon.ico"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/css/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/css/themify-icons.css"/>">
<link rel="stylesheet" href="<c:url value="/assets/css/metisMenu.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/css/owl.carousel.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/css/slicknav.min.css"/>">
<!-- amchart css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- others css -->
<link rel="stylesheet"
	href="<c:url value="/assets/css/typography.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/css/default-css.css"/>">
<link rel="stylesheet" href="<c:url value="/assets/css/styles.css"/>">
<link rel="stylesheet"
	href="<c:url value="/assets/css/responsive.css"/>">
<!-- modernizr css -->
<script src="<c:url value="/assets/js/vendor/modernizr-2.8.3.min.js"/>"></script>
</head>

<body>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/tracker" user="root" password="" />

<sql:query dataSource="${db}" var="rs">  
SELECT role from roles;  
</sql:query>  

	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- preloader area start -->
	<div id="preloader">
		<div class="loader"></div>
	</div>
	<!-- preloader area end -->
	    <!-- login area start -->
    <div class="login-area">
        <div  class="container">
            <div  class="login-box ptb--100">
                <form action="login" method="post">
                    <div class="login-form-head">
                        <h3 style="color: white;">Tracker</h3>
                        <h5 style="color: white;">Sign In</h5>
                        
                    </div>
                    <div style="background-color: #e4e1e1;" class="login-form-body">
                    
                     <select style="padding-bottom: 3px" class="form-control" name="role">
						<c:forEach var="ul" items="${rs.rows}">
						<option value=" ${ul.role}" ><c:out value=" ${ul.role}" /></option>
						</c:forEach>
						</select> 
						<br>
                        <input type="text" class="form-control" placeholder="User ID"
						autofocus name="username" autocomplete="off"> 
                       <br>
                        <input type="password" class="form-control" placeholder="Password"
						name="password" autocomplete="off"> 
                       <br>
                        <div class="submit-btn-area">
                            <button id="form_submit" type="submit">Submit <i class="ti-arrow-right"></i></button>
                        </div>
                      
                    </div>
                </form>
            </div>
        </div>
    </div>

	<!-- jquery latest version -->
	<script src="<c:url value="/assets/js/vendor/jquery-2.2.4.min.js"/>"></script>
	<!-- bootstrap 4 js -->
	<script src="<c:url value="/assets/js/popper.min.js"/>"></script>
	<script src="<c:url value="/assets/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/metisMenu.min.js"/>"></script>
	<script src="<c:url value="/assets/js/jquery.slimscroll.min.js"/>"></script>
	<script src="<c:url value="/assets/js/jquery.slicknav.min.js"/>"></script>

	<!-- others plugins -->
	<script src="<c:url value="/assets/js/plugins.js"/>"></script>
	<script src="<c:url value="/assets/js/scripts.js"/>"></script>
</body>

</html>