<%-- 
    Document   : JSPExample1
    Created on : 31-Mar-2021, 22:07:07
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script> 
            function validateMethod(){
              var sid=document.getElementById("Id").value;
              var name=document.getElementById("fname").value;
              var mob=document.getElementById("contactNo").value;
              var pwd=document.getElementById("password").value;
              if(sid.length==0){
                  alert("Enter staff id...");
                  return false;
              }
              
            }
            </script>
        <style>
            *{
                margin: 0px;
            }
            header{
                background-color: #0860a8;
                height:  50px;
                color: white;
                text-align: center; 
                padding: 50px;
            }
            .nav-bar{
                overflow: hidden;
                background-color:  #333;
                font-size: 20px;
            }
            .nav-bar a.right{
                display: block;
                float: right;
                padding: 15px 20px;
                color: white;
                text-decoration: none;
            }
            .nav-bar a:hover{
                background-color: white;
                color: black;
            }
            section{
                background-color: whitesmoke;
                height:  700px;
            }
            .registration {
               margin-top: 6px;
                padding: 20px;
                font-size: 20px;
                text-align: center;
                height: 500px;
            }
            footer{
                padding: 20px;
                background-color: #0860a8;
                height:  50px;
                color: white;
            }
            
            
        </style>
    </head>
    <body>
        <header>
            <h1>Website</h1>
            
        </header>
        
        <div class="nav-bar">
           
             <a href="Contact.jsp" class="right">Contact</a>
            <a href="About.jsp" class="right">About</a>
            <a href="LoginJSP.jsp" class="right">Login</a>
            <a href="Index.jsp" class="right">Home</a>
            
            
        </div>
        
        <section>
            <div class="registration" >
                <form action="RegisServlet" method="post">
                    <label for="id" >Staff Id</label><br>
                    <input type="text" id="Id" placeholder="Enter ID" style="height:30px;width:200px" required="" /><br><br>
                    <label for="name" >Full Name</label><br>
                    <input type="text" id="fname" placeholder="Enter full name" style="height:30px;width:200px" required=""/><br><br>
                    <label for="mobile" >Contact Number</label><br>
                    <input type="text" id="contactNo" placeholder="Enter contact number" style="height:30px;width:200px" required=""/><br><br>
                    <label for="password" >Password</label><br>
                    <input type="password" id="password" placeholder="Enter Password" style="height:30px;width:200px" required=""/><br><br>
                    <input type="submit" id="signupbtn" value="SIGN UP" onclick="return validateMethod()" style="height:30px;width:100px"/><br><br>
                     <a href="Page4.jsp">Login</a>
            </form>
                  <%
               
            if(request.getParameter("q")!=null)
            {
                out.print(request.getParameter("q"));
            }
               
            %>
            </div>
        </section>
        
        <footer>
             
             <h5>&copy;Designed by Yogita</h5>
        </footer>
        
    </body>
</html>
