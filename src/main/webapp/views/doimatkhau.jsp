<%@ page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asm_java4_ps16509</title>
    
    <link rel="stylesheet" href="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/docs-app/css/dist/mdb5/standard/compiled.min.css">

 	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/templatemo-style.css">
    <style>
	    form{
			padding-top: 100px;
		}
        .signup {
            width: 50%;
            margin: 0 auto;
            padding: 10px 20px;
            border: 2px solid #747171;
        }
        
        .signup input[type=text],
        .signup input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }
        
        .signup input[type=text]:focus,
        .signup input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }
        
        .signup button {
            background-color: #04AA6D;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }
        
        .signup button:hover {
            opacity: 1;
        }
        /* Extra styles for the cancel button */
        
        .signup .cancelbtn {
            padding: 14px 20px;
            background-color: #f44336;
        }
        /* Float cancel and signup buttons and add an equal width */
        
        .signup .cancelbtn,
        .signup .signupbtn {
            float: left;
            width: 50%;
        }
        /* Add padding to container elements */
        
        .signup .container {
            padding: 16px;
        }
        /* Clear floats */
        
        .signup .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }
        /* Change styles for cancel button and signup button on extra small screens */
        
        @media screen and (max-width: 300px) {
            .cancelbtn,
            .signupbtn {
                width: 100%;
            }
        }
    </style>
</head>

<body>
	<c:choose>
		<c:when test="${empty sessionScope.user}">
			<jsp:include page="header_user.jsp"/>
		</c:when>
		<c:otherwise>
			<jsp:include page="header_admin.jsp"/>
		</c:otherwise>
	</c:choose>
    <!-- End Header -->
    <form action="/Assignment_Java4/Assignment/doimatkhau" method = "post">
    <div class="signup">
        <div class="container_header">
            <h1>Change Password</h1>

            <label for="email"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="username" value="${user.id }" disabled>

            <label ><b>Current Password</b></label>
            <input type="password" placeholder="Repeat Current Password" name="password" required>

            <label ><b>New Password</b></label>
            <input type="password" placeholder="Repeat New Password" name="new-pass" required>

            <label ><b>Confirm New Password</b></label>
            <input type="password" placeholder="Repeat Confirm New Password" name="confirm-pass" required>

            <div class="clearfix">
                <button type="button" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">Change</button>
            </div>
        </div>
    </div>
    </form>
    <!-- End body -->
    <jsp:include page="footer.jsp"/>
    <!-- End Footer -->
    <script type="text/javascript">
		if('${message}'!=''){
			alert('${message}');
		}
	</script>
</body>
</body>

</html>